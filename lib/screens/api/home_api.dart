import 'package:dio/dio.dart';
import 'package:myapp_demo2/model/home_model.dart';

import 'DioUtils/dio_ttils.dart';

class HomeApi {
  static Future<HomeModel> getHttp() async {
    var data = await DioUtils().get('http://10.1.53.82:8080/api/getData');  // Response
    return homeModelFromJson(data);
  }
}
