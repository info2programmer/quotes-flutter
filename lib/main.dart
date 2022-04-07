import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(text: "So many books, so little time", by :"Frank Zappa"),
  ];
  
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
        children: quotes.map((quote) => QuoteCard(
            quote : quote,
            delete: (quote) {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}




