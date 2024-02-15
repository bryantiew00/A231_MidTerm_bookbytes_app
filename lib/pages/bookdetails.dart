import '../buyer/user.dart';
import '../buyer/books.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bookbyte/backend/my_server_config.dart' show MyServerConfig;


class BookDetails extends StatefulWidget {
  final User user;
  final Book book;

  const BookDetails({super.key, required this.user, required this.book});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  late double screenWidth, screenHeight;
  final f = DateFormat('dd-MM-yyyy hh:mm a');
  bool bookowner = false;

  @override
  Widget build(BuildContext context) {
    if (widget.user.userId == widget.book.userId) {
      bookowner = true;
    } else {
      bookowner = false;
    }
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.bookTitle.toString()),
      
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: screenHeight * 0.4,
            width: screenWidth,
            // padding: const EdgeInsets.all(4.0),
            child: Image.network(
                fit: BoxFit.fill,
                "${MyServerConfig.server}server/images/${widget.book.bookId}.png"),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            height: screenHeight * 0.6,
            child: Column(children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  widget.book.bookTitle.toString(),
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                widget.book.bookAuthor.toString(),
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  "Date Available ${f.format(DateTime.parse(widget.book.bookDate.toString()))}"),
              Text("ISBN ${widget.book.bookIsbn}"),
              const SizedBox(
                height: 8,
              ),
              Text(widget.book.bookDesc.toString(),
                  textAlign: TextAlign.justify),
              Text(
                "RM ${widget.book.bookPrice}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("Quantity Available ${widget.book.bookQty}"),
               // ignore: unnecessary_null_comparison
               if (User != null) 
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text("Add to Cart")),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
