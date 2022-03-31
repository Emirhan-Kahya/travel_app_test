import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_travel/cubit/app_cubit_logics.dart';
import 'package:keep_travel/cubit/app_cubits.dart';

import 'package:keep_travel/pages/detail_page.dart';
import 'package:keep_travel/pages/navpages/main_page.dart';
import 'package:keep_travel/pages/welcome_page.dart';
import 'package:keep_travel/services/data_services.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: AppCubitLogics(),
      ),
    );
  }
}


