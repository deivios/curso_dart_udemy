import 'dart:io';

import 'package:curso_dart_udemy/programacao_assincrona/services/directory_service.dart';
import 'package:curso_dart_udemy/programacao_assincrona/services/files_service.dart';

void main() async {
  final filesService = FilesService();

  final directoryService = DirectoryService();
  final directory = "aula_arquivos";
  await directoryService.createDirectory(directory);
  final fileName = "arquivo_aula_servicos.txt";
  final file = await filesService.createFile("$directory/$fileName");
  await file.writeAsString("Conteúdo do arquivo.", mode: FileMode.append);
}
