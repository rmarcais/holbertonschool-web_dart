int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

String showFunc(int a, int b) {
    String sum = "Add $a + $b = ${add(a, b)}";
    String diff = "Sub $a - $b = ${sub(a, b)}";

    return "$sum\n$diff";
}
