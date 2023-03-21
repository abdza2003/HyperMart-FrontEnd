import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/view/widget/home/categoriesList_widget.dart';
import 'package:hypermart/view/widget/home/seartchTextFaild_widget.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('my appbar'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // pinned: true,
            floating: true,
            // centerTitle: true,
            // pinned: true,
            expandedHeight: 260,
            stretchTriggerOffset: 10,
            flexibleSpace: FlexibleSpaceBar.createSettings(
              currentExtent: 200,
              child: Container(
                padding: EdgeInsets.all(10),
                // height: ,
                color: Colors.white.withOpacity(.90),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SeartchTextFaildWidget(),
                      const SizedBox(height: 20),
                      CategoriesListWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  alignment: Alignment.center,
                  height: 800,
                  color: Colors.blue[300],
                  child: Text('daataa'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
