import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spayce/app_widget.dart';

void main() {
  runApp(const AppFirebase());
}

class AppFirebase extends StatefulWidget {
  const AppFirebase({super.key});

  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _inicialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _inicialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Material(
            child: Center(
              child: Text("Não foi possível inicializar o Firebase",
                  textDirection: TextDirection.ltr),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return const AppWidget();
        } else {
          return const Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
