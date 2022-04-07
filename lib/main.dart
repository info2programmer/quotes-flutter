import 'dart:collection';

import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home : QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Be yourself; everyone else is already taken.", by :"Oscar Wilde"),
    Quote(text: "Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.", by :"Albert Einstein"),
    Quote(text: "So many books, so little time", by :"Frank Zappa")
  ];
  
  Widget quoteTemplate (quote){
    return Card(
        margin : EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(quote.text,
              style:  TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20.0,
                  color: Colors.grey[200],
              ),),
            const SizedBox(
              height: 10.0,
            ),
            Text(quote.by,
              style:  TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20.0,
                  color: Colors.amberAccent[100],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              ),)
          ],
        ),
      ),
      color: Colors.grey[700],
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),

    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[800],
      appBar:  AppBar(
        title: const Text(
            "Awesome Quotes",
          style: TextStyle(
            fontFamily: 'Grape',
            fontSize: 30.0
          ),
        ),
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((e) => quoteTemplate(e)).toList(),
      ),
    );
  }
}


