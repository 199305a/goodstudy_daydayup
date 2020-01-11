import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("page2--initState--");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("page2--------didChangeDependencies");
  }

  @override
  void didUpdateWidget(NewPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("page2--------didUpdateWidget");
  }



  @override
  Widget build(BuildContext context) {
    print("page2-----------build");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("测试"),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("page2------deactivate----");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    print("page2----dispose-");
  }
}
