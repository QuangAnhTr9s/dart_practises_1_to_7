/*Viết 1 chương trình:
1. Mở rộng thêm các phương thức từ number:
● Thêm các phương thức add(), subtract, divide, multiple tương ứng với 4
phép tính: cộng, trừ, nhân, chia
● 4 phương thức này đều báo lỗi nếu truyền vào số <= 0*/

void main(List<String> arguments) {
// kết quả mong muốn
//   int a = 10;
//   print("add method: ${a.add(2)}"); // add method: 12
//   print("subtract method: ${a.subtract(2)}"); // subtract method: 8
//   print("divide method: ${a.divide(2)}"); // divide method: 5
//   print("multiple method: ${a.multiple(2)}"); // multiple method: 20

  int a = 10;
  print("add method: ${add(a, 2)}"); // add method: 12
  print("subtract method: ${subtract(a, 2)}"); // subtract method: 8
  print("divide method: ${divide(a, 2)}"); // divide method: 5
  print("multiple method: ${multiple(a, 2)}"); // multiple method: 20
}

num multiple(num a, num b) {
  return a * b;
}

num divide(num a, num b) {
  return a / b;
}

num add(num a, num b) {
  return a + b;
}

num subtract(num a, num b) {
  return a - b;
}
