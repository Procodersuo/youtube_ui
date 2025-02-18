import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoriesList = [
      "Music",
      "Science",
      "Programming",
      "Art",
      "Software Development",
      "Flutter",
      "Games",
      "Web",
      "Artificial Intelligence",
      "Machine Learning"
    ];
    return Scaffold(

body: CustomScrollView(
  slivers: [

    SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,


      floating: true,
      titleSpacing: -5,
      title: const Text("Youtube",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
      leading: Image.asset("images/youtube.png"),
      actions: [
        const SizedBox(
          width: 15,
        ),
        IconButton(onPressed: (){

        }, icon: const Icon(Icons.cast)),
        const SizedBox(
          width: 15,
        ),
        IconButton(onPressed: (){

        }, icon: const Icon(Icons.notifications)),
        const SizedBox(
          width: 15,
        ),
        IconButton(onPressed: (){

        }, icon: const Icon(Icons.search)),
      ],
      bottom: PreferredSize(preferredSize:const Size(Checkbox.width, 50), child: Container(
        height: 50,
        child: ListView.builder(
          itemCount: categoriesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(

                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text(categoriesList[index])),
            ),
          );
        }),
      )),
    ),
    const SliverToBoxAdapter(
      child: SizedBox(
        height: 10,
      ),
    ),

    SliverList(

      delegate: SliverChildBuilderDelegate(

            (BuildContext context, int index) {

         return Column(
           children: [
             Container(
               height: 210,
               decoration: const BoxDecoration(
                 color: Colors.pink,
               ),
             ),

             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 children: [
                   Row(

                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       CircleAvatar(
                         child: Container(
                           height:50,
                           decoration: const BoxDecoration(
                             color: Colors.blue,
                             shape: BoxShape.circle
                           ),
                         ),
                       ),
                       const SizedBox(
                         width: 10,
                       ),
                       const Expanded(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment:CrossAxisAlignment.start,
                           children: [
                             Text(
                               maxLines: 2,
                               overflow: TextOverflow.ellipsis,
                               "What is Flutter | Custom Scroll View  \nSliver App bar  ",style: TextStyle(
                                 color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400
                             ),),
                             Row(
                               children: [
                                 Text("Talha Shoaib . ",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w200),),
                                 Text("4B views ",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w200),),
                                 Text("10 minutes ago",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w200),),
                               ],
                             )

                           ],
                         ),
                       )

                     ],
                   ),

                 ],
               ),
             )
           ],
         );
        },
        childCount: 20, // Number of items
      ),
    ),


  ],

),
    );
  }

  // Reusable video section widget

}
