import 'package:chat_test/components/categoryselector_widget.dart';
import 'package:chat_test/components/categoryview_widget.dart';
import 'package:chat_test/components/homescreenappbar_widget.dart';
import 'package:chat_test/components/navigatorui_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  ScrollController _scrollController;
  bool _isOnTop = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _scrollToTop() {
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    // setState(() => _isOnTop = true);
  }

  _notOnTop() {
    setState(() => _isOnTop = false);

    return FloatingActionButton(
      onPressed: _scrollToTop,
      child: Icon(Icons.keyboard_arrow_up),
      mini: true,
    );
  }

  _onTop() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      extendBody: true,
      primary: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: HomeScreenAppBar(),
      ),
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          CategorySelector(),
          CategoryView(),
          SizedBox(
            height: 40,
          )
        ],
      ),
      bottomNavigationBar: NavigatorUI(),
      floatingActionButton: _isOnTop ? _onTop() : _notOnTop(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
