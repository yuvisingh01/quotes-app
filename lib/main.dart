import 'package:flutter/material.dart';
import 'quote.dart';

void main() =>runApp(MaterialApp(
home:  QuoteList(),
));

  Widget  quoteTemplate(dynamic quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize:18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize:14.0,
                  color: Colors.grey[600],
                ),
              ),
            ]
        ),
      ),
    );
  }
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote>quotes=[
    Quote(author:'Oscar Wilde', text:'Be yourself; everyone else is taken'),
    Quote(author:'Oscar Wilde', text:'I have nothing to declare except my genius'),
    Quote(author:'Oscar Wilde', text:'The truth is rarely pure and never simple'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children:  quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

