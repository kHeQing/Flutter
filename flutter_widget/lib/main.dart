// ListView Widget 2 横向
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200.0,
            child: MyList()
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 180.0,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 180.0,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 180.0,
                  color: Colors.pinkAccent,
                ),
              ],
    );
  }
}


// // ListView Widget 1 竖向
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class  MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'He Qing Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ListView Widget'),
//         ),
//         body: ListView(
//           children: <Widget>[
//             // ListTile(
//             //   leading: Icon(Icons.access_time),
//             //   title: Text('access_time'),
//             // ),
//             // ListTile(
//             //   leading: Icon(Icons.account_balance),
//             //   title: Text('account_balance'),
//             // ),
//             Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1094983219,2445956258&fm=27&gp=0.jpg"),
//             Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1094983219,2445956258&fm=27&gp=0.jpg'),
//             Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1094983219,2445956258&fm=27&gp=0.jpg')
//           ],
//         ),
//       ),
//     );
//   }
// }



// // Image Widget
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Widget',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: new Image.network(
//               'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1690699292,1481547313&fm=27&gp=0.jpg',
//               scale: 1.0,
//               fit: BoxFit.contain,
//               color: Colors.greenAccent,// 只设置color没有意义
//               colorBlendMode: BlendMode.darken,// 设置混合模式
//               repeat: ImageRepeat.repeat,
//             ),
//             width: 375.0,
//             height: 400.0,
//             color: Colors.lightBlue,
//           ),
//         ),
//       ),
//     );
//   }
// }




// // Container Widget
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Container Widget',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: new Text('今天是个好日子今天是个好日子',style: TextStyle(fontSize: 40.0),),
//             alignment: Alignment.center,
//             // width: 300.0,
//             // height: 200.0,
//             // color: Colors.lightBlue,
//             // padding: const EdgeInsets.all(10.0),
//             padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 0),
//             // margin: const EdgeInsets.all(10.0),
//             margin: const EdgeInsets.fromLTRB(10.0, 200.0, 10.0, 200.0),
//             // 注意设置了decoration就不要在设置color属性了，会冲突
//             decoration: new BoxDecoration(
//               gradient: const LinearGradient(
//                 colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple],
//               ),
//               border: Border.all(
//                 width: 4.0,
//                 color: Colors.red
//               )
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// // Text Widget
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Text Widget',
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             '今天是个好日子，心想的事儿都能成，今天是个好日子，赶上了春风咱笑开颜。',
//             textAlign: TextAlign.left,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(
//               fontSize: 25.0,
//               color: Color.fromARGB(255, 255, 150, 150),
//               decoration: TextDecoration.underline,
//               decorationStyle: TextDecorationStyle.dotted,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }