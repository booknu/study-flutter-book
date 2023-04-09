class NoConstructor {
  int x = 1, y = -1;
}

class HaveConstructor {
  int x, y;
  HaveConstructor(this.x, this.y);
}

class Use with NoConstructor {
  void func() {
    print(x + y);
  }
}

/// 오류
// class Use2 with HaveConstructor { }