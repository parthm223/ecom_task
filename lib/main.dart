import 'package:ecom_task/onbord_screens/OnboardingScreen.dart';
import 'package:ecom_task/onbord_screens/SignInScreen.dart';
import 'package:ecom_task/onbord_screens/SignupScreen.dart';
import 'package:ecom_task/onbord_screens/Splash_screen.dart';
import 'package:ecom_task/provider/cart_provider.dart';
import 'package:ecom_task/provider/favorites_provider.dart';
import 'package:ecom_task/screens/cart_screen.dart';
import 'package:ecom_task/screens/checkout_screen.dart';
import 'package:ecom_task/screens/favorites_screen.dart';
import 'package:ecom_task/screens/main_screen.dart';
import 'package:ecom_task/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/product_details_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/settings_screen.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        // Add other providers if needed
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Baby Clothes Shop',
        theme: ThemeData(
          primaryColor: const Color(0xFF8DD3C7),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF8DD3C7),
            primary: const Color(0xFF8DD3C7),
          ),
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF8DD3C7),
            foregroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/onboarding': (context) => const OnboardingScreen(),
          '/signin': (context) => const SignInScreen(),
          '/signup': (context) => SignUpScreen(),
          '/main': (context) => const MainScreen(),
          '/product-details': (context) => const ProductDetailsScreen(),
          '/categories': (context) => const CategoriesScreen(),
          '/settings': (context) => const SettingsScreen(),
          '/search': (context) => const SearchScreen(),
          '/cart': (context) => const CartScreen(),
          '/favorites': (context) => const FavoritesScreen(),
          '/checkout': (context) => const CheckoutScreen(),
        },
      ),
    );
  }
}
