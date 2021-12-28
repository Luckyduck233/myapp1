import 'package:dio/dio.dart';


/// 封装 Dio网络请求  工具类
class DioUtils {

  /// 封装 get 请求方法
  Future get(String url)  async {
    try {
      Response response = await Dio().get(url);
      return response.data;
    } catch(e) {
      print(e);
    }
  }
}