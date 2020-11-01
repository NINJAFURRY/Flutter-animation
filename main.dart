import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:explode_view/explode_view.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Anime());

class Anime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HeroAnmie(title: "Hero Animation"),
    );
  }
}

class HeroAnmie extends StatefulWidget {
  HeroAnmie({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HeroAnmieState createState() => _HeroAnmieState();
}

class _HeroAnmieState extends State<HeroAnmie> {
  Widget _blueIconRectangle() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }

  Widget _redIconRectangle() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }

  Widget _greenIconRectangle() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.green,
    );
  }

  Widget _yellowIconRectangle() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.yellow,
    );
  }

  Widget _blackIconRectangle() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.black,
    );
  }

  Widget _blueDetailRectangle() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage('assets/ch.png'))),
    );
  }

  Widget _yellowDetailRectangle() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage("assets/sur.jpg"),
        ),
      ),
    );
  }

  Widget _blackDetailRectangle() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage("assets/ud.jpg"),
        ),
      ),
    );
  }

  Widget _redDetailRectangle() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage("assets/so.jpg"),
        ),
      ),
    );
  }

  Widget _greenDetailRectangle() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage("assets/se.jpg"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildDemoWidget(context),
    );
  }

  Widget buildDemoWidget(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(tag: 'hero-rectangle', child: _blueIconRectangle()),
            ),
            onTap: () => _gotoDetailsPage(context),
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(tag: 'heros-rectangle', child: _redIconRectangle()),
            ),
            onTap: () => _gotoDetailsPagered(context),
          ),
          ListTile(
            leading: GestureDetector(
              child:
                  Hero(tag: 'heroes-rectangle', child: _greenIconRectangle()),
            ),
            onTap: () => _gotoDetailsPagegreen(context),
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(tag: 'her-rectangle', child: _yellowIconRectangle()),
            ),
            onTap: () => _gotoDetailsPageyellow(context),
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(tag: 'here-rectangle', child: _blackIconRectangle()),
            ),
            onTap: () => _gotoDetailsPageblack(context),
          ),
        ],
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(tag: 'hero-rectangle', child: _blueDetailRectangle()),
                Text("mantu")
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _gotoDetailsPagered(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(tag: 'hero-rectangle', child: _redDetailRectangle()),
                Text("sonu")
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _gotoDetailsPagegreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(tag: 'hero-rectangle', child: _greenDetailRectangle()),
                Text("sekhu")
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _gotoDetailsPageyellow(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(tag: 'her-rectangle', child: _yellowDetailRectangle()),
                Text("suransu")
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _gotoDetailsPageblack(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(tag: 'here-rectangle', child: _blackDetailRectangle()),
                Text("udya")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
