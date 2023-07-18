void outer(String name, String id) {
    String inner() {
        final splitted = name.split(' ');
        return "Hello Agent ${splitted[1][0]}.${splitted[0]} your id is $id";
    }
    print(inner());
}
