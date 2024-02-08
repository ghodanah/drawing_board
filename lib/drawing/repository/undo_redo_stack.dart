
import 'package:flutter/material.dart';

import '../model/sketch.dart';

class UndoRedoStack {
  UndoRedoStack({
    required this.sketchesNotifier,
    required this.currentSketchNotifier,
  }) {
    sketchCount = sketchesNotifier.value.length;
    sketchesNotifier.addListener(sketchesCountListener);
  }

  final ValueNotifier<List<Sketch>> sketchesNotifier;
  final ValueNotifier<Sketch?> currentSketchNotifier;

  ///Collection of sketches that can be redone.
  late final List<Sketch> redoStack = [];

  ///Whether redo operation is possible.
  late final ValueNotifier<bool> canRedo = ValueNotifier(false);

  late int sketchCount;

  void sketchesCountListener() {
    if (sketchesNotifier.value.length > sketchCount) {
      //if a new sketch is drawn,
      //history is invalidated so clear redo stack
      redoStack.clear();
      canRedo.value = false;
      sketchCount = sketchesNotifier.value.length;
    }
  }

  void clear() {
    sketchCount = 0;
    sketchesNotifier.value = [];
    canRedo.value = false;
    currentSketchNotifier.value = null;
  }

  void undo() {
    final sketches = List<Sketch>.from(sketchesNotifier.value);
    if (sketches.isNotEmpty) {
      sketchCount--;
      redoStack.add(sketches.removeLast());
      sketchesNotifier.value = sketches;
      canRedo.value = true;
      currentSketchNotifier.value = null;
    }
  }

  void redo() {
    if (redoStack.isEmpty) return;
    final sketch = redoStack.removeLast();
    canRedo.value = redoStack.isNotEmpty;
    sketchCount++;
    sketchesNotifier.value = [...sketchesNotifier.value, sketch];
  }

  void dispose() {
    sketchesNotifier.removeListener(sketchesCountListener);
  }
}