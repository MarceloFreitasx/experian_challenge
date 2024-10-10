import 'package:get/get.dart';

import '../core/platform/platform.dart';
import '../data/datasources/datasources.dart';
import '../data/services/services.dart';
import '../data/usecases/usecases.dart';
import '../domain/repositories/repositories.dart';
import '../domain/usecases/usecases.dart';
import '../infra/infra.dart';
import '../presentation/controllers/controllers.dart';
import '../ui/pages/pages.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    //? Services
    Get.put<HttpClient>(HttpService());
    Get.put<PlatformChannel>(PlatformChannelImpl());

    //? Repositories
    Get.lazyPut<CharactersRepository>(
      () => RemoteCharacterDataSource(Get.find<HttpClient>()),
      fenix: true,
    );
    Get.lazyPut<EventsRepository>(
      () => EventsDataSource(Get.find<PlatformChannel>()),
      fenix: true,
    );

    //? UseCases
    Get.lazyPut<GetCharactersListUseCase>(
      () => GetCharactersUseCaseImpl(Get.find<CharactersRepository>()),
      fenix: true,
    );
    Get.lazyPut<SendEventUseCase>(
      () => SendEventUseCaseImpl(Get.find<EventsRepository>()),
      fenix: true,
    );

    //? Controllers
    Get.lazyPut<HomeController>(
      () => HomeControllerImpl(
        Get.find<GetCharactersListUseCase>(),
        Get.find<SendEventUseCase>(),
      ),
      fenix: true,
    );
    Get.lazyPut<DetailsController>(
      () => DetailsControllerImpl(),
      fenix: true,
    );
  }
}
