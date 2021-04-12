import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
              "About",
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
                  child: Image.asset("assets/the_king_doge.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 30, 24, 0),
                  child: Text(
                    "Dogecoin is one of the best communities in the crypto world.\n\nSeeing that and being apart of this community is a amazing feeling.\n\nThank you.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    textAlign: TextAlign.center,
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
