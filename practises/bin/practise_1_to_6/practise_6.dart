/*
Viết 1 chương trình:
1. In ra màn hình toàn bộ số nguyên tố của 1 số n cho trước.
/// ví dụ: nếu n = 100, kết quả sẽ là
[0, 1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67,
71, 73, 79, 83, 89, 97]*/

void main(List<String> arguments) {
  checkSoNguyenTo(90);
}

void checkSoNguyenTo(int n) {
  var listSoNgTo = [];
  int count = 0;
  for (int i = 2; i <= n; i++) {
    count = 0;
    for (int j = 1; j <= i; j++) {
      if (i % j == 0) {
        count++;
      }
    }
    if (count <= 2) {
      listSoNgTo.add(i);
    }
  }
  print(listSoNgTo);
}
