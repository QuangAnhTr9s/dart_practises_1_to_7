void main(){
  var fiboNumbers = [1, 2, 3, 5, 8, 13, 21];
  print(fiboNumbers.take(3).toList()); // => [1, 2, 3]
  print(fiboNumbers.skip(5).toList()); // => [13, 21]
  print(fiboNumbers.take(3).skip(2).take(1).toList()); // => [3]
}