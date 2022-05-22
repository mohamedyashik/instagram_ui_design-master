import 'package:flutter/material.dart';
import 'package:instagram_ui_design/insta_ui_icons.dart';
import 'package:instagram_ui_design/models/postModel.dart';
import 'package:instagram_ui_design/models/profileModel.dart';
import 'package:instagram_ui_design/resources.dart';

class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);




  
  AppBar customAppBar() {
    return AppBar(
       backgroundColor: Colors.grey.shade100,
       elevation: 0,
       centerTitle: true,
       leading: IconButton(onPressed: (){},icon:Icon(Icons.camera_alt_outlined,color: Colors.black87,)),
       title: Container(
         padding:EdgeInsets.only(top: 0,bottom: 3),
         child: Image.network(Logo,height: 40)),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.send_sharp,color: Colors.black87))
       ],
     );
  }


    Padding topTitleWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
           children: [
             Text("Stories",style: subtitlestyle),
             Spacer(),
             Icon(Icons.arrow_right_sharp),
             Text("Watch all",style: subtitlestyle)
           ],
         ),
    );
  }

  TextStyle subtitlestyle = const TextStyle(fontWeight: FontWeight.bold,fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.black87,)),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
       appBar:customAppBar(),
       body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
         child: Column(children: [
           topTitleWidget(),
           ProfileListWidget(),
           Divider(
             thickness: 2,
           ),
       
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: postList.length,
            itemBuilder: (_,index) =>PostWidget(
              postModel: postList[index],
            ) )
          
         ]),
       ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  SingleChildScrollView ProfileListWidget() {
    return SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         physics: BouncingScrollPhysics(),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             children: [

            YourStory(),

                   for(int i=0;i < profileModels.length;i++) ... {
                        ProfileWidget(imagePath: profileModels[i].imagePath,profileName:profileModels[i].profileName ,),
                   }
             
             ],
       
           ),
         ),
       );
  }



}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.postModel
  }) : super(key: key);


    final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InstaGradient(imagePath: profileModels[0].imagePath,size: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(postModel.postedBy),
              ),
              Spacer(),

              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))

            ],
          ),

          ClipRRect(
            borderRadius:BorderRadius.circular(50),

            child: Image.network(postModel.postImage),
          ),
          Row(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
             IconButton(onPressed: (){}, icon: Icon(Icons.circle_outlined,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.send)),
              Spacer(),
               IconButton(onPressed: (){}, icon: Icon(Icons.bookmark,)),
          ],),

          Text('${postModel.likes} Likes',style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            children: [
             Text(postModel.content,style: TextStyle(fontWeight: FontWeight.bold),),
             
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 5.0),
               child: Text('${postModel.hashTagh[0]}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
             ),
            ],
          ),

      ]),
    );
  }
}

class YourStory extends StatelessWidget {
  const YourStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Stack(
           children: [
             ClipOval(
               child: Image.network(
                 profileModels[0].imagePath,height: 50,)),

                 Positioned(
                   bottom: 0,
                   right: 0,
                   child: Material(
                     borderRadius: BorderRadius.circular(50),
                     child: Icon(
                       Icons.add_circle,color: Colors.blue,size: 18,),
                   ))
           ],
         ),

        Padding(
          padding: const EdgeInsets.only(left:5.0),
          child: Text('Your Story',style: TextStyle(color: Colors.grey),),
        ),
      ],
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String profileName;
  final String imagePath;





  ProfileWidget({
   Key?key,
   required this.profileName,
     required this.imagePath,
 }):super(key: key);

 

  TextStyle subtitlestyle = const TextStyle(fontWeight: FontWeight.bold,fontSize: 16);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          InstaGradient(imagePath: imagePath),

          Text(profileName,style: subtitlestyle,),
      
        ],
        ),
    );
  }
}

class InstaGradient extends StatelessWidget {


  const InstaGradient({
    Key? key,
    required this.imagePath,
    this.size = 60
  }) : super(key: key);

    final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:size ,
      width: size,
    padding: EdgeInsets.all(3),
         
    decoration: BoxDecoration(
       
      borderRadius: BorderRadius.circular(50),
      gradient: LinearGradient(
        begin:Alignment.bottomLeft ,
        end: Alignment.topRight ,
        colors: [
        Color(0xfff7b553),
         Color(0xffef732b),
          Color(0xff5f47b9),
           Color(0xff9437b9),
      ]),
    ),
    child: Container(
      padding: EdgeInsets.all(2),
      
      decoration: BoxDecoration(
       color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: ClipOval(
        child: Image.network(
          imagePath,height: size,)),
    ),
    );
  }
}