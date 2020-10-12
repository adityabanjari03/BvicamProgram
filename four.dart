void main(){
var arr = [1,2,4,5,6,7,8,9];
var end = arr[arr.length -1];
int total=0;
int arrTotal=0;
for(int i = 1; i<end; i++){
    total = total+i;
}
for(int j=0; j<arr.length-1; j++){
    arrTotal= arrTotal+arr[j];
}
var miss = total-arrTotal;
print(miss);

}