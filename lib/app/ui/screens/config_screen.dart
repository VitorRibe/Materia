import 'package:flutter/material.dart';

/* Define a tela para configurações */
class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Config Screen'),
          elevation: 0,
        ),
        body: Center(
          child: Text('Config Screen'),
        )
    );
  }
}