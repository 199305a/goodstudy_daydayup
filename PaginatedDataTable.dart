

//PaginatedDataTable  rowsPerPage 每页个数 getRow 在最后进行包裹

//CollapsibleBody

//DualHeaderWithHint FormField

//FormField

//LeaveBehindItem
//




// g1920     g3164  g4196  g1924   g1956
//
//      k152  z164 d310 d306
//战略的目的就是提升能力 有能力去应对变化
//如果想赚大钱 必须创业 创业必须找到合伙人
//流程管理的必要性
//算法是用于解决特定问题的一系列的执行步骤
//Flutter 渲染库  渲染库的主要功能类有
//RendererBinding 是渲染树和flutter引擎的胶水层  负责管理帧重绘 窗口尺寸和渲染相关
//参数变化的监听
//RenderObject是渲染树中所有节点的基类 定义了布局 绘制和合成相关的接口
//RendererBox和三个常用的子类是RenderParagra RenderImage RenderFlex 是具体布局和绘制逻辑的实现类
//1。子对象通过 createRenderObject 创建不同类型的object对象 来组成渲染对象树
//2。对象树中的每个子对象都会接受父对象的Constraints参数，决定自己的大小 然后父对像就可以按照自己的逻辑
//来决定各个子对象的位置，完成布局过程 子对象的位置存储在父对象中 由父对象负责维护 flutter可以设置布局边界
//当边界内的任何对象发生重新布局时，不会影响边界外的对象
//布局完成后 渲染对象的每个节点都有了明确的尺寸和位置 flutter会把所有对象绘制到不同的图层上
//widgetsFlutterBinding  Widget StatelessWidget StatefulWidget RenderObjectWidget Element
//StatelessElement StatefulElement RenderObjectElement
// widgetsflutterBinding 是控件框架和引擎的胶水层 RenderObjectWidget的所有实现类则负责提供配置信息并创建
//具体的RenderObjectElement Element是flutter用来分离控件和真正渲染对象的中间层 控件用来描述对于的element属性
//RenderObjectElement持有真正的负责布局绘制和碰撞测试的RenderObject对象
//