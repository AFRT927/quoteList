import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {

  // parameter
  final Quote quote;

  // constructor
  const QuoteCard(this.quote);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),      
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: <Widget>[
            Text(
              '${quote.text}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6),
            Text(
              '${quote.author}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600]
              ),
            ),
          ],
        ),
      ),
    );
  }
}