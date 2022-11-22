/*Viết 1 chương trình:
1. Đầu vào là 1 mảng số tự nhiên từ 0 -> 100
2. Liệt kê ra toàn bộ các số lẻ
3. Liệt kê ra toàn bộ số chẵn
4. Kiểm tra xem 0 là số chẵn hay số lẻ*/

void main(List<String> arguments) {
  var mang = [];
  taoMang(mang, 100);
  lietKe(mang);
  checkSo(0);
}

void checkSo(int i) {
  if (i % 2 == 0) {
    print("Số $i là số chẵn");
  } else {
    print("Số $i là số lẽ");
  }
}

void lietKe(List mang) {
  var mangLe = [];
  var mangChan = [];
  for (int i = 0; i < mang.length; i++) {
    if (mang[i] % 2 == 0) {
      mangChan.add(mang[i]);
    } else {
      mangLe.add(mang[i]);
    }
  }
  print("Tất cả số lẻ trong mảng: $mangLe");
  print("");
  print("Tất cả số chẵn trong mảng: $mangChan");
  print("");
}

taoMang(List mang, int n) {
  for (int i = 0; i <= n; i++) {
    mang.add(i);
  }
  return mang;
}
