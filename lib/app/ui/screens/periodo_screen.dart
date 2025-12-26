import 'package:flutter/material.dart';

/* Define a tela para exibição dos períodos */
class PeriodoScreen extends StatefulWidget {
  const PeriodoScreen({super.key});

  @override
  State<PeriodoScreen> createState() => _PeriodoScreenState();
}

class _PeriodoScreenState extends State<PeriodoScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Periodo Screen'),
          elevation: 0,
        ),
        body: Center(
          child: Text('Periodo Screen'),
        )
    );
  }
}