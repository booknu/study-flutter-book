import 'dart:io';

throwException() {
  throw const FormatException('error!');
}

throwExceptionSimple() {
  throw 'error simple!';
}

void tryOnFinallyTest(Function function) {
  print('---- target: $function}');
  try {
    function();
  } on HttpException catch(ex) {
    print('on HttpException');
    print(ex);
  } on FormatException catch(ex) {
    print('on FormatException');
    print(ex);
  } on Exception catch(ex) {
    print('on Exception');
    print(ex);
  } catch(ex) {
    print('catch ex');
    print(ex);
    print('- runtimeType: ${ex.runtimeType}');
  } finally {
    print('finally\n\n');
  }
}

main() {
  tryOnFinallyTest(throwException);
  tryOnFinallyTest(throwExceptionSimple);
}