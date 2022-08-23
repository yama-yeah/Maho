import 'dart:typed_data';
import 'dart:ui';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

abstract class PicsumInterface {
  Future<Uint8List> getImageBytes(int width, int height);
}

class Picsum implements PicsumInterface {
  final _url = 'https://picsum.photos/';
  @override
  Future<Uint8List> getImageBytes(int width, int height) async {
    print(_url + '${width}/${height}');
    final resp = await http.get(Uri.parse(_url + '${0}/${0}'));
    print('fetched bg');
    return resp.bodyBytes;
  }
}

final picsumProvider = Provider((ref) => Picsum());
