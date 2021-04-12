import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Text(
              "Home",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
          ),
          Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Image.asset("assets/doge_logo_245.png"),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Center(
                      child: Text(
                        "Dogecoin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 2, 24, 0),
                  child: Text(
                      "Dogecoin is an open source peer-to-peer digital currency, favored by Shiba Inus worldwide.",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
                  child: GestureDetector(
                    onTap: () {
                      launchURL("https://dogecoin.com");
                    },
                    child: Text(
                      "Learn more",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
