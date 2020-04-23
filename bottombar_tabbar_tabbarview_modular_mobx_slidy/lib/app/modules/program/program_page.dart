import 'package:flutter/material.dart';

class ProgramPage extends StatefulWidget {
  final String title;
  const ProgramPage({Key key, this.title = "Program"}) : super(key: key);

  @override
  _ProgramPageState createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text('${widget.title}')),
    );
  }
}
