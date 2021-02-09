import 'package:GoodApp/pages/customDrawer.dart';
import 'package:GoodApp/widgets/customAppBar.dart';
import 'package:GoodApp/widgets/customBottomAppBar.dart';
import 'package:GoodApp/widgets/customFAB.dart';
import 'package:flutter/material.dart';

class SelfImprovementProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: 'Self Improvement Program',
      ),
      floatingActionButton: CustomFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: CustomBottomAppBar(
        isThisCurrentPage3: true,
      ),
    );
  }
}
