     class PostModel{

      String postedBy;
      String  postImage;
      int likes;
      List<String> hashTagh;
      String content;

      PostModel({
        required this.postedBy,
        required this. postImage,
        required this. likes,
        required this. hashTagh,
        required this. content,
      });


  }

  List<PostModel> postList = [

 
 PostModel(postedBy: 'Gordon Medina', postImage: 'https://images.pexels.com/photos/9761329/pexels-photo-9761329.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', likes: 2500, hashTagh: ['Bridal Collections','yash'], content: 'Hi EveryOne'),

 PostModel(postedBy: 'Machale', postImage: 'https://media.istockphoto.com/photos/beautiful-bride-posing-with-bouquet-of-flowers-picture-id1131140438?s=612x612', likes: 250, hashTagh: ['Bride','Raju'], content: 'Whats Up'),
 
 PostModel(
   postedBy: 'Gordon Medina', 
   postImage: 'https://media.istockphoto.com/photos/beautiful-bride-with-wedding-bouquet-picture-id452255133?k=20&m=452255133&s=612x612&w=0&h=fNrQZo11Q4hwImy3H707sEzPI0w4DpFwAFqVtRJOEIY=', 
   likes: 890, hashTagh: ['beautiful','Ram'],
    content: 'Hi EveryOne'),

 PostModel(
   postedBy: 'Machale', 
 postImage: 'https://media.istockphoto.com/photos/bride-with-a-bouquet-in-a-beautiful-wedding-dress-picture-id1200765987?k=20&m=1200765987&s=612x612&w=0&h=EoxRj9nnRLmY2RTfZ3wi9UZ9wNV89PlJSzvhVniEWys=', 
 likes: 900, hashTagh: ['Bridal','Ramesh'], content: 'Hello'),
 
 
 
  ];