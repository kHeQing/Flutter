# Flutter
学习flutter记录

### Flutter知识

#### 为什么Flutter APP的Android安装包比iOS安装包小的主要原因？

Flutter使用Skia作为其2D渲染引擎。

Skia是Google的一个2D图形处理函数库，包含字型、坐标转换，以及点阵图都有高效能且简洁的表现，Skia是跨平台的，并提供了非常友好的API。

目前Google Chrome浏览器和Android均采用Skia作为其绘图引擎，值得一提的是，由于Android系统已经内置了Skia，所以Flutter在打包APK(Android应用安装包)时，不需要再将Skia打入APK中。

但iOS系统并未内置Skia，所以构建iPA时，也必须将Skia一起打包，这也是为什么Flutter APP的Android安装包比iOS安装包小的主要原因。

#### JIT和AOT

目前，程序主要有两种运行方式：静态编译与动态解释。

静态编译的程序在执行前全部被翻译为机器码，通常将这种类型称为**AOT** （Ahead of time）即 “提前编译”；

而解释执行的则是一句一句边翻译边运行，通常将这种类型称为**JIT**（Just-in-time）即“即时编译”。

AOT程序的典型代表是用C/C++开发的应用，它们必须在执行前编译成机器码，而JIT的代表则非常多，如JavaScript、python等，事实上，所有脚本语言都支持JIT模式。

但需要注意的是JIT和AOT指的是程序运行方式，和编程语言并非强关联的，有些语言既可以以JIT方式运行也可以以AOT方式运行，如Java、Python，它们可以在第一次执行时编译成中间字节码、然后在之后执行时可以直接执行字节码。

也许有人会说，中间字节码并非机器码，在程序执行时仍然需要动态将字节码转为机器码，是的，这没有错，不过通常我们区分是否为AOT的标准就是看代码在执行之前是否需要编译，只要需要编译，无论其编译产物是字节码还是机器码，都属于AOT。

在此，大家不必纠结于概念，概念就是为了传达精神而发明的，只要大家能够理解其原理即可，得其神忘其形。

#### Flutter开发效率高

Dart运行时和编译器支持Flutter的两个关键特性的组合：

**基于JIT的快速开发周期**：Flutter在开发阶段采用，采用JIT模式，这样就避免了每次改动都要进行编译，极大的节省了开发时间；

**基于AOT的发布包**: Flutter在发布时可以通过AOT生成高效的ARM代码以保证应用性能。而JavaScript则不具有这个能力。


### 环境搭建注意点

#### 问题1： Flutter卡在Running "flutter packages get"

```
// 添加环境变量
vim ~/.bash_profile

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

// 添加完成后
source ~/.bash_profile
```

#### 问题2：使用Android studio 新建 Flutter项目卡住 

```
flutter create pageview_test
```
命令行创建，Android Studio 打开

#### Dart

```Dart
void main() =>runApp(MyApp());
```

这是一个函数，函数体只有一行，可以用 `=>` 来省略`{}`，注意只有函数体只有一行时才可以这么使用。

#### 启动模拟器

- ios `open -a Simulator`  
- android 
   - 在 `.bash_profile` 中配置环境变量
   		
   		```
   		export ANDROID_SDK_ROOT=/Users/[电脑用户名]/Library/Android/sdk
       export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$PATH
   		```
   		配置完成后 `source ~/.bash_profile` 刷新一下
   		
   	- 使用 `emulator -list-avds` 命令 查看 安装的模拟器列表
   	- 使用 `emulator @模拟器名称` 或者 `emulator -avd 模拟器名称` 打开模拟器
   	- 写个脚本文件可以快捷打开
   	  - 进入tools文件夹   `/Users/[电脑用户名]/Library/Android/sdk/tools` 
   	  - 创建 `emu.sh` 文件  
   	    
   	    ```
       emulator -avd 本机的模拟器名称
   	    ```
   	  - `emu.sh` 启动模拟器
   	  - 遇到 `permission denied` 错误 没有权限  
   	     进入到tools文件夹 执行 `chmod 777 emu.sh` 即可


### Flutter 常用组件

#### Text Widget

```dart
// Text Widget
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        body: Center(
          child: Text(
            '今天是个好日子，心想的事儿都能成，今天是个好日子，赶上了春风咱笑开颜。',
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),
        ),
      ),
    );
  }
}
```

#### Contain Widget

```dart
// Container Widget
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Text('今天是个好日子今天是个好日子',style: TextStyle(fontSize: 40.0),),
            alignment: Alignment.center,
            // width: 300.0,
            // height: 200.0,
            // color: Colors.lightBlue,
            // padding: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 0),
            // margin: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.fromLTRB(10.0, 200.0, 10.0, 200.0),
            // 注意设置了decoration就不要在设置color属性了，会冲突
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple],
              ),
              border: Border.all(
                width: 4.0,
                color: Colors.red
              )
            ),
          ),
        ),
      ),
    );
  }
}
```

