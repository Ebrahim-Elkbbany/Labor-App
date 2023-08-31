
import 'package:flutter/material.dart';
import 'package:labor/views/widgets/categories_grid_view.dart';
class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF9FFF6),
     appBar: AppBar(

       leading: IconButton(onPressed: () {
         Navigator.of(context).pop();
       },icon: Icon(Icons.arrow_back)),
       centerTitle: true,
       title: const Text('Categories',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black)),
     ),

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
          child: CategoriesGridView(),
        ),
      ),
    );
  }
}