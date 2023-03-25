import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:network_state_management/presentation/screen/detail/controller/detail_controller.dart';

class DetailPage extends StatelessWidget {
  final String isbn13;
  DetailPage({super.key, required this.isbn13});
  final _controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<DetailController>(
          init: _controller,
          initState: (state) => _controller.getDetail(isbn13),
          builder: (context) {
            return Text(_controller.book.value.title ?? '');
          }),
    );
  }
}
