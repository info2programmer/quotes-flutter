import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
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
}