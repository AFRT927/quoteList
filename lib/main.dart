import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  List<Quote> qList = [Quote(text: 'Hay alguien tan inteligente que aprende de la experiencia de los demás', author: 'Voltaire'),
                       Quote(text: 'No malgastes tu tiempo, pues de esa materia está formada la vida', author: 'Benjamin Franklin'),
                       Quote(text: 'La buena conciencia es la mejor almohada para dormir', author: 'Sócrates')
                      ];
  
  Widget quoteTemplate( Quote q) {

    return QuoteCard(q);

  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
        'Awasome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: qList.map((q) => quoteTemplate(q)).toList(),
      ),
    );
  }
}


