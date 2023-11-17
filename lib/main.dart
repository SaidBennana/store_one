import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/HomeScreen.dart';

void main() {
  runApp(MyMain());
}

class MyMain extends StatelessWidget {
  const MyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodySmall:
              GoogleFonts.getFont("Almarai", fontWeight: FontWeight.bold),
          bodyLarge:
              GoogleFonts.getFont("Almarai", fontWeight: FontWeight.bold),
          bodyMedium:
              GoogleFonts.getFont("Almarai", fontWeight: FontWeight.bold),
        ),
      ),
      title: "Store",
      home: HomeScreen(),
    );
  }
}
