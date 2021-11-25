import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 80,
          right: 80,
          bottom: 20,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 90,
                      backgroundImage: NetworkImage(
                          'https://support-leagueoflegends.riotgames.com/hc/article_attachments/4409084135955/ArcaneVi_Final.png'),
                    ),
                    Text(
                      'Violet (Vi)',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Text(
                'Antiga criminosa das ruas violentas de Zaun, Vi é uma mulher temível, impulsiva e explosiva que tem muito pouco respeito por autoridades',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 10),
                child: ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Conheça mais'),
                ),
              ),
              const Text(
                'Número de clicks:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
