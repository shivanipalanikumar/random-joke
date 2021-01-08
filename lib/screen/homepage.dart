import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isdisliked = false;
  bool _isliked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Text(
                  'joke',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  getDislikeButton(),
                  getlikeButton(),
                  getshareButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget getDislikeButton() {
    
    return GestureDetector(
        onTap: () {
          setState(() {
            _isdisliked = !_isdisliked;
          });
          // API call here
        },
        child: Container(
          height: 75,
          width: 75,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: _isdisliked ? Colors.white : Colors.blue,
              width: 1.5,
            ),
          ),
          child: Image.asset("assets/icons/disike.png"),
        ));
  }

  Widget getlikeButton() {
    
    return GestureDetector(
        onTap: () {
          setState(() {
            _isliked = !_isliked;
          });
          // API call here
        },
        child: Container(
          height: 75,
          width: 75,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: _isliked ? Colors.white : Colors.blue,
              width: 1.5,
            ),
          ),
          child: Image.asset("assets/icons/heart.png"),
        ));
  }

  Widget getshareButton() {

    return GestureDetector(
        onTap: () {
          setState(() {
            
          });
          // API call here
        },
        child: Container(
          height: 75,
          width: 75,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1.5,
            ),
          ),
          child: Image.asset("assets/icons/share.png"),
        ));
  }

}
