int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

String showFunc(int a, int b) {
    String sum = "$a + $b = ${add(a, b)}";
    String diff = "$a - $b = ${sub(a, b)}";

    return "$sum\n$diff";
}
