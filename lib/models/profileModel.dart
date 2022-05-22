   import 'package:flutter/material.dart';

   class ProfileModel{

      String imagePath;
      String profileName;
      ProfileModel({
        required this.imagePath,
        required this.profileName,
      });


  }

  List<ProfileModel> profileModels = [
       
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/3.jpg', profileName: 'Ryan'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/4.jpg', profileName: 'Robin'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/5.jpg', profileName: 'Ramesh'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/6.jpg', profileName: 'Wilson'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/7.jpg', profileName: 'Vicky'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/8.jpg', profileName: 'John'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/9.jpg', profileName: 'Rithesh'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/10.jpg', profileName: 'Ramesh'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/11.jpg', profileName: 'Ramu'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/12.jpg', profileName: 'Vinoth'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/13.jpg', profileName: 'Vinith'),
            ProfileModel(imagePath: 'https://randomuser.me/api/portraits/men/14.jpg', profileName: 'Praveen'),
  


  ];