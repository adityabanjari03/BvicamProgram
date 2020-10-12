void main(){
    var r = isAnagram('iceman', 'cinema');
    print(r);
}
bool isAnagram(string str1,string str2){
    string normalize(string str)=> (str
    .tolowercase()
    .replaceAll(regExp(r'[^a-z0-9]' caseSensitive: false),'')
    .split('')
    ..sort())
    .join('');
    return normalize(str1) == normalize(str2);
}