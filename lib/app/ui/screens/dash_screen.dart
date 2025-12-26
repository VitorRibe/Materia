import 'package:flutter/material.dart';

/* Define a tela para métricas e dados */
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dash Screen'),
          elevation: 0,
        ),
        body: Center(
          child: Text('Dash Screen'),
        )
    );
  }
}