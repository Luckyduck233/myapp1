import 'package:flutter/material.dart';
import 'package:myapp_demo2/components/app_bar.dart';
import 'package:myapp_demo2/screens/home/home_page.dart';
import 'package:myapp_demo2/screens/search/friedchicken_page.dart';
import 'package:myapp_demo2/screens/shopping_car/shopping_car_page.dart';

/// 底部导航栏
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
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
  List pages = [
    HomePage(),
    ShoppingCarPage(),
  ];

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
      appBar: appBar(context,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu))),
      // body: FriedChickenPage(),
      body: pages[currentIndex],
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
