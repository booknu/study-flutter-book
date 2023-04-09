/// private
String _data = "i'm string data";

/// getter
String get data {
  return _data.toUpperCase();
}

/// setter
set data(String newData) {
  _data = newData;
}

main() {
  // data 를 변수처럼 사용 가능
  print(data);
  data = "i'm new data";
  print(data);
}