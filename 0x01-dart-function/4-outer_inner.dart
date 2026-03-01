void outer(String name, String id) {
  String inner() {
    List<String> splitName = name.split(' ');
    return "Hello Agent " + splitName[1].substring(0, 1) + "." + splitName[0] + " your id is " + id;
  }
  print(inner());
}
