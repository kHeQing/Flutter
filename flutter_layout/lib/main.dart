// 垂直布局
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直方向布局'),
        ),
        body: Column(
          // children: <Widget>[
          //   Text('今天是个好日子'),
          //   Text('今天是个好日子今天是个好日子'),
          //   Text('今天是个好日子'),
          // ],
          // // 对齐 默认 居中对齐
          // // 副轴
          // crossAxisAlignment: CrossAxisAlignment.start,
          // // 主轴
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 用center组件 可以使其水平居中
            Center(child: Text('今天是个好日子')),
            Center(child: Text('今天是个好日子今天是个好日子')),
            Center(child: Text('今天是个好日子')),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}




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