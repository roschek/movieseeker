import 'package:flutter/material.dart';
import 'package:movie_seeker/widgets/Theme/app_colors.dart';
import 'package:movie_seeker/widgets/auth/auth_widget.dart';
import 'package:movie_seeker/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'movie seeker',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainBlueColor
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainBlueColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey
        )

      ),
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget()
      },
      initialRoute: '/auth',
    );
  }
}

