import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Cinema'),
          ),
          body: MyWidget()),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://www.tvbeurope.com/wp-content/uploads/2020/11/netflix-france.jpeg',
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Mortel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Marvel Studio', style: TextStyle(color: Colors.grey)),
                  ]),
            ),
            const Icon(Icons.thumb_up, size: 16),
            const Text('23K'),
            const SizedBox(width: 8),
            const Icon(Icons.thumb_down, size: 16),
            const Text('500')
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(children: const [
              Icon(Icons.paid),
              SizedBox(height: 4),
              Text('Cost')
            ]),
            Column(children: const [
              Icon(Icons.thumb_up),
              SizedBox(height: 4),
              Text('Like')
            ]),
            Column(children: const [
              Icon(Icons.thumb_down),
              SizedBox(height: 4),
              Text('Dislike')
            ]),
            Column(children: const [
              Icon(Icons.share),
              SizedBox(height: 4),
              Text('Share')
            ]),
          ]),
        )
      ],
    );
  }
}
