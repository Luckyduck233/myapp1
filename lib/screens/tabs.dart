import 'package:flutter/material.dart';
import 'package:myapp_demo2/screens/components/app_bar.dart';
import 'package:myapp_demo2/screens/components/body.dart';
import 'package:myapp_demo2/screens/components/friedchicken_page.dart';
import 'package:myapp_demo2/screens/components/index_page.dart';
import 'package:myapp_demo2/screens/components/shopping_car.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  ///初始化状态
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ///默认页面索引为数组第0个（首页）
  int currentIndex = 0;

  ///默认一级界面
  int pagelevel = 1;

  ///页面列表
  List pages = [Body(), ShoppingCar(), FriedChickenPage()];

  ///页面控制器
  var _controller = PageController(
    initialPage: 0,
  );

  // final bottomNavigationBar = BottomNavigationBar(
  //   items: [
  //     BottomNavigationBarItem(
  //         title: new Text("Home"), icon: new Icon(Icons.home)),
  //     BottomNavigationBarItem(
  //         title: new Text("Lis"), icon: new Icon(Icons.local_grocery_store_outlined)),
  //
  //   ],
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: FriedChickenPage(),
      // body:pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("购物车"),
              icon: Icon(Icons.local_grocery_store_outlined)),
        ],
        iconSize: 24,
        type: BottomNavigationBarType.fixed,

        ///当前页面索引
        currentIndex: currentIndex,

        ///点击切换图标状态
        onTap: (int index) {
          // _controller.jumpToPage(index);
          setState(() {
            this.currentIndex = index;
          });
        },
      ),
    );
  }
}
