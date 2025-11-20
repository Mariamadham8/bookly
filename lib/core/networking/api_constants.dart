
final String baseUrl = 'https://www.googleapis.com/books/v1/';

final String NewestBooksEndPoint = '${baseUrl}volumes?Filtering=free-ebooks&Sorting=newest&maxResults=40&q=subject:fiction';
final String FeaturedBooksEndPoint = '${baseUrl}volumes?Filtering=free-ebooks&maxResults=40&q=subject:fiction';