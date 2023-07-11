import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Hay alguien tan inteligente que aprende de la experiencia de los demás. Voltaire.',
    'No malgastes tu tiempo, pues de esa materia está formada la vida. Benjamin Franklin.',
    'La buena conciencia es la mejor almohada para dormir. Sócrates.'
    ];
  
  List<Quote> qList = [Quote(text: 'Hay alguien tan inteligente que aprende de la experiencia de los demás', author: 'Voltaire'),
                       Quote(text: 'No malgastes tu tiempo, pues de esa materia está formada la vida', author: 'Benjamin Franklin'),
                       Quote(text: 'La buena conciencia es la mejor almohada para dormir', author: 'Sócrates')
                      ];
 

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
        children: qList.map((q) => Row(
          children: [Text(q.text),
                     SizedBox(width: 10), 
                     Text(q.author)],
                                         
        )).toList(),
      ),
    );
  }
}
