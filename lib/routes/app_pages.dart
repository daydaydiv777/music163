import 'package:get/get.dart';
import 'package:music163/views/app.dart';
import 'package:music163/views/app_controller.dart';
import 'package:music163/views/found/found_controller.dart';
import 'package:music163/views/found/found_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.APP;

  static final notFound = GetPage(
    name: Routes.FOUND,
    page: () => const FoundScreen(),
    binding: BindingsBuilder(() {
      Get.lazyPut<FoundController>(() => FoundController());
    }),
  );

  static final routes = [
    GetPage(
      name: '/',
      page: () => const App(),
      binding: BindingsBuilder(() {
        Get.lazyPut<AppController>(() => AppController());
      }),
      children: [
        GetPage(
          name: Routes.FOUND,
          page: () => const FoundScreen(),
          binding: BindingsBuilder(() {
            Get.lazyPut<FoundController>(() => FoundController());
          }),
        ),
      ],
    ),
  ];
}