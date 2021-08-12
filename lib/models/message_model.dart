import 'package:chat_module_flutter/constants/constants.dart';

class MessageItem {
  dynamic id;
  String? text;
  DateTime createdAt;
  User user;
  String? imagUrl;
  String? videoUrl;
  bool? send;
  bool? receive;

  MessageItem(
      {this.id,
      this.text,
      required this.createdAt,
      required this.user,
      this.imagUrl,
      this.videoUrl,
      this.send,
      this.receive});
}

class User {
  dynamic id;
  String? name;
  String? avatar;

  User({required this.id, this.name, this.avatar});
}

List<MessageItem> list = [
  MessageItem(
      user: User(id: '11', name: "Muhammad Jawad", avatar: image),
      id: '0',
      text: 'Hi Jawad',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '22', name: "Muhammad Arbas", avatar: image),
      id: '1',
      text: 'Hi Emily',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '11', name: "Muhammad Jawad", avatar: image),
      id: '2',
      text: 'Wassup?',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '22', name: "Muhammad Arbas", avatar: image),
      id: '3',
      text: 'Nothing special. Hows Your Job going?',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '11', name: "Muhammad Jawad", avatar: image),
      id: '4',
      text: 'its going great',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '11', name: "Muhammad Jawad", avatar: image),
      id: '5',
      text: 'Enjoying rainy weather....',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '11', name: "Muhammad Jawad", avatar: image),
      id: '6',
      text: '',
      createdAt: DateTime.now(),
      imagUrl: rainEnjoyImageUrl,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '22', name: "Muhammad Arbas", avatar: image),
      id: '7',
      text: 'hmm that nice. cool',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '22', name: "Muhammad Arbas", avatar: image),
      id: '8',
      text: 'Here we have sunny weather.....',
      createdAt: DateTime.now(),
      imagUrl: null,
      videoUrl: null,
      receive: true,
      send: true),
  MessageItem(
      user: User(id: '22', name: "Muhammad Arbas", avatar: image),
      id: '9',
      text: '',
      createdAt: DateTime.now(),
      imagUrl: sunnyWeatherImageUrl,
      videoUrl: null,
      receive: true,
      send: true),
];

/*
   setMessages([
      {
        _id: 1,
        text: 'Hello developer',
        createdAt: new Date(),
        user: {
          _id: 2,
          name: 'React Native',
          avatar: 'https://placeimg.com/140/140/any',
        },
        image: 'https://facebook.github.io/react/img/logo_og.png',
  // You can also add a video prop:
  video: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
  // Mark the message as sent, using one tick
  sent: true,
  // Mark the message as received, using two tick
  received: true,
  // Mark the message as pending with a clock loader
  pending: true,
  // Any additional custom parameters are passed through
      },
    ])


 _id: string | number
  text: string
  createdAt: Date | number
  user: User
  image?: string
  video?: string
  audio?: string
  system?: boolean
  sent?: boolean
  received?: boolean
  pending?: boolean
  quickReplies?: QuickReplies

   */
// var data = [
//   {
//     '_id': 0,
//     'text': 'Hello developer',
//     'createdAt': '22-03-2020',
//     'user': {
//       '_id': 11,
//       'name': 'React Native',
//       'avatar': 'https://placeimg.com/140/140/any',
//     },
//     'image': 'https://facebook.github.io/react/img/logo_og.png',
//     // You can also add a video prop:
//     'video':
//         'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
//     // Mark the message as sent, using one tick
//     'sent': true,
//     // Mark the message as received, using two tick
//     'received': true,
//     // Mark the message as pending with a clock loader
//     'pending': true,
//     // Any additional custom parameters are passed through
//   },
//   {
//     '_id': 1,
//     'text': 'Hello developer 2',
//     'createdAt': '22-03-2020',
//     'user': {
//       '_id': 22,
//       'name': 'React Native',
//       'avatar': 'https://placeimg.com/140/140/any',
//     },
//     'image': 'https://facebook.github.io/react/img/logo_og.png',
//     // You can also add a video prop:
//     'video':
//         'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
//     // Mark the message as sent, using one tick
//     'sent': true,
//     // Mark the message as received, using two tick
//     'received': true,
//     // Mark the message as pending with a clock loader
//     'pending': true,
//     // Any additional custom parameters are passed through
//   },
//   {
//     '_id': 2,
//     'text': 'Kysay ho ap',
//     'createdAt': '22-03-2020',
//     'user': {
//       '_id': 11,
//       'name': 'React Native',
//       'avatar': 'https://placeimg.com/140/140/any',
//     },
//   },
//   {
//     '_id': 3,
//     'text': 'Kya chal rh a aj kal?',
//     'createdAt': '22-03-2020',
//     'user': {
//       '_id': 11,
//       'name': 'React Native',
//       'avatar': 'https://placeimg.com/140/140/any',
//     },
//   },
//   {
//     '_id': 4,
//     'text': 'bro my thekh ap batao',
//     'createdAt': '22-03-2020',
//     'user': {
//       '_id': 22,
//       'name': 'React Native',
//       'avatar': 'https://placeimg.com/140/140/any',
//     },
//   },
// ];
