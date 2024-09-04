import 'package:flutter/material.dart';
class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors =[Colors.yellow,Colors.pink,Colors.amber,Colors.amberAccent,Colors.red];
    return  Scaffold(
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context,index)
      {
        return Stack(

          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: colors[index]
              ),
            ),
            Positioned(
              top:MediaQuery.of(context).size.height-270,
              right: 10,
              child: Column(
                children: [
                  IconButton(onPressed: (){

                  }, icon:const Icon(Icons.thumb_up,color: Colors.white,)),
                  IconButton(onPressed: (){

                  }, icon:const Icon(Icons.thumb_down,color: Colors.white,)),
                  IconButton(onPressed: (){

                  }, icon:const Icon(Icons.message_sharp,color: Colors.white,)),
                  IconButton(onPressed: (){

                  }, icon:const Icon(Icons.share,color: Colors.white,)),
                ],
              ),
            ),
            Positioned(
                top:MediaQuery.of(context).size.height-170,
                left: 10,
                child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle

                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("@Talha Shoaib ",style: TextStyle(color: Colors.white),),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size(50, 40),
                        ),
                        onPressed: (){

                    }, child:const Text("Subscribe",style: TextStyle(
                      color: Colors.black
                    ),) )
                  ],
                )

              ],
            ))
          ],
        );
      }),
    );
  }
}
