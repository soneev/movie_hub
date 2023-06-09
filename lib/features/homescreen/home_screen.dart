import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/features/homescreen/widgets/custom_textfield2.dart';

import '../../utils/header.dart';
import 'home_screen_controller.dart';
import 'widgets/custom_textfields.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

iconTheme:const  IconThemeData(color: Colors.black),
        
       
        title: const Header(),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer:  const CustomDrawer(),
      body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return SafeArea(
                child: Obx(
              () => ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 20,
                ),
                itemCount: controller.movieListEnity.value.result.length,
                itemBuilder: (BuildContext context, int index) {
                  // for (int i = 0;
                  //     i < controller.movieListEnity.value.result.length;
                  //     i++) {}
                  return Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 10, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child:
                                      Image.asset("assets/drop-up-arrow.png"),
                                ),
                                Text(
                                  controller
                                      .movieListEnity.value.result[index].voting
                                      .toString(),
                                  // "2",
                                  style: const TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: Image.asset("assets/down-arrow.png"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("vote")
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                                image: DecorationImage(
                                    image: NetworkImage(controller
                                        .movieListEnity
                                        .value
                                        .result[index]
                                        .poster!),

                                    //  AssetImage(
                                    //   "assets/poster.png",
                                    // ),
                                    fit: BoxFit.cover),
                              ),
                              height: 120,
                              width: 80,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.movieListEnity.value
                                        .result[index].title!,
                                    // "Title",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  CustomField(
                                    title: 'Gener :',
                                    value: controller.movieListEnity.value
                                        .result[index].genre!,
                                    // 'action, adventure,thriller',
                                  ),
                                  CustomField(
                                      title: 'Director :',
                                      value: controller.movieListEnity.value
                                          .result[index].director.first
                                      //  'rajmouli',
                                      ),

                                  Row(
                                    children: [
                                      const Text(
                                        "staring  :",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      for (int i = 0;
                                          controller.movieListEnity.value
                                                  .result[i].stars.length >
                                              i;
                                          i++)
                                        Text(
                                          controller.movieListEnity.value
                                              .result[i].stars[0],
                                          // maxLines: 1,

                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                    ],
                                  ),

                                  //  if(controller.movieDatalist.length>=2)
                                  //   CustomField(
                                  //   title: 'Starring :',
                                  //   value:
                                  //  controller.movieDatalist[index]
                                  //       // controller.movieListEnity.value.result[index].

                                  //     //  'lal',
                                  //                                   ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Textfield2(
                                    title1: 'mins',
                                    title3: 'English',
                                    title2: '2 Apr',
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${controller.movieListEnity.value.result[index].pageViews.toString()} views",

                                        // "127 view",
                                        style: const TextStyle(color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 12,
                                        color: Colors.blue,
                                        width: 2,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "voted by ${controller.movieListEnity.value.result[index].totalVoted.toString()} people",
                                        // "voted by 1 people",
                                        style: const TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 370,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Center(
                                child: Text("Watch trailer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ));
          }),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
   
      
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
              ),
              child: const Text(
                'Company info',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_city),
              title: const Text('Geeksynergy Technologies Pvt Ltd'),
              onTap: () {
                 Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading:const Icon(Icons.navigation) ,
              title: const Text('Sanjayanagar, Bengaluru-56'),
              onTap: () {
                 Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading:const Icon(Icons.phone) ,
              title: const Text('XXXXXXXXX09'),
              onTap: () {
                 Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading:const Icon(Icons.mail) ,
              title: const Text('XXXXXX@gmail.com'),
              onTap: () {
                 Navigator.pop(context);
                
              },
            ),
          ],
        ),
      );
  }
}
