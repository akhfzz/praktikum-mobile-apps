import 'package:flutter/material.dart';


class CustomTheme{
  static ThemeData get light{
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light().copyWith(
        primary: Colors.orange,
        secondary: Colors.purple,  
        onSecondary: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black,
          padding: const EdgeInsets.all(6),
          primary: Colors.pink,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(4)
            ),
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Beranda'),
        ),
        body: MyWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.wb_sunny),
          hoverColor: Colors.black,
        ),
      ),
    );
  }
}
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.thumb_up),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.share),
                ),
              ]
          ),
          const SizedBox(
            height:40,
          ),
          Text(
            'Penulis',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Isi artikel',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            """
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
            when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
            It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            """,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ]
      )
    );
  }
}
