main(List<String> args) {
  //算数运算符
  var a = 10;
  var b = 2;
  var c = a * b;
  var d = a / b;
  var e = a % b;
  var f = a + b;
  var g = a - b;
  var h = a ++;
  var i = ++ a;
  var j = a --;
  var k = -- a;
  

  //关系运算符
  var result = b == a;
  var result2 = b != a;
  if (a >= b) {
    
  }
  else if (b >= a) {

  }

  //类型判定运算符
  //is as is!

  Person p = Person();

  Object temp = Person();
  (temp as Person).name = "vicky";

  Object temp2 = Student();
  //判断temp2是否实现了china的接口,如果是继承关系也是会打印true的
  if (temp2 is Object) {
    print("true");
  }
  else {
    print("false");
  }

  if (temp2 is! Person) {
    print("没有实现person接口");
  }
  else {
    print("实现person接口");
  }
  
  //赋值运算符
  int num = 10;
  int num2 = num;

  int num3 = 20;
  //当num3的值为空时,就会将num赋值给num3
  num3 ??= num;
  print(num3);

  //逻辑运算符
  // || 和 &&

  //条件表达式
  //三目 
  
  int num4 = 10;
  int num5 = 20;
  int num6 = -1;
  num6 > 0 ? num4 : num5;

  //??表达式 当设置的值为空时使用??后面的值
  int num7 = 10;
  int num8;
  int num9;
  num9 = num8 ?? num7;
  print(num9);

  //按位和移位运算符
  //&按位与
  //|按位或
  //^按位非
  //<<左移 翻倍
  //<<右移 * 1/2;
  int num10 = 10;
  print(num10 << 1);
  print(num10 >> 1);


}

abstract class  china {
  void speakChinese();
}

class Student implements china {
  @override
  void speakChinese() {
    // TODO: implement speakChinese
  }
}

class Person {
  var name;
}