
import 'package:flutter/material.dart';
class CategoriesList extends StatelessWidget {
  static String id ="CategoriesList";
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categorisList =["Music","Science","Programming","Art","Software Development","Flutter","Games","Web","Artificial Intelligence","Machine Learning"];
    return Expanded(child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: categorisList.length,
        itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(

              padding: const EdgeInsets.all(6.0),

              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(6)
              ),
              child:  Center(
                child: Text(categorisList[index].toString(),style: const TextStyle(
                    color: Colors.black
                ),),
              ),
            ),
          );
        }));
  }
}
