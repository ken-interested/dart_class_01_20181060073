// 一 Define a simple Dart function.
   void printInteger(int aNumber) {
   print('The number is $aNumber.'); // Print to console.
   }

// This is where the app starts executing.
   void main() {
   var number = 42; // Declare and initialize a variable.
   printInteger(number);
   }
/* 2.代码片段
   //注释  void   int   42   print()   '...'  $variableName  main  var

   二 important concepts
   对象和类 

   三 Keyword
   abstract 2	else	import 2	show 1
   as 2	enum	in	static 2
   assert	export 2	interface 2	super
   async 1	extends	is	switch
   await 3	extension 2	late 2	sync 1
   break	external 2	library 2	this
   case	factory 2	mixin 2	throw
   catch	false	new	true
   class	final	null	try
   const	finally	on 1	typedef 2
   continue	for	operator 2	where
   covariant 2	Function 2	part 2	void
   default	get 2	required 2	while
   deferred 2	hide 1	rethrow	with
   of the	if	return	yield 3
   dynamic 2	implements 2	set 2	

   四 Variables
   var name = 'Ken';
   Object name = 'Ken'
   String name = 'ken'
  
   五 Default value
   int? lineCount;
   assert(lineCount == null);
   int lineCount = 0;
   int lineCount;

   if (weLikeToCount) {
       lineCount = countLines();
   } else {
     lineCount = 0;
   }

   print(lineCount);
   
   六 late  Variables
   late String description;
 
   void main() {
    description = 'Feijoada!';
    print(description);
   }
  
   七 Final and const
   final name = 'Bob'; // Without a type annotation
   final String nickname = 'Bobby';
   
   name = 'Alice'; // Error: a final variable can only be set once.
   
   const bar = 1000000; // Unit of pressure (dynes/cm2)
   const double atm = 1.01325 * bar; // Standard atmosphere
   
   var foo = const [];
   final bar = const [];
   const baz = []; // Equivalent to `const []`

   foo = [1, 2, 3]; // Was const []

   baz = [42]; // Error: Constant variables can't be assigned a value.

   const Object i = 3; // Where i is a const Object with an int value...
   const list = [i as int]; // Use a typecast.
   const map = {if (i is int) i: 'int'}; // Use is and collection if.
   const set = {if (list is List<int>) ...list}; // ...and a spread.

   八 内置类型
   1.Numbers int
             double
    
    定义整数字面量:
    var x = 1;
    var hex = 0xDEADBEEF;
    var exponent = 8e5;

    定义浮点数字面量:
    var y = 1.1;
    var exponents = 1.42e5;

    num x = 1; // x can have both int and double values
    x += 2.5;
    
    整型字面量将会在必要的时候自动转换成浮点数字面量：
    double z = 1; // Equivalent to double z = 1.0.

    字符串和数字之间转换的方式:
    // String -> int
    var one = int.parse('1');
    assert(one == 1);

    // String -> double
    var onePointOne = double.parse('1.1');
    assert(onePointOne == 1.1);

    // int -> String
    String oneAsString = 1.toString();
    assert(oneAsString == '1');

    // double -> String
    String piAsString = 3.14159.toStringAsFixed(2);
    assert(piAsString == '3.14');

  2.String
  var s1 = '使用单引号创建字符串字面量。';
  var s2 = "双引号也可以用于创建字符串字面量。";
  var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
  var s4 = "而在双引号中则不需要使用转义与单引号冲突的字符串：'";

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');
  
  使用 运算符或并列放置多个字符串来连接字符串：+
  var s1 = '可以拼接'
           '字符串'
           "即便它们不在同一行。";
  
  assert(s1 == '可以拼接字符串即便它们不在同一行。');

  var s2 = '使用加号 + 运算符' + '也可以达到相同的效果。';
  assert(s2 == '使用加号 + 运算符也可以达到相同的效果。');

  使用三个单引号或者三个双引号也能创建多行字符串：
  var s1 = '''
  你可以像这样创建多行字符串。
  ''';

  var s2 = """这也是一个多行字符串。""";

  var s = r'在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。';

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';

  九 布尔类型
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // Check for null.
  var unicorn;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  十 Lists
  var list = [1, 2, 3];

  var list = [
  'Car',
  'Boat',
  'Plane',
  ];

  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);  

  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.

  使用扩展操作符（）将一个 List 中的所有元素插入到另一个 List 中：
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);

  如果扩展操作符右边可能为 null ，你可以使用 null-aware 扩展操作符（）来避免产生异常：...?
  var list;
  var list2 = [0, ...?list];
  assert(list2.length == 1);

  集合中的 if 来创建一个 List 的示例
  var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet'
  ];

  集合中的 for 将列表中的元素修改后添加到另一个列表中：
  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];
  assert(listOfStrings[1] == '#1');

  十一 Sets
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  使用 方法或 方法向已存在的 Set 中添加项目：add()addAll()
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  使用 可以获取 Set 中元素的数量：.length
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  可以在 Set 变量前添加 关键字创建一个 Set 编译时常量：const
  final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
  ;
  
  十二 Msps
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  向现有的 Map 中添加键值对与 JavaScript 的操作类似：
  var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds'; // Add a key-value pair

  从一个 Map 中获取一个值的操作也与 JavaScript 类似：
  var gifts = {'first': 'partridge'};
  assert(gifts['first'] == 'partridge');

  如果检索的 Key 不存在于 Map 中则会返回一个 null：
  var gifts = {'first': 'partridge'};
  assert(gifts['fifth'] == null); 

  使用 可以获取 Map 中键值对的数量：.length
  var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds';
  assert(gifts.length == 2);

  在一个 Map 字面量前添加 关键字可以创建一个 Map 编译时常量：const
  final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
  };

  // constantMap[2] = 'Helium'; // This line will cause an error.

  十三 Runes and grapheme clusters
  import 'package:characters/characters.dart';
  ...
  var hi = 'Hi 🇩🇰';
  print(hi);
  print('The end of the string: ${hi.substring(hi.length - 1)}');
  print('The last character: ${hi.characters.last}\n');

  十四 Symbols
  可以使用在标识符前加 前缀来获取 Symbol：#

  十五 函数
  定义一个函数的例子：
  bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
  }

  isNoble(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
  }  

  bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

  十六 参数
  函数可以有两种形式的参数：必要参数 和 可选参数。必要参数定义在参数列表前面，可选参数则定义在必要参数后面。可选参数可以是 命名的 或 位置的。

  十七 命名参数
  enableFlags(bold: true, hidden: false);
  /// Sets the [bold] and [hidden] flags ...
  void enableFlags({bool? bold, bool? hidden}) {...}
  const Scrollbar({Key? key, required Widget child})

  十八 可选的位置参数
  String say(String from, String msg, [String? device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

  下面是不使用可选参数调用上述函数的示例
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');

  下面是使用可选参数调用上述函数的示例：
  assert(say('Bob', 'Howdy', 'smoke signal') ==
    'Bob says Howdy with a smoke signal');

  十九 默认参数值
  /// Sets the [bold] and [hidden] flags ...
  void enableFlags({bool bold = false, bool hidden = false}) {...}

  // bold will be true; hidden will be false.
  enableFlags(bold: true);

  如何为位置参数设置默认值：
  String say(String from, String msg,
     [String device = 'carrier pigeon']) {
    var result = '$from says $msg with a $device';
    return result;
  }

   assert(say('Bob', 'Howdy') ==
    'Bob says Howdy with a carrier pigeon');


  void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
   print('list:  $list');
   print('gifts: $gifts');
   }
  
  二十 main()函数
  
  void main() {
  print('Hello, World!');
  }

  // Run the app like this: dart args.dart 1 test
  void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
  }

  函数是一级对象
  可以将函数作为参数传递给另一个函数。
  void printElement(int element) {
  print(element);
  }

  var list = [1, 2, 3];

  // Pass printElement as a parameter.
  list.forEach(printElement);

  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');

  二十一 匿名函数
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  二十二 词法作用域
  bool topLevel = true;

  void main() {
    var insideMain = true;

    void myFunction() {
      var insideFunction = true;

      void nestedFunction() {
        var insideNestedFunction = true;

        assert(topLevel);
        assert(insideMain);
        assert(insideFunction);
        assert(insideNestedFunction);
      }
     }
   }

  二十三 词法闭包
  /// Returns a function that adds [addBy] to the
  /// function's argument.
  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }

  void main() {
    // Create a function that adds 2.
    var add2 = makeAdder(2);

    // Create a function that adds 4.
    var add4 = makeAdder(4);

    assert(add2(3) == 5);
    assert(add4(3) == 7);
  }

  二十四 测试函数是否相等
  下面是顶级函数，静态方法和示例方法相等性的测试示例：
  void foo() {} // A top-level function

  class A {
    static void bar() {} // A static method
    void baz() {} // An instance method
  }

  void main() {
    Function x;

    // Comparing top-level functions.
    x = foo;
    assert(foo == x);

    // Comparing static methods.
    x = A.bar;
    assert(A.bar == x);

    // Comparing instance methods.
    var v = A(); // Instance #1 of A
    var w = A(); // Instance #2 of A
    var y = w;
    x = w.baz;

    // These closures refer to the same instance (#2),
    // so they're equal.
    assert(y.baz == x);

    // These closures refer to different instances,
    // so they're unequal.
    assert(v.baz != w.baz);
  }

  二十五 返回值
  foo() {}

  assert(foo() == null);

  二十六 运算符
  描述                 运算符

  一元后缀               表达式++ 表达式-- () [] . ?.

  一元前缀               -表达式 !表达式 ~表达式 ++表达式 --表达式

  乘除法                 * / % ~/

  加减法                 + -

  位运算                 << >> >>>

  二进制与                &

  二进制异或              ^

  二进制或                |

  关系和类型测试          >= > <= < as is is!

  相等判断                == !=

  逻辑与                  &&

  逻辑或                  ||

  空判断                  ??

  条件表达式              表达式 1 ? 表达式 2 : 表达式 3

  级联                    ..    ?..

                          .. ?..

  赋值                    = *= /= += -= &= ^= 等等……
  
  算术运算符：
  +	                      加
  –	                      减
  -表达式	                一元负, 也可以作为反转（反转表达式的符号）
  *	                      乘
  /	                      除  
  ~/	                    除并取整
  %	                      取模
  
  关系运算符：
  ==                      相等
  !=	                    不等
  >	                      大于
  <	                      小于
  >=	                    大于等于
  <=	                    小于等于
  
  类型判断运算符：
  as	                    类型转换（也用作指定 类前缀)）
  is	                    如果对象是指定类型则返回 true
  is!                     如果对象是指定类型则返回 false

  赋值运算符：
  =??=

  符合运算符的原理：
  假设有运算符 op：	a op= b	a = a op b
  示例：	a += b	a = a + b

  逻辑运算符：
  !表达式	                对表达式结果取反（即将 true 变为 false，false 变为 true）
  ||	                    逻辑或
  &&	                    逻辑与

  按位和移位运算符：
  &	                      按位与
  |	                      按位或
  ^	                      按位异或
  ~表达式	                按位取反（即将 “0” 变为 “1”，“1” 变为 “0”）
  <<	                    位左移
  >>	                    位右移
  >>>	                    无符号右移

  条件表达式
  var visibility = isPublic ? 'public' : 'private';
  String playerName(String? name) => name ?? 'Guest';

  // Slightly longer version uses ?: operator.
  String playerName(String? name) => name != null ? name : 'Guest';

  // Very long version uses if-else statement.
  String playerName(String? name) {
    if (name != null) {
      return name;
    } else {
      return 'Guest';
    }
  }
  
  级联运算符
  ar paint = Paint()
  ..color = Colors.black
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 5.0;

  二十七 流程控制语句
  if 和 else

  for 循环
 
  while 和 - 循环dowhile

  break 和 continue

  switch 和 case

  assert

  For 循环
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }

  While 和 Do-While
  
  while (!isDone()) {
  doSomething();
  }
  
  do {
  printLine();
  } while (!atEndOfPage());

  Break 和 Continue
  
  while (true) {
   if (shutDownRequested()) break;
   processIncomingRequests();
  }
  
  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate.yearsExperience < 5) {
      continue;
    }
    candidate.interview();
  }
 
  Switch 和 Case
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      break;
    case 'PENDING':
      executePending();
      break;
    case 'APPROVED':
      executeApproved();
      break;
    case 'DENIED':
      executeDenied();
      break;
    case 'OPEN':
      executeOpen();
      break;
    default:
      executeUnknown();
  }

  Dart 支持空的 语句，允许其以 fall-through 的形式执行。case
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED': // Empty case falls through.
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      executeNowClosed();
      break;
  }

  在非空 语句中想要实现 fall-through 的形式，可以使用 语句配合 label 的方式实现:casecontinue
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      continue nowClosed;
    // Continues executing at the nowClosed label.

    nowClosed:
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      executeNowClosed();
      break;
  }

  断言
  // Make sure the variable has a non-null value.
  assert(text != null);

  // Make sure the value is less than 100.
  assert(number < 100);

  // Make sure this is an https URL.
  assert(urlString.startsWith('https'));

  assert 的第二个参数可以为其添加一个字符串消息。
  assert(urlString.startsWith('https'),
    'URL ($urlString) should start with "https".');

  二十八 异常
  关于抛出或者 引发 异常的示例：
  throw FormatException('Expected at least 1 section');
  你也可以抛出任意的对象：
  throw 'Out of llamas!';

  捕获异常
  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    buyMoreLlamas();
  }

  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    // A specific exception
    buyMoreLlamas();
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
  }

  try {
    // ···
  } on Exception catch (e) {
    print('Exception details:\n $e');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }

  关键字 可以将捕获的异常再次抛出：rethrow
  void misbehave() {
    try {
      dynamic foo = true;
      print(foo++); // Runtime error
    } catch (e) {
      print('misbehave() partially handled ${e.runtimeType}.');
      rethrow; // Allow callers to see the exception.
    }
  }

  void main() {
    try {
      misbehave();
    } catch (e) {
      print('main() finished handling ${e.runtimeType}.');
    }
  }

  Finally
  无论是否抛出异常， 语句始终执行，如果没有指定 语句来捕获异常，则异常会在执行完 语句后抛出：finallycatchfinally
  try {
    breedMoreLlamas();
  } finally {
    // Always clean up, even if an exception is thrown.
    cleanLlamaStalls();
  }

  finally 语句会在任何匹配的 语句后执行：catch
  try {
    breedMoreLlamas();
  } catch (e) {
    print('Error: $e'); // Handle the exception first.
  } finally {
    cleanLlamaStalls(); // Then clean up.
  }

  二十九 类
  对象的 成员 由函数和数据（即 方法 和 实例变量）组成。方法的 调用 要通过对象来完成，这种方式可以访问对象的函数和数据。
  使用（）来访问对象的实例变量或方法：.
  var p = Point(2, 2);

  // Get the value of y.
  assert(p.y == 2);

  // Invoke distanceTo() on p.
  double distance = p.distanceTo(Point(4, 4));

  使用 代替 可以避免因为左边表达式为 null 而导致的问题：?..
  // If p is non-null, set a variable equal to its y value.
  var a = p?.y;

  使用构造函数
  可以使用 构造函数 来创建一个对象。构造函数的命名方式可以为 或 的形式。例如下述代码分别使用 和 两种构造器创建了 对象：类名 类名 . 标识符
  var p1 = Point(2, 2);
  var p2 = Point.fromJson({'x': 1, 'y': 2});

  var p1 = new Point(2, 2);
  var p2 = new Point.fromJson({'x': 1, 'y': 2});

  var p = const ImmutablePoint(2, 2);

  var a = const ImmutablePoint(1, 1);
  var b = const ImmutablePoint(1, 1);

  assert(identical(a, b)); // They are the same instance!

  // Lots of const keywords here.
  const pointAndLine = const {
    'point': const [const ImmutablePoint(0, 0)],
    'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
  };

  var a = const ImmutablePoint(1, 1); // Creates a constant
  var b = ImmutablePoint(1, 1); // Does NOT create a constant

  assert(!identical(a, b)); // NOT the same instance!

  获取对象的类型
  print('The type of a is ${a.runtimeType}');

  实例变量
  class Point {
    double? x; // Declare instance variable x, initially null.
    double? y; // Declare y, initially null.
    double z = 0; // Declare z, initially 0.
  }

  class Point {
    double? x; // Declare instance variable x, initially null.
    double? y; // Declare y, initially null.
  }

  void main() {
    var point = Point();
    point.x = 4; // Use the setter method for x.
    assert(point.x == 4); // Use the getter method for x.
    assert(point.y == null); // Values default to null.
  }

  class ProfileMark {
    final String name;
    final DateTime start = DateTime.now();

    ProfileMark(this.name);
    ProfileMark.unnamed() : name = '';
  }
  
  构造函数
  class Point {
    double x = 0;
    double y = 0;

    Point(double x, double y) {
      // There's a better way to do this, stay tuned.
      this.x = x;
      this.y = y;
    }
  }

  使用 关键字引用当前实例。this
  默认构造函数
  如果你没有声明构造函数，那么 Dart 会自动生成一个无参数的构造函数并且该构造函数会调用其父类的无参数构造方法。

  构造函数不被继承
  子类不会继承父类的构造函数，如果子类没有声明构造函数，那么只会有一个默认无参数的构造函数。

  命名式构造函数
  可以为一个类声明多个命名式构造函数来表达更明确的意图：

  const double xOrigin = 0;
  const double yOrigin = 0;

  class Point {
    double x = 0;
    double y = 0;

    Point(this.x, this.y);

    // Named constructor
    Point.origin()
        : x = xOrigin,
          y = yOrigin;
  }
  记住构造函数是不能被继承的，这将意味着子类不能继承父类的命名式构造函数，如果你想在子类中提供一个与父类命名构造函数名字一样的命名构造函数，则需要在子类中显式地声明。

  调用父类非默认构造函数
  默认情况下，子类的构造函数会调用父类的匿名无参数构造方法，并且该调用会在子类构造函数的函数体代码执行前，如果子类构造函数还有一个 初始化列表，那么该初始化列表会在调用父类的该构造函数之前被执行，总的来说，这三者的调用顺序如下：

  初始化列表

  父类的无参数构造函数

  当前类的构造函数

  如果父类没有匿名无参数构造函数，那么子类必须调用父类的其中一个构造函数，为子类的构造函数指定一个父类的构造函数只需在构造函数体前使用（）指定。:
  
  初始化列表
  // Initializer list sets instance variables before
  // the constructor body runs.
  Point.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']! {
    print('In Point.fromJson(): ($x, $y)');
  }
  
  重定向构造函数
  class Point {
    double x, y;

    // The main constructor for this class.
    Point(this.x, this.y);

    // Delegates to the main constructor.
    Point.alongXAxis(double x) : this(x, 0);
  }

  常量构造函数
  class ImmutablePoint {
    static const ImmutablePoint origin = ImmutablePoint(0, 0);

    final double x, y;

    const ImmutablePoint(this.x, this.y);
  }

  工厂构造函数
  class Logger {
    final String name;
    bool mute = false;

    // _cache is library-private, thanks to
    // the _ in front of its name.
    static final Map<String, Logger> _cache =
        <String, Logger>{};

    factory Logger(String name) {
      return _cache.putIfAbsent(
          name, () => Logger._internal(name));
    }

    factory Logger.fromJson(Map<String, Object> json) {
      return Logger(json['name'].toString());
    }

    Logger._internal(this.name);

    void log(String msg) {
      if (!mute) print(msg);
    }
  }

  方法
  实例方法
  import 'dart:math';

  class Point {
    double x = 0;
    double y = 0;

    Point(this.x, this.y);

    double distanceTo(Point other) {
      var dx = x - other.x;
      var dy = y - other.y;
      return sqrt(dx * dx + dy * dy);
    }
  }

  操作符
  <	+	|	>>>
  >	/	^	[]
  <=	~/	&	[]=
  >=	*	<<	~
  –	%	>>	==

  Getter 和 Setter
  
  class Rectangle {
    double left, top, width, height;

    Rectangle(this.left, this.top, this.width, this.height);

    // Define two calculated properties: right and bottom.
    double get right => left + width;
    set right(double value) => left = value - width;
    double get bottom => top + height;
    set bottom(double value) => top = value - height;
  }

  void main() {
    var rect = Rectangle(3, 4, 20, 15);
    assert(rect.left == 3);
    rect.right = 12;
    assert(rect.left == -8);
  }

  抽象方法
  abstract class Doer {
    // Define instance variables and methods...

    void doSomething(); // Define an abstract method.
  }

  class EffectiveDoer extends Doer {
    void doSomething() {
      // Provide an implementation, so the method is not abstract here...
    }
  }

  抽象类
  // This class is declared abstract and thus
  // can't be instantiated.
  abstract class AbstractContainer {
    // Define constructors, fields, methods...

    void updateChildren(); // Abstract method.
  }

  隐式接口
  // A person. The implicit interface contains greet().
  class Person {
    // In the interface, but visible only in this library.
    final String _name;

    // Not in the interface, since this is a constructor.
    Person(this._name);

    // In the interface.
    String greet(String who) => 'Hello, $who. I am $_name.';
  }

  // An implementation of the Person interface.
  class Impostor implements Person {
    String get _name => '';

    String greet(String who) => 'Hi $who. Do you know who I am?';
  }

  String greetBob(Person person) => person.greet('Bob');

  void main() {
    print(greetBob(Person('Kathy')));
    print(greetBob(Impostor()));
  }
  如果需要实现多个类接口，可以使用逗号分割每个接口类：
  class Point implements Comparable, Location {...}

  扩展一个类
  class Television {
    void turnOn() {
      _illuminateDisplay();
      _activateIrSensor();
    }
    // ···
  }

  class SmartTelevision extends Television {
    void turnOn() {
      super.turnOn();
      _bootNetworkInterface();
      _initializeMemory();
      _upgradeApps();
    }
    // ···
  }

  重写类成员
  class Television {
    // ···
    set contrast(int value) {...}
  }

  class SmartTelevision extends Television {
    @override
    set contrast(num value) {...}
    // ···
  }

  noSuchMethod 方法
  class A {
    // Unless you override noSuchMethod, using a
    // non-existent member results in a NoSuchMethodError.
    @override
    void noSuchMethod(Invocation invocation) {
      print('You tried to use a non-existent member: '
          '${invocation.memberName}');
    }
  }

  扩展方法
  import 'string_apis.dart';
  ...
  print('42'.padLeft(5)); // Use a String method.
  print('42'.parseInt()); // Use an extension method.

  枚举类型
  使用枚举
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);

  var aColor = Color.blue;

  switch (aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor); // 'Color.blue'
  }

  使用 Mixin 为类添加功能
  class Musician extends Performer with Musical {
    // ···
  }

  class Maestro extends Person
      with Musical, Aggressive, Demented {
    Maestro(String maestroName) {
      name = maestroName;
      canConduct = true;
    }
  }

  mixin Musical {
    bool canPlayPiano = false;
    bool canCompose = false;
    bool canConduct = false;

    void entertainMe() {
      if (canPlayPiano) {
        print('Playing piano');
      } else if (canConduct) {
        print('Waving hands');
      } else {
        print('Humming to self');
      }
    }
  }

  class Musician {
    // ...
  }
  mixin MusicalPerformer on Musician {
    // ...
  }
  class SingerDancer extends Musician with MusicalPerformer {
    // ...
  }

  类变量和方法
  静态变量
  class Queue {
    static const initialCapacity = 16;
    // ···
  }

  void main() {
    assert(Queue.initialCapacity == 16);
  }

  静态方法
  import 'dart:math';

  class Point {
    double x, y;
    Point(this.x, this.y);

    static double distanceBetween(Point a, Point b) {
      var dx = a.x - b.x;
      var dy = a.y - b.y;
      return sqrt(dx * dx + dy * dy);
    }
  }

  void main() {
    var a = Point(2, 2);
    var b = Point(4, 4);
    var distance = Point.distanceBetween(a, b);
    assert(2.8 < distance && distance < 2.9);
    print(distance);
  }

  三十 泛型
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  names.add(42); // Error

  abstract class ObjectCache {
    Object getByKey(String key);
    void setByKey(String key, Object value);
  }
 
  abstract class StringCache {
    String getByKey(String key);
    void setByKey(String key, String value);
  }

  abstract class Cache<T> {
    T getByKey(String key);
    void setByKey(String key, T value);
  }

  使用集合字面量
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  使用类型参数化的构造函数
  var nameSet = Set<String>.from(names);
  var views = Map<int, View>();

  泛型集合以及它们所包含的类型
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>); // true

  限制参数化类型
  class Foo<T extends Object> {
    // Any type provided to Foo for T must be non-nullable.
  }

  class Foo<T extends SomeBaseClass> {
    // Implementation goes here...
    String toString() => "Instance of 'Foo<$T>'";
  }

  class Extender extends SomeBaseClass {...}

  var someBaseClassFoo = Foo<SomeBaseClass>();
  var extenderFoo = Foo<Extender>();

  var foo = Foo();
  print(foo); // Instance of 'Foo<SomeBaseClass>'

  使用泛型方法
  T first<T>(List<T> ts) {
    // Do some initial work or error checking, then...
    T tmp = ts[0];
    // Do some additional checking or processing...
    return tmp;
  }

  库和可见性
  使用库
  import 'dart:html';
  URI 代表统一资源标识符。
  URL（统一资源定位符）是一种常见的 URI。

  指定库前缀
  import 'package:lib1/lib1.dart';
  import 'package:lib2/lib2.dart' as lib2;

  // Uses Element from lib1.
  Element element1 = Element();

  // Uses Element from lib2.
  lib2.Element element2 = lib2.Element();

  导入库的一部分
  // Import only foo.
  import 'package:lib1/lib1.dart' show foo;

  // Import all names EXCEPT foo.
  import 'package:lib2/lib2.dart' hide foo;

  延迟加载库
  延迟加载（也常称为 懒加载）允许应用在需要时再去加载代码库，下面是可能使用到延迟加载的场景：

  为了减少应用的初始化时间。

  处理 A/B 测试，比如测试各种算法的不同实现。

  加载很少会使用到的功能，比如可选的屏幕和对话框。

  实现库
  如何组织库的源文件。

  如何使用 命令。export

  何时使用 命令。part

  何时使用 命令。library

  如何使用导入和导出命令实现多平台的库支持。

  异步支持
  处理 Future
  await lookUpVersion();

  Future<void> checkVersion() async {
    var version = await lookUpVersion();
    // Do something with version
  }

  使用 、 以及 来处理使用 导致的异常：trycatchfinallyawait
  try {
    version = await lookUpVersion();
  } catch (e) {
    // React to inability to look up the version
  }
  
  var entrypoint = await findEntryPoint();
  var exitCode = await runExecutable(entrypoint, args);
  await flushThenExit(exitCode);

  Future<void> main() async {
  checkVersion();
  print('In main: version is ${await lookUpVersion()}');
}
  声明异步函数
  异步函数 是函数体由 关键字标记的函数。async
  String lookUpVersion() => '1.0.0';

  Future<String> lookUpVersion() async => '1.0.0';

  处理 Stream
  await for (varOrType identifier in expression) {
    // Executes each time the stream emits a value.
  }

  Future<void> main() async {
  // ...
  await for (final request in requestServer) {
    handleRequest(request);
  }
  // ...
  } 
  生成器
  Iterable<int> naturalsTo(int n) sync* {
    int k = 0;
    while (k < n) yield k++;
  }

  Stream<int> asynchronousNaturalsTo(int n) async* {
    int k = 0;
    while (k < n) yield k++;
  }
  Iterable<int> naturalsDownFrom(int n) sync* {
    if (n > 0) {
      yield n;
      yield* naturalsDownFrom(n - 1);
    }
  }

  可调用类 
  隔离区
  Typedefs
  元数据
  class Television {
    /// Use [turnOn] to turn the power on instead.
    @Deprecated('Use turnOn instead')
    void activate() {
      turnOn();
    }

    /// Turns the TV's power on.
    void turnOn() {...}
    // ···
  }

  library todo;

  class Todo {
    final String who;
    final String what;

    const Todo(this.who, this.what);
  }

  import 'todo.dart';

  @Todo('seth', 'make this do something')
  void doSomething() {
    print('do something');
  }

  注释
  单行注释
  void main() {
    // TODO: refactor into an AbstractLlamaGreetingFactory?
    print('Welcome to my Llama farm!');
  }

  多行注释
  多行注释以 开始，以 结尾。所有在 和 之间的内容均被编译器忽略（不会忽略文档注释），多行注释可以嵌套。/**//**/

  文档注释
  文档注释可以是多行注释，也可以是单行注释，文档注释以 或者 开始。在连续行上使用 与多行文档注释具有相同的效果。////**///






















