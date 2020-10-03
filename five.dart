void main() {
var r = isAnagram('iceman', 'cinema');
print(r);
}
bool isAnagram(String str1, String str2) {
  String normalize(String str) => (str
          .toLowerCase()
          .replaceAll(RegExp(r'[^a-z0-9]', caseSensitive: false), '')
          .split('')
            ..sort())
      .join('');
  return normalize(str1) == normalize(str2);
}  
