import 'package:calculator_pj/application/providers/calculation_provider.dart';
import 'package:calculator_pj/application/providers/decoration_provider.dart';
import 'package:calculator_pj/ui/features/home_page/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      DevicePreview(
        builder: (context) {
          return const MyApp();
        },
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CalculationProvider()),
        ChangeNotifierProvider(create: (_) => DecorationProvider()),
      ],
      child: Consumer<DecorationProvider>(
        builder: (context, decorationProvider, widget) {
          decorationProvider
              .getCurrentTheme(); // pegar o tema que ficou quando o usuario saiu do celular
          return MaterialApp(
            title: 'Calculator Pj',
            theme: ThemeData(
              textTheme: decorationProvider.currentFont(),
            ),
            debugShowCheckedModeBanner: false,
            // themeMode: decorationProvider.currentTheme(),
            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
