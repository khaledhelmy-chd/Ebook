import 'package:book_store/futures/books/data/model/book_model.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entites/book_response.dart';

class BookResponseModel extends BookResponse {
  BookResponseModel({required books, required meta, required link})
      : super(books: books, meta: meta, link: link);

  factory BookResponseModel.fromJson(Map<String, dynamic> json) =>
      BookResponseModel(
          books: List<BookModel>.from(
              json["data"]?.map((book) => BookModel.fromJson(book))).toList(),
          meta: Meta.fromJson(json["meta"]),
          link: Link.fromJson(json["links"]));
}
