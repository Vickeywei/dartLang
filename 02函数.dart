
main(List<String> args) {
  //函数的定义
  //返回值 方法名 参数列表
  //returnType 方法名 参数列表,返回值类型可以省略但是代码规范要求不能省略返回值类型
  int a = sum(10, 20);
  print(a);

  var b = (int num , int num2){
    return num + num2;
  };
  int c = b(10,20);
  int d = caculator((){
    return 20;
  });
  print(d);
  //函数有返回值并且带参数作为返回函数参数
  int f = caculator2((a, b) {
    return a * b;
  });
  print(f);
  //使用typedef重命名函数名
  int g = mutilpCaculator((int a,int b) {
    return a * b;
  });
  print(g);

  //函数作为函数返回值
  var h = mutilpCaculator2(40, 50);
  print(h());

  //箭头函数:如果函数的函数体部分只有一个表达式,可以使用箭头函数
  var printNum2 = (num5) => print(num5);
  printNum2(20);

  var list = [20,30,40,50];
  list.forEach((element) => print(element));

  //函数的参数
  //函数的参数分为required和option的.必填参数必须赋值,可选可以不用赋值,也可以为可选参数设置默认值
  //函数参数分为命名可选参数和位置可选参数
  //命名可选参数使用{}来包裹,{int age, int height};
  //位置可选参数使用[]来包裹,[int age, int height];

  printNum3(10);//如果不填参数会报错

  //位置可选参数
  printNum4(20,50);

  //命名可选参数
  printNum5(20,height : 50,age: 30);

  //函数参数的默认值:可以为函数的可选参数设置默认值使用参数类型 参数名 = value;
  //void printNum6(int num,{int age = 60,int height = 70}),赋值相应类型值即可




  //练习
  //合并数组函数作为返回值
  var lista = [1,10,20];
  var attach = attachList(lista, [2,4,6,7]);
  attach();
  print(lista);
  //拆分数组函数作为参数
  var str = compontArray((List a) {
    var aStr = "";
    a.forEach((element) {
      if (a.indexOf(element) != 0) {
       aStr = aStr + "," + element.toString();
      }
      else {
       aStr = aStr + element.toString();
      }
      print(aStr);
      
    });
    return aStr;
  });
  print(str);

}

//返回值 方法名 参数列表
sum(int num1, int num2) { //返回值类型省略
  return num1 + num2;
}
//dart中的函数不支持函数重载,虽然参数类型和名称不同,编译器还是会报错
int  sum2(double num4, double num5) { //返回值类型省略
  return (num4 + num5).toInt();
}
//如果使用Function的方法时定义方法的参数是一个函数的话,不能够传递参数,那如果需要传递一个带返回值

int caculator(Function func) {
    return func();
}

//带有返回值和参数的函数作为参数,可以使用typedef来重命名函数
int caculator2(int func2(int a, int b)) {
  return func2(20,30);
}
//使用typedef 为函数重命名.
typedef muitlp = int Function(int a, int b);

int mutilpCaculator(muitlp(int a, int b)) {
  return muitlp(20,15);
}
//函数作为返回值
Function mutilpCaculator2(int a, int b) {
  return () {
    return a * b;
  };
}

//参数不可选
void printNum3(int num) {
  print(num);
}

//位置可选参数
void printNum4(int num,[int age,int height]) {
  print(num.toString() + age.toString() + height.toString());
}

//命名可选参数
void printNum5(int num,{int age,int height}) {
  print(num.toString() + age.toString() + height.toString());
}

//函数的参数设置默认值
void printNum6(int num,{int age = 60,int height = 70}) {
  print(num.toString() + age.toString() + height.toString());
}



//练习!!!!!!!!!!!!
//合并数组
Function attachList(List a, List b) {
  return () {
    return b.forEach((element) {
      a.add(element);
    });
  };
}

//拆分数组
typedef compont = String Function (List a);

String compontArray(compont) {
  return compont([1,2,3,4,5]);
}