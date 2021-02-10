// Toutes les fonctions déclarées ci-dessous s'exécutent sur le fil de l'interface utilisateur principale.
import 'dart:async';

main() {
  print("Main program: Starts");
  printFileContent();
  print("Main program: Ends");
}

printFileContent() {
  Future<String> fileContent = downLoadAFile();
  print("The content of the file is --> $fileContent");
}

// Pour télécharger un fichier [opération de longue durée factice]
Future<String> downLoadAFile() {
  Future<String> result = Future.delayed(Duration(seconds: 6), () {
    // 1sec, 2sec,.... 6sec
    return "My secret file content";
  });

  return result;
}
