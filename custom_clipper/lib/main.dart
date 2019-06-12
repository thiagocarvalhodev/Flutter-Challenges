import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 350.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.purpleAccent.withOpacity(0.3),
                  BlendMode.color,
                ),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                "https://guitar.com/wp-content/uploads/2019/04/Interview-Slash-Apollo-live-hero@1400x1050.jpg"
              )),
            )
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {

  // get the Clip whenever its needs to update
  // size here is really the size of CustomClipper's child
  @override
  Path getClip(Size size) {
    Path p = Path();

    // p(x,y)
    // must to be in order! The lineTo function start from the last line
    p.lineTo(0, size.height);
    p.lineTo(size.width, size.height / 1.2);
    p.lineTo(size.width, 0);


    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}
