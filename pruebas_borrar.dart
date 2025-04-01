import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Ejemplo con un Snackbar',
        home: Scaffold(
          body: MySnackbar(),
        ));
  }
}

class MySnackbar extends StatelessWidget {
  const MySnackbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              content: const Text('Esto es un snackbar.'),
              action: SnackBarAction(
                label: 'Oculta',
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ),
          );
        },
        child: const Text('Muestra un Snackbar'),
      ),
    );
  }
}
