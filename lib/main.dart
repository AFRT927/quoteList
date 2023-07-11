import 'package:flutter/material.dart';

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
        children: quotes.map((q) => Text(q)).toList(),
      ),
    );
  }
}
