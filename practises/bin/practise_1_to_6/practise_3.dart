/*Viết 1 chương trình:
1. Khai báo toàn bộ các kiểu dữ liệu: Non-Nullable Types và Nullable Types,
    dynamic, var.
2. Có sử dụng các từ khoá static, final, late const.
3. Viết 1 hàm tính giai thừa của 6.
4. Viết các hàm chuyển đổi qua lại giữa string, int, double.*/

void main(List<String> arguments) {
  final n7;
  const mConst = 5;

  tinhGiaiThua(6);

  stringToInt("123");
  stringToDouble("21.17");
  intToString(12);
  intToDouble(20);
  doubleToInt(1.1);
  doubleToString(1.2);
}

String doubleToString(double d) {
  return d.toString();
}

int doubleToInt(double d) {
  return d.toInt();
}

double intToDouble(int i) {
  return i.toDouble();
}

String intToString(int i) {
  return i.toString();
}

double stringToDouble(String s) {
  return double.parse(s);
}

int stringToInt(String s) {
  return int.parse(s);
}

int tinhGiaiThua(int? a) {
  int result = 1;
  if (a != null) {
    for (int i = 1; i <= a; i++) {
      result *= i;
    }
  }
  return result;
}

class NonNullable {
  static const n6 = 10;
  int n1 = 1;
  double n2 = 1.0;
  num number = 20.2;
  String n3 = "sdsd";
  bool isN = true;
  var n4 = "sdd";
  late var n5;
  dynamic d = 12;

  List<dynamic> list = [12, 122, "as"];
  Object object = Object();
  Iterable<dynamic> iterable = [1233, "122"];
}

class Nullable {
  int? n1;
  double? n2;
  num? numBer;
  String? n3;
  bool? isN;

  List<String>? list = ["sd", "2", "as"];
  Iterable<int?> iterable = [6767];
}
