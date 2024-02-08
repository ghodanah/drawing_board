// ignore_for_file: unused_element

import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:file_picker/file_picker.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:planner/drawing/model/drawing_mode.dart';
import 'package:planner/drawing/model/sketch.dart';
import 'package:planner/drawing/widget/color_palette.dart';
import 'package:planner/drawing/widget/icon_box.dart';
import 'package:url_launcher/url_launcher.dart';

import '../repository/save_file.dart';
import '../repository/undo_redo_stack.dart';

class CanvasSideBar extends HookWidget {
  final ValueNotifier<Color> selectedColor;
  final ValueNotifier<double> strokeSize;
  final ValueNotifier<double> eraserSize;
  final ValueNotifier<DrawingMode> drawingMode;
  final ValueNotifier<Sketch?> currentSketch;
  final ValueNotifier<List<Sketch>> allSketches;
  final GlobalKey canvasGlobalKey;
  final ValueNotifier<bool> filled;
  final ValueNotifier<ui.Image?> backgroundImage;

  const CanvasSideBar({
    Key? key,
    required this.selectedColor,
    required this.strokeSize,
    required this.eraserSize,
    required this.drawingMode,
    required this.currentSketch,
    required this.allSketches,
    required this.canvasGlobalKey,
    required this.filled,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final undoRedoStack = useState(
      UndoRedoStack(
        sketchesNotifier: allSketches,
        currentSketchNotifier: currentSketch,
      ),
    );
    final scrollController = useScrollController();
    return Container(
      width: double.maxFinite,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 3,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Scrollbar(
        controller: scrollController,
        thumbVisibility: true,
        trackVisibility: true,
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          controller: scrollController,
          children: [
            const SizedBox(height: 10),
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 5,
              runSpacing: 5,
              children: [
                IconBox(
                  iconData: FontAwesomeIcons.pencil,
                  selected: drawingMode.value == DrawingMode.pencil,
                  onTap: () => drawingMode.value = DrawingMode.pencil,
                  tooltip: 'Pencil',
                ),
                IconBox(
                  iconData: FontAwesomeIcons.eraser,
                  selected: drawingMode.value == DrawingMode.eraser,
                  onTap: () => drawingMode.value = DrawingMode.eraser,
                  tooltip: 'Eraser',
                ),
                ColorPalette(
                  selectedColor: selectedColor,
                ),
                IconButton(
                  onPressed: allSketches.value.isNotEmpty
                      ? () => undoRedoStack.value.undo()
                      : null,
                  icon: const Icon(Icons.arrow_back),
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: undoRedoStack.value.canRedo,
                  builder: (_, canRedo, __) {
                    return IconButton(
                      onPressed:
                          canRedo ? () => undoRedoStack.value.redo() : null,
                      icon: const Icon(Icons.arrow_forward),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () => undoRedoStack.value.clear(),
                ),
                IconButton(
                    onPressed: () async {
                      if (backgroundImage.value != null) {
                        backgroundImage.value = null;
                      } else {
                        backgroundImage.value = await _getImage;
                      }
                    },
                    icon: Icon(Icons.image_outlined)),
              ],
            ),
            const SizedBox(height: 8),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 150),
              child: drawingMode.value == DrawingMode.pencil
                  ? Row(
                      children: [
                        const Text(
                          'Size: ',
                          style: TextStyle(fontSize: 12),
                        ),
                        Slider(
                            value: strokeSize.value,
                            min: 0,
                            max: 50,
                            onChanged: (val) {
                              strokeSize.value = val;
                            }),
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 150),
              child: drawingMode.value == DrawingMode.eraser
                  ? Row(
                      children: [
                        const Text(
                          'Size: ',
                          style: TextStyle(fontSize: 12),
                        ),
                        Slider(
                            value: eraserSize.value,
                            min: 0,
                            max: 80,
                            onChanged: (val) {
                              eraserSize.value = val;
                            }),
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  Future<ui.Image> get _getImage async {
    final completer = Completer<ui.Image>();
    if (!kIsWeb && !Platform.isAndroid && !Platform.isIOS) {
      final file = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
      );
      if (file != null) {
        final filePath = file.files.single.path;
        final bytes = filePath == null
            ? file.files.first.bytes
            : File(filePath).readAsBytesSync();
        if (bytes != null) {
          completer.complete(decodeImageFromList(bytes));
        } else {
          completer.completeError('이미지가 선택되지 않았습니다.');
        }
      }
    } else {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        final bytes = await image.readAsBytes();
        completer.complete(
          decodeImageFromList(bytes),
        );
      } else {
        completer.completeError('이미지가 선택되지 않았습니다.');
      }
    }

    return completer.future;
  }

  Future<Uint8List?> getBytes() async {
    RenderRepaintBoundary boundary = canvasGlobalKey.currentContext
        ?.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List? pngBytes = byteData?.buffer.asUint8List();
    return pngBytes;
  }

  Future<void> _launchUrl(String url) async {
    if (kIsWeb) {
      html.window.open(
        url,
        url,
      );
    } else {
      if (!await launchUrl(Uri.parse(url))) {
        throw 'Could not launch $url';
      }
    }
  }
}
