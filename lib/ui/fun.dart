import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Fun extends StatefulWidget {
  const Fun({Key key}) : super(key: key);

  @override
  _FunState createState() => _FunState();
}

class _FunState extends State<Fun> {
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
              "Fun",
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
                  child: Text(
                    "Tap on the items to be redirected",
                    style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ),
                createNewItemList(
                    "Learn Crypto",
                    "Seek and read information",
                    Icons.search,
                    "https://blog.shrimpy.io/blog/7-tips-for-getting-started-with-cryptocurrency-trading"),
                createNewItemList("Check Doge", "Check the official website",
                    Icons.book, "https://dogecoin.com"),
                createNewItemList("Community", "Check the dogecoin community",
                    Icons.people, "https://www.reddit.com/r/dogecoin/"),
                createNewItemList(
                    "Select a Exchange",
                    "Recommended binance",
                    Icons.attach_money,
                    "https://www.binance.com/en/buy-Dogecoin-Doge"),
                createNewItemList("Hold", "💎 hands", Icons.sports_handball,
                    "https://www.reddit.com/r/dogecoin/comments/1y8js6/why_you_should_hold/"),
                createNewItemList("Pray", "For EGOD", Icons.stream,
                    "https://twitter.com/elonmusk"),
                createNewItemList("Repeat", "From community step", Icons.repeat,
                    "https://www.reddit.com/r/dogecoin/"),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Text(
                    "Disclaimer\nWe just want to make the community of dogecoin better, if you don´t know how to invest don´t do it.",
                    style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
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

Ink createNewItemList(
    String titleValue, String sub, IconData icon, String url) {
  return Ink(
    color: Colors.black,
    child: ListTile(
      title:
          Text(titleValue, style: TextStyle(color: Colors.white, fontSize: 18)),
      subtitle: Text(sub, style: TextStyle(color: Colors.white, fontSize: 16)),
      leading: Icon(
        icon,
        color: Colors.amber,
        size: 50,
      ),
      onTap: () => launch(url),
    ),
  );
}
