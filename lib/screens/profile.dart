import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

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
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.white,
        ),
      ),
        backgroundColor: Colors.white,
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
          const SizedBox(
            width: 15,
          ),
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.settings)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
 Padding(
   padding: const EdgeInsets.all(10.0),
   child: Row(
    children: [
   Container(
    height: 90,
    width: 90,
    decoration: const BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle
    ),
    child: const Center(child: Text("T",style: TextStyle(
      color: Colors.white,fontSize: 20
    ),)),
   ),
      const SizedBox(
        width: 20,
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Talha Shoaib \nYoutuber ",style: TextStyle(
            color: Colors.black,fontSize: 20,fontWeight: FontWeight.w900
          ),),
          Text("@TalhaShoaibyoutubers   . View Channel >",style: TextStyle(
            color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w300
          ),),
        ],
      )
    ],
   ),
 ),


            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index)
              {

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200
                    ),
                    child:  Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(width: 5,),
                        Text(categoriesList[index])
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("History ",style: TextStyle(
                      color: Colors.black,fontSize: 20,fontWeight: FontWeight.w900
                  ),),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200
                    ),
                    child: const Center(
                      child: Text("View All",),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index)

              {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 162,
                    child: Column(
                      children: [
                        Container(
                          height:100,
                          width: 160,
                          decoration:  BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)


                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                         Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            categoriesList[index])
                      ],
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Playlist ",style: TextStyle(
                      color: Colors.black,fontSize: 20,fontWeight: FontWeight.w900
                  ),),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200
                    ),
                    child: const Center(
                      child: Text("View All",),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index)

                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 162,
                        child: Column(
                          children: [
                            Container(
                              height:100,
                              width: 160,
                              decoration:  BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10)


                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                categoriesList[index])
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context,index)
              {

                return ListTile(
                  leading: const Icon(Icons.video_collection_outlined),
                  title: Text(categoriesList[index]),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
