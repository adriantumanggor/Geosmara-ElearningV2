import '../models/book.dart';

Future<List<Book>> getBooks() async {
  return [
    Book(
      id: "1",
      title: 'Belajar Mengenal Peta',
      author: 'Pak Rengga',
      imageUrl: 'https://images.unsplash.com/photo-1509021436665-8f07dbf5bf1d',
      rating: 4.5,
    ),
    Book(
      id: "2",
      title: 'Geografi dan Lingkungan',
      author: 'Dewi Kartika',
      imageUrl: 'https://images.unsplash.com/photo-1522199755839-a2bacb67c546',
      rating: 4.0,
    ),
    Book(
      id: "3",
      title: 'Pemahaman Ruang Digital',
      author: 'Andi Pratama',
      imageUrl: 'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
      rating: 4.8,
    ),
  ];
}
