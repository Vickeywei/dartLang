main(List<String> args) {
  //dart中所有的类都是继承自Object的.
  //这个表示父类类型指向子类
  String name = "vicky";
  print(name.substring(1));

//The method 'substring' isn't defined for the type 'Object'.
//Try correcting the name to the name of an existing method, or defining a method named 'substring'.
//使用obj去调用String的方法就会报错
  // Object obj = "vicky";
  // print(obj.substring(1));
//dynamic
dynamic obj2 = "vicky";
print(obj2.substring(1));



}