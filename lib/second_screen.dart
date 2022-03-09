import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  List<String> listPlayerNames;
  SecondScreen({required this.listPlayerNames});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SecondScreenState(listPlayerNames);
  }
}

class SecondScreenState extends State<SecondScreen> {
  List<String> listPlayerNames;
  SecondScreenState(this.listPlayerNames);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (var playerName in listPlayerNames)
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: RaisedButton(
                  onPressed: () {
                    // Navigator.popUntil(context, (Route<dynamic> route) => route.);
                    // Navigator.popUntil(
                    //     context, ModalRoute.withName('/FirstScreen'));
                    Navigator.pop(context, playerName);
                  },
                  child: Text(playerName.toString())),
            )
        ],
      ),
    ));
  }
}
