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
  int _fCount = 0;
  int _rSlider = 255;int _gSlider = 255; int _bSlider = 255;
  int _r = 0; int _g = 0; int _b = 0;
  
  void toggleBorderImage() {
    _borderImage = !_borderImage;
  }
  
  void favCount(int x){
    _fCount = x ; 
  }
  
  void setChangeFav(){
    toggleBorderImage();
    favCount(_fCount + (_borderImage ? 1 : -1));
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: GestureDetector(
            child: Row(
              children : [
                Icon(
                  _borderImage ? Icons.star : Icons.star_border,
                  color: Colors.red,
                ),
                Text(
                  'Count klik: $_fCount,  '
                  'R : $_r,  '
                  'G : $_g,  '
                  'B : $_b'
                )
              ]
            ),
            onTap: () {
              setState(setChangeFav);     
              ScaffoldMessenger.of(context).showSnackBar(
                _borderImage ?
                const SnackBar(
                  content: Text('Bintang menjadi merah')
                ) :
                const SnackBar(
                  content: Text('Bintang menjadi putih')
                )
              );

            },
          ),
        ),
        Expanded(
          child: Row(
            children: [
              const Text('R'),
              Slider(
                min: 0,
                max: 255,
                value: _rSlider.toDouble(),
                onChanged: (double n){
                  setState((){
                    _rSlider = n.toInt();
                    _r = n.toInt();
                  });
                },
              ),
            ]
          )
        ),
        Expanded(
          child: Row(
            children: [
              const Text('G'),
              Slider(
                min: 0,
                max: 255,
                value: _gSlider.toDouble(),
                onChanged: (double n){
                  setState((){
                    _gSlider = n.toInt();
                    _g = n.toInt();
                  });
                },
              ),
            ]
          )
        ),
        Expanded(
          child: Row(
            children: [
              const Text('B'),
              Slider(
                min: 0,
                max: 255,
                value: _bSlider.toDouble(),
                onChanged: (double n){
                  setState((){
                    _bSlider = n.toInt();
                    _b = n.toInt();
                  });
                },
              ),
            ]
          )
        ),
        Expanded(
          child: Container(
            color: Color.fromARGB(255, _r, _g, _b),
          )
        )
      ]
    );
  }
}