import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State createState() {
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  bool _borderImage = false;

  void toggleBorderImage() {
    _borderImage = !_borderImage;
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      GestureDetector(
        child: Icon(
          _borderImage ? Icons.star : Icons.star_border,
          color: Colors.red,
        ),
        onTap: () {
          setState(toggleBorderImage);
          ScaffoldMessenger.of(context).showSnackBar(_borderImage
              ? const SnackBar(content: Text('Bintang menjadi merah'))
              : const SnackBar(content: Text('Bintang menjadi putih')));
        },
      ),
      const SizedBox(width: 8),
      const Text('40'),
    ]);
  }
}
