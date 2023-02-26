import 'package:flutter/material.dart';
import 'package:quotes/model.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List emoji = [
    "assets/images/emoji1.png",
    "assets/images/emoji2.jpg",
    "assets/images/emoji3.jpg",
    "assets/images/emoji4.jpg",
    "assets/images/emoji5.jpg",
  ];

  List types = [
    "sad quotes",
    "funny quotes",
    "angry quotes",
    "emotional quotes",
    "daily quotes",
  ];

  List sadquo = [
    "The good times of today, are the sad thoughts of tomorrow.",
    "It's sad when someone you know becomes someone you knew.",
    "Tears come from the heart and not from the brain.",
    "Grief is not as heavy as guilt, but it takes more away from you.",
    "I always like walking in the rain, so no one can see me crying.",
  ];

  List funnyquo = [
    "People say noyhing is imposible, but I do nothing everyday.",
    "I choose a lazy person to do a hard job, because lazy person will find an easy way to do it.",
    "Do not take life too seriously. You will never get out of it alive.",
    "My kid is turning out just like me.Well played, Karma.",
    "Me and my bed are perfect for each other ,but my alaram clock keeps trying to break us up."
  ];

  List angryquo = [
    "I am angry bird to those never understand my worth.",
    "For every minute you remain angry,you give up sixty seconds piece of mind.",
    "You always forgives ones you love, no matter how angry you are.",
    "Any person capable of angering you becomes your master.",
    "When angry count to ten before speak, If very angry count to one hundred.",
  ];

  List emotionalquo = [
    "Tears have no weight but, I carries heavy feeling.",
    "Don't let anyone rent a space in your head, unless they are a good tenant.",
    "Enjoy the little moments becuase once they are over they won't come back.",
    "Beeing rude is the best possible way to hide your feelings.",
    "Sometimes you gotta a pretend everything is okay."
  ];

  List dailyquo = [
    "When you have a dream you have got to grab it and never let go.",
    "you always pass failure on the way to success.",
    "The you harder you work the better you get.",
    "To be the best you must be able to handle the worst.",
    "Whatever you are, be a good one."
  ];

  List ver = [];

  @override
  void initState() {
    super.initState();
    ver = [sadquo,funnyquo,angryquo,emotionalquo,dailyquo];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Types of Emojies"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(itemBuilder: (context, index) => InkWell(
            onTap: () {
              // qoutes q1 = qoutes(a1: ver[index]);
              Navigator.pushNamed(context, 'quo',arguments: ver[index]);
            },
            child: theme(types[index]),
          ),
            itemCount: types.length,
          ),
        )
      ),
    );
  }

  Widget theme(String typ)
  {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,width: 50,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)
        ),
        child: Center(child: Text("${typ}",style: TextStyle(color: Colors.black,fontSize: 20),)),
      ),
    );
  }

}
