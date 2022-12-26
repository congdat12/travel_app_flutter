class HomeModel{
  String? image;
  String? title;
  String? name;
  String? subName;
  
  HomeModel();
}
List <HomeModel> homeModel = [
  HomeModel()..image = 'assets/images/image 1.png'
  ..name = 'Cafe Town'
  ..subName =  'South Africa Mountain Table'
  ..title = 'Japan',
  HomeModel()..image = 'assets/images/image 1 (2).png'
  ..name = 'London'
  ..subName = 'Big Ben is the name of a large bell in the center of the clock tower located north of the Palace of Westminster'
  ..title = 'America',
  HomeModel()..image = 'assets/images/image 3.png'
  ..name = 'United'
  ..subName = 'Ronaldo ve nuoc'
  ..title = 'United',
  
];
