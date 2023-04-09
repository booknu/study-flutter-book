nullToDefaultValue() {
  String? nullValue;
  String? nonNullValue = "I'm non null!";

  print(nullValue ?? "I'm null...");
  print(nonNullValue ?? "I'm null...");
}

main() {
  nullToDefaultValue();
}