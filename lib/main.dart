import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List quotes = [
    Quote(author: "Oscar Chicken", text: "Be yourself"),
    Quote(author: "Well Done", text: "Do or Do not"),
    Quote(author: "Joey Salad", text: "How about one"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Awsome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList()
      ),
    );
  }
}


