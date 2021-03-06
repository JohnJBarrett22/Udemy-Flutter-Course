import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _jokesIndex = 0;
  final _jokesDialogue = const [
    'Today at the bank, an old lady asked me to help check her balance. So I pushed her over.',
    'I bought some shoes from a drug dealer. I don\'t know what he laced them with, but I\'ve been tripping all day.',
    'I told my girlfriend she drew her eyebrows too high. She seemed surprised.',
    'My dog used to chase people on a bike a lot. It got so bad, finally I had to take his bike away.',
    'I\'m so good at sleeping. I can do it with my eyes closed.',
    'My boss told me to have a good day.. so I went home.',
    'Why is Peter Pan always flying? He neverlands.',
    'A woman walks into a library and asked if they had any books about paranoia. The librarian says "They\'re right behind you!"',
    'The other day, my wife asked me to pass her lipstick but I accidentally passed her a glue stick. She still isn\'t talking to me.',
    'Why do blind people hate skydiving? It scares the hell out of their dogs.',
    'When you look really closely, all mirrors look like eyeballs.',
    'My friend says to me: "What rhymes with orange" I said: "No it doesn\'t"',
    'What do you call a guy with a rubber toe? Roberto.',
    'What did the pirate say when he turned 80 years old? Aye matey.',
    'My wife told me I had to stop acting like a flamingo. So I had to put my foot down.',
    'I couldn\'t figure out why the baseball kept getting larger. Then it hit me.',
    'Why did the old man fall in the well? Because he couldn\'t see that well.',
    'I ate a clock yesterday, it was very time consuming.',
    'Whatdya call a frenchman wearing sandals? Phillipe Phillope.',
    'A blind man walks into a bar. And a table. And a chair.',
    'I know a lot of jokes about unemployed people but none of them work.',
    'What\'s orange and sounds like a parrot? A carrot.',
    'Did you hear about the italian chef that died? He pasta way.',
    'Why couldn\'t the bicycle stand up? Because it was two tired!',
    'Parallel lines have so much in common. It’s a shame they’ll never meet.'
  ];

  void _changeJoke() {
    setState(() {
      _jokesIndex = _jokesIndex + 1;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment One'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                _jokesDialogue[_jokesIndex],
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: _changeJoke,
                child: Text('Shuffle'),
                textColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
