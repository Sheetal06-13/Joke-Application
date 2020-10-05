import 'package:flutter/material.dart';
import 'package:joke_app/model/joke.dart';



class JokeListing extends StatelessWidget {
  const JokeListing({Key key,@required this.jokeSelectedCallback, this.jokeSelected}) : super(key: key);

  final ValueChanged<Joke> jokeSelectedCallback;
  final Joke jokeSelected;




  @override
  Widget build(BuildContext context) {
    return ListView(
      children: jokeList.map((joke){
        return  Container(
          child: ListTile(
            title: Text(joke.setup),
            onTap: ()=>jokeSelectedCallback(joke),
            selected: jokeSelected == joke,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(4.5),
          ),
        );
      }).toList(),
    );
  }
}
