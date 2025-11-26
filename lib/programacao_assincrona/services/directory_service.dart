import 'dart:io';

class DirectoryService {
  Future<void> createDirectory(String path) async {
    final directory = Directory(path);
    if (!await directory.exists()) {
      await directory.create();
    }
  }
}

