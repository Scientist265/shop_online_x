import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shop_online_x/homepage.dart';

Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized(); // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
// class MyShop extends StatelessWidget {
//   const MyShop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: HomePage(),
//       ),
//     );
//   }
// }
