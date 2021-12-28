import 'package:flutter/cupertino.dart';
import 'package:myapp_demo2/model/home_model.dart';
import 'package:myapp_demo2/screens/api/home_api.dart';

class HomeState extends ChangeNotifier {
  List<Food> listFood = [];


  HomeState() {
    getData();
  }

  getData() async {
    await HomeApi.getHttp().then((value)  {
      listFood = value.data[0].food;
    });
    notifyListeners();
  }
}