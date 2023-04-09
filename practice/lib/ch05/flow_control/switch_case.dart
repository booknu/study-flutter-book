main() {
  switch (10) {
    case 1:
      print(1);
      break; // break, continue, return ,throw 등으로 흐름을 제어하지 않으면 컴파일 오류
    case 2:
      print(2);
  }

  for (int x in [1, 2, 3, 4, 5]) {
    switch(x) {
      case 1:
        continue;
      case 2:
        print('!!');
        continue;
      default:
        print('def');
    }
  }
}