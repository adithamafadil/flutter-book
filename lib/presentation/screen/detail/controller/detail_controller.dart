import 'package:get/get.dart';
import 'package:network_state_management/data/model/book_model.dart';

class DetailController extends GetxController {
  Rx<BookModel> book = Rx(BookModel());
  void getDetail(String isbn13) {}
}
