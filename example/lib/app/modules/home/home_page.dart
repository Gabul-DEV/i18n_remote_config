import 'package:flutter/material.dart';
import 'package:i18n_remote_config/i18n_remote_config.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title".i18n(["BH", "SP"])),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
