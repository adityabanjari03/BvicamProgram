void main() {
  var arr = [300,40,60,90,100,12,16,17,4,3,5,2];
  var maximum = arr[arr.length - 1];
  print(maximum);
  for (int i = arr.length - 2 ; i >= ; i--) {
    if(maximum<arr[i]){
      print(arr[i]);
      maximum = arr[i];
    }
  }
}