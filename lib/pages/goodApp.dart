import 'package:GoodApp/widgets/customBottomAppBar.dart';
import 'package:GoodApp/widgets/customFAB.dart';
import 'package:flutter/material.dart';

class GoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: CustomBottomAppBar(
        isThisCurrentPage1: true,
      ),
    );
  }
}