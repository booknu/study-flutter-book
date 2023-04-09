import 'package:dio/dio.dart';

main() async {
  /// 업로드 대상 로컬 파일, 업로드 이름
  var file = MultipartFile.fromFile('./assets/images/1.png', filename: 'upload.png');

  /// 서버에 전송할 데이터
  var formData = FormData.fromMap({
    'name': 'test',
    'file': await file
  });

  await Dio().post('/info', data: formData);
}