import 'package:network_state_management/data/model/book_response_model.dart';

abstract class BookRepository {
  Future<BookResponseModel> getAllNewBook(String query);
}
