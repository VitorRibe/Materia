import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:materia/app/ui/screens/config_screen.dart';
import 'package:materia/app/ui/screens/dash_screen.dart';
import 'package:materia/app/ui/screens/home_screen.dart';
import '../../res/colors.dart';
import '../screens/periodo_screen.dart';

/* Responsável pela navegação da botton navigation bar */
class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  // Lista de telas da Botton Navigation Bar
  final List<Widget> _telas = [
    const HomeScreen(),
    const PeriodoScreen(),
    const DashboardScreen(),
    const ConfigScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget> [
      Icon(Icons.home_outlined, size: 30, color: _index == 0 ? AppColors.primary : Colors.grey),
      Icon(Icons.calendar_month_outlined, size: 30, color: _index == 1 ? AppColors.primary : Colors.grey),
      Icon(Icons.bar_chart_outlined, size: 30, color: _index == 2 ? AppColors.primary : Colors.grey),
      Icon(Icons.person_outline, size: 30, color: _index == 3 ? AppColors.primary : Colors.grey)
    ];

    return Scaffold(
      // IndexedStack preserva o estado das telas (não recarrega ao trocar de aba)
      body: IndexedStack(
        index: _index,
        children: _telas,
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.surface,
        buttonBackgroundColor: AppColors.secondary,
        animationCurve: Curves.easeInOut,
        color: AppColors.secondary,
        animationDuration: Duration(milliseconds: 300),
        height: 75,
        items: items,
        index: _index,
        onTap: (index) => setState(() => _index = index),
      )
    );
  }
}