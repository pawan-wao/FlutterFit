import 'dart:ui';
class ModelData{
  static List<Item> item =[
    Item(image:'assets/images/image001.jpg', title:"Push ups and Walk", desc: '5 sets'),
    Item(image:'assets/images/image007.jpg', title:"Muscles and Raises", desc: '45 Minutes'),
    Item(image:'assets/images/image003.jpg', title:"Squat Kickback", desc: '65 seconds'),
    Item(image:'assets/images/image004.jpg', title:"Running and Leg lift", desc: '120 Minutes'),
    Item(image:'assets/images/image002.jpg', title:"Dips and Squats", desc: '10 sets'),
    Item(image:'assets/images/image002.jpg', title:"Abs and Plank", desc: '2 sets'),
    Item(image:'assets/images/image008.jpg', title:"Abs and Plank", desc: '2 sets'),


  ];
}

class Item{
  String? image;
  String title;
  String? desc;

  Item({required this.image, required this.title, this.desc});
}