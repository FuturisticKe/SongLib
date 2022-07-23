import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'exports.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: asLightTheme,
      //darkTheme: asDarkTheme,
      //themeMode: themeController.theme,
      initialRoute: Routes.splash,
      getPages: [
        GetPage(
          name: Paths.splash,
          page: () => SplashView(),
          binding: SplashBinding(),
        ),
        GetPage(
          name: Paths.books,
          page: () => BooksView(),
          binding: BooksBinding(),
        ),
        GetPage(
          name: Paths.songs,
          page: () => SongsView(),
          binding: SongsBinding(),
        ),
        GetPage(
          name: Paths.home,
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: Paths.song,
          page: () => SongView(song: null),
          binding: SongBinding(),
        ),
      ],
    );
  }
}