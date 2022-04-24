import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/src/providers/providers.dart';
import 'package:qr_scanner/src/providers/scan_list_provider.dart';
import 'package:qr_scanner/src/screens/screens.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  	const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MultiProvider(
			providers: [
				ChangeNotifierProvider(create: ( _ ) => UiProvider( ) ),
				ChangeNotifierProvider(create: ( _ ) => ScanListProvider() )
			],
			child: MaterialApp(
				debugShowCheckedModeBanner: false,
				title: 'QR Reader',
				initialRoute: 'home',
				routes: {
					'home': ( _ ) => const HomeScreen(),
					'map': ( _ ) => const MapScreen(),
				},
				theme: ThemeData(
					primarySwatch: Colors.deepPurple,
					floatingActionButtonTheme: const FloatingActionButtonThemeData(
						backgroundColor: Colors.deepPurple
					)
				),
			),
		);
	}
}