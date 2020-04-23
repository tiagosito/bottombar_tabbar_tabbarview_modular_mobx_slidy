import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  final String title;
  const CoursePage({Key key, this.title = "Course"}) : super(key: key);

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
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
