import 'package:flutter/material.dart';

class HomeContentPage extends StatefulWidget {
  final String title;
  const HomeContentPage({Key key, this.title = "HomeContent"}) : super(key: key);

  @override
  _HomeContentPageState createState() => _HomeContentPageState();
}

class _HomeContentPageState extends State<HomeContentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.card_giftcard),
                ),
                Tab(
                  icon: Icon(Icons.accessibility),
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('Gift Card'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Accessibility'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Account'),
                ),
              ),
            ],
          )),
    );
  }
}
