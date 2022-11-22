/// hãy viết code bằng tất cả các cách có thể để in ra:
/// `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (ph ần 1)`
/// gợi ý: sử dụng hàm subString()
void main(List<String> arguments) {
  print("Cách 1:");
  print("Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)");

  print("Cách 2:");
  String string = "Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)";
  print(string);

  print("Cách 3:");
  String string1 = "Đây là kết quả buổi học thứ 2 về Dart: ";
  String string12 = "DART BASIC (phần 1)";
  print("3.1: " + string1 + string12);
  print("3.2: ${string1 + string12}");
  print("3.3: $string1$string12");

  print("Cách 4:");
  String string2 =
      "Kết quả Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1), bài tập";
  int a = string2.length - 9;
  String stringKQ = string2.substring(8, a);
  print("4.1: $stringKQ");

  int b = string2.indexOf(",");
  String stringKQ2 = string2.substring(8, b);
  print("4.2: $stringKQ2");

  int start = string2.indexOf("Đây");
  int end = string2.indexOf(",");
  print("4.3: ${string2.substring(start, end)}");

  bool isCheck;
  String sResult = "Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)";
  isCheck = string2.contains(sResult);
  if (isCheck) {
    print("4.4: $sResult");
  }
}
