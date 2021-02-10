void main() {
  print("Cas 1");
  // Cas 1: lorsque vous  connaissez l'exception à lever, utilisez la clause ON

  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  }

  print("Cas 2");
  // Cas 2: lorsque vous ne connaissez pas l'exception à lever, utilisez la clause CATCH

  try {
    int result = 12 ~/ 3;
    print("The result is $result");
  } catch (e) {
    print("the exception trown is $e");
  }

  print("Cas 3");
  // Cas 3: Utilisation de Stack Trace pour connaître les événements qui se sont produits
  // avant que l'exception ne soit levée

  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e, s) {
    print("the exception trown is $e");
    print("STACK TRACE \n $s");
  }

  // Cas 4: Qu'il y ait une exception ou non, la clause FINALLY est toujours exécutée

  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("the exception trown is $e");
  } finally {
    print("This is FINALLY Clause and is always executed.");
  }
}
