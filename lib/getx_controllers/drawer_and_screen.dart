import 'package:get/get.dart';

class TitleAndBodychangeDrawer extends GetxController {
  RxInt selectIndex = 0.obs;

  void updateIndex(int index) {
    selectIndex.value = index;
  }
}
