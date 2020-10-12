void main(){
    var rope=[12,45,12,90,44];
    int count=0;
    for(int i=0; i<rope.length ; i++){
        for(int j=i+1; j<rope.length; j++){
            if (rope[i] ==rope[j]){
                count++;
            }
        }
    }
if (count==0){
    print("Girls party");
}
else{
    print("Boys party");
}
}
