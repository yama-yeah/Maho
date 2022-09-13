import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

ImageProvider readImage(String path) {
  File file = File(path);
  Uint8List fileBytes = file.readAsBytesSync();
  return MemoryImage(fileBytes);
}
