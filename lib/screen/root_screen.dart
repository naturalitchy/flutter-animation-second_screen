import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  @override
  State<RootScreen> createState() => _RootScreenState();
}

// TabController를 초기화하려면 vsync기능이필요한데 이는 State위젯에 TickerProviderMixin을 mixin으로
// 제공해줘야 사용할 수 있습니다.
class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
// class _RootScreenState extends State<RootScreen> {
  TabController? controller;          // define TabController

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 굳이 위에서 선언과 동시에 초기화 하지 않는 이유는 TabController는 단 한번만 실행되야 한다.
    // 이유는, Tab은 처음 띄우자 마자 한번만 나오면 되지 않느냐. 따라서 추후 또 생성할 필요가 없다.
    controller = TabController(length: 2, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Setting the Tab bar.
      body: TabBarView(
        controller: controller,
        // children: [
        //   renderChildren(),
        // ],
        children: renderChildren(),
      ),

      // argument in scaffold. Setting the bottom navigation bar.
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [];
  }

  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(items: []);
  }
}