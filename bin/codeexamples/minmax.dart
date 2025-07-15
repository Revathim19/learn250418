int max(List<int> list) {
  int max = list[0];
  for (int i = 0; i < list.length; i++) {
    if (max < list[i]) {
      max = list[i];
    }
  }
  return max;
}
int min(List<int> list) {
  int min=list[0];

  for(int i=0;i<list.length;i++){
    if(min>list[i]){
      min=list[i];
    }
  }
  return min;
}

void main(){
  int maxout=max([1,23,3,4,5,5,30,6,-9,0,-1]);
  int minout=min([1,23,3,4,5,6,-9,0,-1]);
  print(maxout);
  print(minout);

}