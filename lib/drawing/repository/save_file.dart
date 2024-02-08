import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;

void saveFile(Uint8List bytes, String extension) async {
  if (kIsWeb) {
    html.AnchorElement()
      ..href = '${Uri.dataFromBytes(bytes, mimeType: 'image/$extension')}'
      ..download =
          'drawing_${DateTime.now().toIso8601String()}.$extension'
      ..style.display = 'none'
      ..click();
  } else {
    await FileSaver.instance.saveFile(
      name: 'drawing_${DateTime.now().toIso8601String()}.$extension',
      bytes: bytes,
      ext: extension,
    );
  }
}