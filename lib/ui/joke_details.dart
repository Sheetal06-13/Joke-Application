import 'package:flutter/material.dart';
import 'package:joke_app/model/joke.dart';
class JokeDetails extends StatelessWidget {

  const JokeDetails({Key key,@required this.isInTableLayout,@required this.joke}) : super(key: key);
  final bool isInTableLayout;
  final Joke joke;


  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme=Theme.of(context).textTheme;
    final Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(joke?.setup ?? 'No joke selected',
          style: textTheme.headline2,),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(joke?.punchline ?? 'Please select a joke  on the left',
          style: textTheme.subtitle1,),
        )

      ],
    );

    if(isInTableLayout){
      return Center(child: content,);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(joke?.type ?? 'No jokes'),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: content,
      ),
    );
  }
}