#### Image Widget

```dart
// Image Widget
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1690699292,1481547313&fm=27&gp=0.jpg',
              scale: 1.0,
              fit: BoxFit.contain,
              color: Colors.greenAccent,// 只设置color没有意义
              colorBlendMode: BlendMode.darken,// 设置混合模式
              repeat: ImageRepeat.repeat,
            ),
            width: 375.0,
            height: 400.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
```

#### ListView Widget

竖向

```dart
// ListView Widget
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'He Qing Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
        ),
        body: ListView(
          children: <Widget>[
            // ListTile(
            //   leading: Icon(Icons.access_time),
            //   title: Text('access_time'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.account_balance),
            //   title: Text('account_balance'),
            // ),
            Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1094983219,2445956258&fm=27&gp=0.jpg"),
            Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1094983219,2445956258&fm=27&gp=0.jpg'),
            Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1094983219,2445956258&fm=27&gp=0.jpg')
          ],
        ),
      ),
    );
  }
}
```

横向 封装自己的横向listview组件 

```dart
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
```
tips: `vscode` 整体缩进快捷键 `tab` 右移 `shift + tab` 左移

动态列表

```dart
// Dynamic List Widget
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: List<String>.generate(1000, (i) => 'Item $i')
));

class MyApp extends StatelessWidget {

  final List<String> items;
  MyApp({Key key, @required this.items}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
```

#### GridView Widget

```dart
// GridView Widget
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Widget',
      home: Scaffold(
        // body: GridView.count(
        //   padding: EdgeInsets.all(20.0),
        //   crossAxisSpacing: 10.0,
        //   crossAxisCount: 3,
        //   children: <Widget>[
        //     Text('he qing'),
        //     Text('今天是个好日子'),
        //     Text('心想的事儿都能成'),
        //     Text('今天明天都是好日子'),
        //     Text('咱们老百姓'),
        //     Text('今天真高兴'),
        //   ],
        // ),
        body: GridView(
          padding: EdgeInsets.all(2.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            childAspectRatio: 0.7, // 宽高比
            crossAxisSpacing: 2.0,
          ),
          children: <Widget>[
            Image.network('http://pic25.nipic.com/20121205/10197997_003647426000_2.jpg',fit: BoxFit.fitHeight,),
            Image.network('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1986179278,1118313821&fm=27&gp=0.jpg',fit: BoxFit.fitHeight,),
            Image.network('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1979198230,3799788659&fm=27&gp=0.jpg',fit: BoxFit.fitHeight,),
            Image.network('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3300305952,1328708913&fm=27&gp=0.jpg',fit: BoxFit.fitHeight,),
            Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2153937626,1074119156&fm=27&gp=0.jpg',fit: BoxFit.fitHeight,),
            Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2968231382,1111539856&fm=27&gp=0.jpg',fit: BoxFit.fitHeight,),
            Image.network('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1451330793,2242997567&fm=27&gp=0.jpg',fit: BoxFit.fitHeight,),
          ],
        ),
      ),
    );
  }
}
```


### Flutter 布局

#### 水平布局Row

灵活布局 和 不灵活布局

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平方向布局'),
        ),
        body: Row(
          children: <Widget>[
            //不灵活水平布局
            // RaisedButton(
            //   onPressed: (){},
            //   color: Colors.redAccent,
            //   child: Text('红色按钮'),
            // ),
            // RaisedButton(
            //   onPressed: (){},
            //   color: Colors.blueAccent,
            //   child: Text('蓝色按钮'),
            // ),
            // RaisedButton(
            //   onPressed: (){},
            //   color: Colors.orangeAccent,
            //   child: Text('黄色按钮'),
            // )

            // 灵活水平布局
            // Expanded(
            //   child: RaisedButton(
            //     onPressed: (){},
            //     color: Colors.redAccent,
            //     child: Text('红色按钮'),
            //   ),
            // ),
            // Expanded(
            //   child: RaisedButton(
            //     onPressed: (){},
            //     color: Colors.blueAccent,
            //     child: Text('蓝色按钮'),
            //   ),
            // ),
            // Expanded(
            //   child: RaisedButton(
            //     onPressed: (){},
            //     color: Colors.orangeAccent,
            //     child: Text('黄色按钮'),
            //   ),
            // ),

            // 灵活水平布局 不灵活水平布局 混用
            RaisedButton(
              onPressed: (){},
              color: Colors.redAccent,
              child: Text('红色按钮'),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: (){},
                color: Colors.blueAccent,
                child: Text('蓝色按钮'),
              ),
            ),
            RaisedButton(
              onPressed: (){},
              color: Colors.orangeAccent,
              child: Text('黄色按钮'),
            ),
          ],
        ),
      ),
    );
  }
}
```

#### 