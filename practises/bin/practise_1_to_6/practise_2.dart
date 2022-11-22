/*  Từ 1 array có sẵn (slide sau), dùng tất cả các cách mà bạn biết để print ra
  String sau. Chú ý các ký tự viết hoa, viết thường, khoảng trắng…
  “Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)”*/


void main(List<String> args) {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];

  /// Lấy data từ array trên và tạo ra 1 String với giá trị sau:
  /// Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)
// ví dụ
  String s1 =
      "${arr[3].toString().substring(0, 1).toUpperCase()}${arr[3]
      .toString()
      .substring(1, 3)}";
  print("$s1"); // sẽ in ra "Đây" các ký tự sau tương tự như vậy
  // String s2 = arr[5];
  // String s3 = arr[4];

  Map<dynamic, dynamic> map1 = arr[8];
  Map<dynamic, dynamic> map2 = arr[11];

  String sDart = map2["flutter"].toString().substring(0,1).toUpperCase() + map2["flutter"].toString().substring(1);

  String stringKQ = s1 + " " + arr[5] + " " + arr[4] + " " + arr[9][1] + " " +
      map1[true] + " " + map1[1] + " " + arr[9][0]+ " " + arr[1].toString()
      + " " + arr[9][2]+ " " + sDart+ " " + map1[10.2]+ " " +
      map1[false].toString().toUpperCase() + " " + arr[10];
  print(stringKQ);
}
