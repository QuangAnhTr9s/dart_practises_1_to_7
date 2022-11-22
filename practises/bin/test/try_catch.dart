void main(List<String> args) {
  int a = 10;
  try {
    a = int.parse("Hello world" );
    /// khi parse int s ẽ gây ra lỗi, nhưng được bọc bởi try catch
    /// nên s ẽ không thể print ra biến a
    print("after parse, a = $a");
  } catch (ex) {
    print("exception -> ${ex.toString()}"); // exception -> FormatException: Hello world
  }
}