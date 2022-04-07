import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin : EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(quote.text,
                        style:  TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20.0,
                          color: Colors.grey[200],
                        ),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 10,
                        textAlign: TextAlign.left,
                      ),
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
                        ),),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: IconButton(
                    onPressed: () => delete(quote),
                    icon: const Icon(Icons.delete_outline),
                    color: Colors.red,
                  )
                )
              ],
            ),


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