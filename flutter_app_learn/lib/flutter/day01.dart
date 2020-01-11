//flutter开发环境搭建
//android studio  Xcode
//开启模拟器  open -abstract Simulator
//安装flutter
//1.使用第三方源安装  export PUB_HOSTED_URL=HTTPS://pub.flutter-io.cn
//export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
//追加环境变量  exportde PATH=~/Documnets/flutter/bin:$PATH

//ios工具链
//brew update
//brew install --HEAD usbmuxd
//brew link usbmuxd
//brew install --HEAD libimobiledevice
//brew install ideviceinstaller

//android studio 安装dart和flutter插件

//vs code 安装flutter扩展

//Dart语言的优势 支持AOT和JIT 支持内存分配与垃圾回收 dart单线程语言

//num bool String List和Map
//num只有64位的int 和 double 除了基本的+-*/ 以及位运算外  还有num的
//abs() round() 等方法来实现绝对值 取整的功能
//String 由UFT-16字符串组成  常量定义 final或const 表示变量在编译期间既能确定的值
//final运行时常量  const编译时常量
//编程语言的设计思想 如何表示信息 如何处理信息 可选命名参数
//继承父类和接口实现  接口实现必须重新声明成员变量和方法
//另一种来实现类的复用的方法是 Mixin 即混入 with关键字
//？ ？？=    ？？
//Dart 运算符复写机制  flutter的设计思想就是 一切皆Widget
//Widget Element同时持有Widget和RenderObject 布局 绘制 合成和渲染
//命令式编程强调精确控制过程细节 而声明式编程强调通过意图输出结果整体
//StatelessWidget 的构建过程 父widget是否能通过初始化参数完全控制其UI展示效果
//StatefulWidget 有状态组件 这些widget创建完成后 还要你关心响应数据变化来进行重绘
//State生命周期 start 构造方法 initState
//didChangeDependencies  didUpdateWidget setState  build  tree deactivate dispose end
//App状态 resumed inactive paused 可见 不活跃 后台的
//addPostFrameCallback实现单次绘制回调  addPersistentFrameCallback实现每次绘制结束后都进行回调
//可以用作FPS监测   Text textAlign剧中显示 style 显示的格式
//混合展示样式和单一样式的关键区别在于分片
//FloatingActionButton RaisedButton FlatButton
//UITableView和ListView在Flutter中
//InheritedWidget theme类就是实用这个实现的 Notification
//flutter路由管理 基本路由 命名路由 routes命名表 flutter中的UnknowRoute属性 对未知的路由标识符
//进行统一的收集 上报

//Animation AnimationController Listener
//动画从静止到动态 主要是靠人眼的视觉残留效果
//1 确定画面变化的规律 根据这个规律 设定动画周期 启动动画 定期获取当前动画的值 不断的微调 重绘画面
//animation 提供动画数据 controller控制动画 listener监听动画并重新渲染组件
//vsync防止动画不可见时白白浪费资源 震荡曲线 动画的最终渲染和生成 使用builder进行分离
//hero控件 使用AnimationBuilder 使动画和渲染隔离

//单线程模型怎么保证UI运行流畅  Dart语言的Event Loop处理机制 异步处理和并发编程的原理和使用方法
//Event Loop机制 Dart巨大的事件循环 在不断的轮询事件队列 取出事件
//异步任务 一个事件队列 一个微任务队列 先去查询微任务队列是否有事件 然后在去查询事件队列
//Dart为Event Queue的任务建立提供了一层封装 叫做Future Isolate实现多线程并发
//flutter的原生兼容通道 确定唯一的字符串标识符 来构造一个命名通道
//从原生页面跳转至flutter页面  如何统一管理原生页面和flutter页面跳转交互的混合导航线
//从flutter跳转至原生页面
//flutter 状态管理
//跨渲染引擎页面切换的关键在于  如何确保页面跳转的渲染体验一致性
//跨组件之间保持数据共享的关键在于 如何清晰的维护组件共用的数据状态
//依赖注入 即预先将资源放到程序中某个我们可以访问的地方，当需要使用这种
//资源时 直接去这个位置拿即可  无需关心资源是谁放进去的
//Provider是inheredWidget的语法糖 customer的child用来更新和状态无关的部分
//多状态的资源封装
//如何实现原生推送能力？
//flutter的编译模式 debug release profile
//分离配置环境 为不同的运行环境提供更为统一的配置
//抽象配置 配置多入口 读配置 和 编译打包 asset在release下不会触发
//线上出现问题 如何异常捕获和信息采集 flutter异常 使用trycatch 捕获异常并上报
//App异常的捕获方式 同步异常 trycatch 异步异常 future提供的catchError
//runZoned() 内的错误 可以通过 onError()来获取异常
//Framework异常的捕获方式  ErrorWidget 的错误页面展示 ErrorWidget.builder = (FlutterErrorDetails flutter){return Scaffold()'};
//FlutterError.onError 进行错误转发到 Zone中 FlutterCrashPlugin 原生异常上报
//线上质量  页面异常率 页面帧率 页面加载时长  页面异常率=异常发生次数/整体页面PV数   异常总次数除以页面打开次数
//页面帧率 FPS  window的注册 onReportTiming方法中进行FPS上报处理
//页面加载时长 页面可见时间减去页面创建时间  flutter工程结构
//DRY 代码组件化和平台化  单一性原则  抽象化原则 稳定性原则 自完备性
//剥离基础功能 抽象业务模块 最小化服务能力
//基础功能 网络请求 组件中间件 UI组件
//模块抽象化 最小化对外暴露的能力
//平台化 UI控件  业务模块   基础功能  基础业务功能 单向依赖  下层依赖上层时使用中间层的方式
//Travis CI 在线托管的持续交付服务
//混合开发框架 将双方抽象为彼此对应技术栈的依赖 从而实现分层管理的
//即将原生对flutter的依赖抽象为依赖flutter模块所封装原生组件，而
//flutter对原生的依赖则抽象为依赖插件所封装的原生行为
//flutter混合开发工作流 需求阶段 方案阶段 开发阶段 发布阶段 线上运维阶段
//其实是一种抽象的工作流程 和工程化关联最为紧密的是开发阶段和发布阶段
//为什么美团商家业务大前端团队技术负责人






//运气
