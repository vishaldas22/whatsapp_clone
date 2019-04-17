class ChatModel{
  final String name;
  final String message;
  final String avatarUrl;
  final String time;

  ChatModel({this.name,this.message,this.avatarUrl,this.time});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Bishal Das",
      message: "Kaise ho bhai?",
      time: "15:30",
      avatarUrl:
      "https://scontent.fgau1-1.fna.fbcdn.net/v/t1.0-9/54520710_868924806780549_5715585440627556352_n.jpg?_nc_cat=104&_nc_ht=scontent.fgau1-1.fna&oh=c187b1a11a35a2be3ef0d5ee65ff9721&oe=5D3974CB"),
  new ChatModel(
      name: "Ashish",
      message: "Whats up bro?",
      time: "17:30",
      avatarUrl:
      "https://images.pexels.com/photos/2120097/pexels-photo-2120097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  new ChatModel(
      name: "Sannu",
      message: "Jaldi online aa pubg khelte hai",
      time: "5:00",
      avatarUrl:
      "https://images.pexels.com/photos/2116503/pexels-photo-2116503.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  new ChatModel(
      name: "Rahul",
      message: "Sab thik ho jayega dont worry!",
      time: "10:30",
      avatarUrl:
      "https://images.pexels.com/photos/2102891/pexels-photo-2102891.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  new ChatModel(
      name: "Prasun",
      message: "I'll be there in 5 mins",
      time: "12:30",
      avatarUrl:
      "https://images.pexels.com/photos/374044/pexels-photo-374044.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  new ChatModel(
      name: "Sonu bhai",
      message: "Kab aa rha hai?",
      time: "15:30",
      avatarUrl:
      "https://images.pexels.com/photos/594610/pexels-photo-594610.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
];