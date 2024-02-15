class Book {
  String? bookId;
  String? userId;
  String? bookISBN;
  String? bookTitle;
  String? bookDesc;
  String? bookAuthor;
  String? bookStatus;
  String? bookPrice;
  String? bookQty;
  String? bookDate;

  Book(
      {this.bookId,
      this.userId,
      this.bookISBN,
      this.bookTitle,
      this.bookDesc,
      this.bookAuthor,
      this.bookStatus,
      this.bookPrice,
      this.bookQty,
      this.bookDate});

  Book.fromJson(Map<String, dynamic> json) {
    bookId = json['bookId'];
    userId = json['userId'];
    bookISBN = json['bookISBN'];
    bookTitle = json['bookTitle'];
    bookDesc = json['bookDesc'];
    bookAuthor = json['bookAuthor'];
    bookStatus = json['bookStatus'];
    bookPrice = json['bookPrice'];
    bookQty = json['bookQty'];
    bookDate = json['bookRegDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookId'] = bookId;
    data['userId'] = userId;
    data['bookISBN'] = bookISBN;
    data['bookTitle'] = bookTitle;
    data['bookDesc'] = bookDesc;
    data['bookAuthor'] = bookAuthor;
    data['bookStatus'] = bookStatus;
    data['bookPrice'] = bookPrice;
    data['bookQty'] = bookQty;
    data['bookRegDate'] = bookDate;
    return data;
  }
}