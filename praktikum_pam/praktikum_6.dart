import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Color _colors = Colors.white; //new

  //void new
  void changeColor(int r, int g, int b) {
    setState(() {
      _colors = Color.fromARGB(255, r, g, b);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: _colors,
        ),
        body: Center(
          child: MyWidget(onChanged: changeColor), //new
        ),
      ),
    );
  }
}

typedef Callback = void Function(int a, int b, int c); //new

class MyWidget extends StatefulWidget {
  final Callback onChanged;

  const MyWidget({required this.onChanged});

  @override
  State createState() {
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  bool _borderImage = false;
  int _fCount = 0;
  int _rSlider = 255;
  int _gSlider = 255;
  int _bSlider = 255;
  int _r = 0;
  int _g = 0;
  int _b = 0;

  void toggleBorderImage() {
    _borderImage = !_borderImage;
  }

  void favCount(int x) {
    _fCount = x;
  }

  void setChangeFav() {
    toggleBorderImage();
    favCount(_fCount + (_borderImage ? 1 : -1));
  }

  void onTaps() {
    setState(setChangeFav);
    ScaffoldMessenger.of(context).showSnackBar(_borderImage
        ? const SnackBar(content: Text('Bintang menjadi merah'))
        : const SnackBar(content: Text('Bintang menjadi putih')));
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Expanded(
        child: GestureDetector(
            child: Row(children: [
              Icon(
                _borderImage ? Icons.star : Icons.star_border,
                color: Colors.red,
              ),
              Text('Count klik: $_fCount,  '
                  'R : $_r,  '
                  'G : $_g,  '
                  'B : $_b')
            ]),
            onTap: onTaps),
      ),
      Expanded(
          child: Row(children: [
        const Text('R'),
        Slider(
          min: 0,
          max: 255,
          value: _rSlider.toDouble(),
          onChanged: (double n) {
            setState(() {
              _rSlider = n.toInt();
              _r = n.toInt();
              widget.onChanged(_r, _g, _b); //new
            });
          },
        ),
      ])),
      Expanded(
          child: Row(children: [
        const Text('G'),
        Slider(
          min: 0,
          max: 255,
          value: _gSlider.toDouble(),
          onChanged: (double n) {
            setState(() {
              _gSlider = n.toInt();
              _g = n.toInt();
            });
          },
        ),
      ])),
      Expanded(
          child: Row(children: [
        const Text('B'),
        Slider(
          min: 0,
          max: 255,
          value: _bSlider.toDouble(),
          onChanged: (double n) {
            setState(() {
              _bSlider = n.toInt();
              _b = n.toInt();
            });
          },
        ),
      ])),
      Expanded(
          child: Container(
        color: Color.fromARGB(255, _r, _g, _b),
      ))
    ]);
  }
}
