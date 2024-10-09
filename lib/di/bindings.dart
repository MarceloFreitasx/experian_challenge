import 'package:get/get.dart';

import '../data/services/services.dart';
import '../infra/infra.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    //? Services
    Get.put<HttpClient>(HttpService());
  }
}
