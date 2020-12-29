
main(List<String> args) {
  //int 类型
  int age = 10;
  //字符串类型
  String name = 'viky';
  String name2 = "vicky2";
  //double weight = 60.4;

  String name3 = """
  Bob
  vicky
  smith
  """;
  print(age);
  print(name);
  print(name2);
  print(name3);
  printNum(34);
  

  //bool类型
  bool isHidden = true;
  print(isHidden);

  //列表
  List array = [1,2,3,3,2,1,4,5,6];
  print(array);
  //映射map
  Map dic = {
    "name":"vicky",
    "age":18,
    "height":170
  };
  print(dic);
  //set集合
  Set set = {"vicky","bob","smith","12w","why",1223};
  print(set);

  //数组可以利用Set进行去重
  List newArray = array.toSet().toList();
  print(newArray);
  
  var one = int.parse('1');
  String oneStr = one.toString();
  print(one);
  print(oneStr);

}

void printNum(int num) {
  print(num);
}