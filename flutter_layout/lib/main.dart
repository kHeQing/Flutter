// 卡片组件布局
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('heqing'),
            subtitle: Text('dfsfdfdsfdssfdsfdfafdfsfdsfd'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          Divider(),
          ListTile(
            title: Text('heqing'),
            subtitle: Text('dfsfdfdsfdssfdsfdfafdfsfdsfd'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          Divider(),
          ListTile(
            title: Text('heqing'),
            subtitle: Text('dfsfdfdsfdssfdsfdfafdfsfdsfd'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          Divider(color: Colors.lightBlue,),
        ],
      ),
    );

    return MaterialApp(
      title: '卡片布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('卡片布局'),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}




// // Stack层叠布局
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var stack = Stack(
//       // alignment: FractionalOffset(0.5, 0.8),
//       children: <Widget>[
//         CircleAvatar(
//           backgroundImage: NetworkImage('http://img3.duitang.com/uploads/item/201605/07/20160507191419_J2m8R.thumb.700_0.jpeg'),
//           radius: 100.0,
//         ),
//         // Container(
//         //   decoration: BoxDecoration(
//         //     color: Colors.lightBlue,
//         //   ),
//         //   padding: EdgeInsets.all(5.0),
//         //   child: Text('好日字'),
//         // ),

//         // Stack的Positioned属性
//         Positioned(
//           left: 20.0,
//           top: 20.0,
//           child: Text('heqing'),
//         ),
//         Positioned(
//           right: 10.0,
//           bottom: 10.0,
//           child: Text('好日子'),
//         )
//       ],
//     );

//     return MaterialApp(
//       title: 'stackview',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('stackview'),
//         ),
//         body: Center(
//           child: stack,
//         ),
//       ),
//     );
//   }
// }




// // 垂直布局
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('垂直方向布局'),
//         ),
//         body: Column(
//           // children: <Widget>[
//           //   Text('今天是个好日子'),
//           //   Text('今天是个好日子今天是个好日子'),
//           //   Text('今天是个好日子'),
//           // ],
//           // // 对齐 默认 居中对齐
//           // // 副轴
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           // // 主轴
//           // mainAxisAlignment: MainAxisAlignment.center,

//           // children: <Widget>[
//           //   // 用center组件 可以使其水平居中
//           //   Center(child: Text('今天是个好日子')),
//           //   Center(child: Text('今天是个好日子今天是个好日子')),
//           //   Center(child: Text('今天是个好日子')),
//           // ],
//           // mainAxisAlignment: MainAxisAlignment.center,

//           children: <Widget>[
//             // Expanded 灵活布局。比如我们想让中间区域变大，而头部区域和底部根据文字所占空间进行显示。
//             Center(child: Text('今天是个好日子')),
//             Expanded(child: Text('今天是个好日子今天是个好日子')),
//             Center(child: Text('今天是个好日子'))
//           ],
//         ),
//       ),
//     );
//   }
// }




// 水平布局Row
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('水平方向布局'),
//         ),
//         body: Row(
//           children: <Widget>[
//             //不灵活水平布局
//             // RaisedButton(
//             //   onPressed: (){},
//             //   color: Colors.redAccent,
//             //   child: Text('红色按钮'),
//             // ),
//             // RaisedButton(
//             //   onPressed: (){},
//             //   color: Colors.blueAccent,
//             //   child: Text('蓝色按钮'),
//             // ),
//             // RaisedButton(
//             //   onPressed: (){},
//             //   color: Colors.orangeAccent,
//             //   child: Text('黄色按钮'),
//             // )

//             // 灵活水平布局
//             // Expanded(
//             //   child: RaisedButton(
//             //     onPressed: (){},
//             //     color: Colors.redAccent,
//             //     child: Text('红色按钮'),
//             //   ),
//             // ),
//             // Expanded(
//             //   child: RaisedButton(
//             //     onPressed: (){},
//             //     color: Colors.blueAccent,
//             //     child: Text('蓝色按钮'),
//             //   ),
//             // ),
//             // Expanded(
//             //   child: RaisedButton(
//             //     onPressed: (){},
//             //     color: Colors.orangeAccent,
//             //     child: Text('黄色按钮'),
//             //   ),
//             // ),

//             // 灵活水平布局 不灵活水平布局 混用
//             RaisedButton(
//               onPressed: (){},
//               color: Colors.redAccent,
//               child: Text('红色按钮'),
//             ),
//             Expanded(
//               child: RaisedButton(
//                 onPressed: (){},
//                 color: Colors.blueAccent,
//                 child: Text('蓝色按钮'),
//               ),
//             ),
//             RaisedButton(
//               onPressed: (){},
//               color: Colors.orangeAccent,
//               child: Text('黄色按钮'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }