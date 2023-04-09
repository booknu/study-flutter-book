class Logger {
  final String _name;
  bool _mute = false;

  // library-private
  static final Map<String, Logger> _cache = <String, Logger>{};

  /// unnamed constructor
  ///
  /// 여러개의 unnamed constructor 을 동시에 사용할 수 없기 때문에
  /// 일반 unnamed constructor 도 더 이상 만들 수 없음
  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this._name);

  void log(String msg) {
    if (!_mute) print('[logger=$_name] $msg');
  }
}

main() {
  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'System'};
  var loggerJson = Logger.fromJson(logMap);
  loggerJson.log('test');
}