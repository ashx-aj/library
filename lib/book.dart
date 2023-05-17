class Book {
  final String url;
  final String name;
  final String author;

  Book(this.url, this.name, this.author);

  static List<Book> books = [
    Book("assets/books/image1.jpg", 'Muscle', 'Alan Trotter'),
    Book("assets/books/image2.jpg", 'Dominicana', 'Angel Curie'),
    Book("assets/books/image2.jpg", 'Educated', 'Emma Wilson'),
    Book("assets/books/image4.jpg", 'Just my Type', 'Simon Gratfield'),
    Book("assets/books/image5.jpg", 'Chanel', 'EDW'),
    Book("assets/books/image3.jpg", 'Modern', 'Ash Marco')
  ];
}
