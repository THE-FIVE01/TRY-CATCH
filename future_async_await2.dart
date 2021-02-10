// Toutes les fonctions déclarées ci-dessous s'exécutent sur le fil de l'interface utilisateur principale.
import 'dart:async';

main() {}

printFileContent() {}

// Pour télécharger un fichier [opération de longue durée factice]
downLoadAFile() {
  Future<String> result = Future.delayed(Duration(seconds: 6), () {
    // 1sec, 2sec,.... 6sec
    return "My secret file content";
  });
}
