import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class PlayerController extends SuperController {
  AudioPlayer advancedPlayer = AudioPlayer();
  Map<String, File> loadedFiles = {};

  final isPlaying = false.obs;

  setPause() {
    isPlaying.value = false;
  }

  setPlaying() {
    isPlaying.value = true;
  }

  togglePausePlaying() {
    isPlaying.value = !isPlaying.value;
    if (isPlaying.value) {
      advancedPlayer.resume();
    } else {
      advancedPlayer.pause();
    }
  }

  Future<ByteData> _fetchAsset(String fileName) async {
    return await rootBundle.load('assets/music/${fileName}');
  }

  // 读取到内存
  Future<File> _fetchToMemory(String fileName) async {
    String path = '${(await getTemporaryDirectory()).path}/${fileName}';
    final file = File(path);
    await file.create(recursive: true);
    return await file
        .writeAsBytes((await _fetchAsset(fileName)).buffer.asUint8List());
  }

  Future<File?> _loadFile(String fileName) async {
    if (!loadedFiles.containsKey(fileName)) {
      loadedFiles[fileName] = await _fetchToMemory(fileName);
    }
    return loadedFiles[fileName];
  }

  @override
  void onClose() {
    super.onClose();
    print('close');
    advancedPlayer.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    print('init');
    // _loadFile('戴羽彤 - 那个女孩.mp3').then((value) {
    //   advancedPlayer.play(value!.path, isLocal: true);
    //   advancedPlayer.getDuration().then((value) {
    //     print('duration: $value');
    //   });
    // });
  }

  @override
  void onDetached() {
    print('1');
  }

  @override
  void onInactive() {
    print('2');
  }

  @override
  void onPaused() {
    print('3');
  }

  @override
  void onResumed() {
    print('4');
  }
}
