[13.07, 7/4/2022] +62 818-264-066: import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Color _color = Colors.white;
  
  void changeColor(int r, int g, int b) {
    setState(() {
      _color = Color.fromARGB(255, r, g, b);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme.of(context).copyWith(
          color: _color,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(onChanged: changeColor),
    );
  }
}

typedef ChangeCallback = void Function(int…
[13.48, 7/4/2022] +62 818-264-066: import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Color _color = Colors.white;
  
  void changeColor(int r, int g, int b) {
    setState(() {
      _color = Color.fromARGB(255, r, g, b);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme.of(context).copyWith(
          color: _color,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(onChanged: changeColor),
    );
  }
}

typedef ChangeCallback = void Function(int r, int g, int b);

class HomePage extends StatefulWidget {
  final ChangeCallback onChanged;
  
  const HomePage({required this.onChanged});
  
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _r = 255;
  int _g = 255;
  int _b = 255;
  
  Widget _createSlider(String title, int value, ValueChanged mutator) {
    return Row(
      children: [
        Text(title),
        Expanded(
          child: Slider(
            min: 0,
            max: 255,
            value: value.toDouble(),
            onChanged: (double n) {
              mutator(n);
              widget.onChanged(_r, _g, _b);
            },
          ),
        ),
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Visualizer'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            _createSlider('R', _r, (n) { _r = n.toInt(); }),
            _createSlider('G', _g, (n) { _g = n.toInt(); }),
            _createSlider('B', _b, (n) { _b = n.toInt(); }),
            Expanded(
              child: ColorContainer(_r, _g, _b),
            ),
            ColorSlider(
              title: 'R',
              value: _r,
              mutator: (n) { _r = n.toInt(); widget.onChanged(_r, _g, _b); },
            ),
            ColorSlider(
              title: 'G',
              value: _g,
              mutator: (n) { _g = n.toInt(); widget.onChanged(_r, _g, _b); },
            ),
            ColorSlider(
              title: 'B',
              value: _b,
              mutator: (n) { _b = n.toInt(); widget.onChanged(_r, _g, _b); },
            ),
          ],
        ),
      ),
    );
  }
}

class ColorContainer extends StatelessWidget {
  final int r;
  final int g;
  final int b;
  
  const ColorContainer(this.r, this.g, this.b);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      color: Color.fromARGB(255, r, g, b),
    );
  }
}

class ColorSlider extends StatefulWidget {
  final String title;
  final int value;
  final ValueChanged mutator;
  
  const ColorSlider({
    required this.title,
    required this.value,
    required this.mutator,
  });
  
  @override
  State createState() => ColorSliderState();
}

class ColorSliderState extends State<ColorSlider> {
  late int _value;
  
  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title),
        Expanded(
          child: Slider(
            min: 0,
            max: 255,
            value: _value.toDouble(),
            onChanged: (double n) {
              widget.mutator(n);
              setState(() { _value = n.toInt(); });
            },
          ),
        ),
      ],
    );
  }
}