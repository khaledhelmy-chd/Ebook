import 'dart:convert';

import 'package:book_store/futures/books/domain/entites/book.dart';

class BookModel extends Book {
  const BookModel(
      {required id,
      required title,
      required author,
      required content,
      required totalpages,
      required img,
      required audio,
      required tags,
      required catigories,
      required file})
      : super(
            id: id,
            title: title,
            author: author,
            content: content,
            totalpages: totalpages,
            img: img,
            audio: audio,
            tags: tags,
            catigories: catigories,
            file: file);

  factory BookModel.fromJson(Map<String, dynamic> jsonIteam) => BookModel(
        id: jsonIteam["id"] ?? 0,
        title: jsonIteam["title"] ?? "",
        author: jsonIteam["author"] ?? "",
        content: jsonIteam["content"] ?? "",
        // rate: jsonIteam["rate"],
        img: jsonIteam["img"] ?? "",
        audio: jsonIteam["audio"] ?? "",
        tags: json.decode(jsonIteam["tags"]) ?? [],
        catigories: json.decode(jsonIteam["categories"]) ?? [],
        file: jsonIteam["file"] ?? "",
        totalpages: jsonIteam["totalpages"] ?? 0,
      );

  Map<String, dynamic> toJson(BookModel book) => {
        "id": book.id,
        "title": book.title,
        "content": book.content,
        "author": book.author,
        // "rate":    book.rate,
        "totalpages": book.totalpages,
        "img": book.img,
        "audio": book.audio,
        "tags": json.encode(book.tags),
        "file": book.file
      };

  @override
  List<Object?> get props =>
      [title, content, author, img, audio, file, totalpages];
}
