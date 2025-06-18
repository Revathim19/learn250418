Future<String> downloadFile(){
Future <String> str=Future.delayed(Duration(seconds: 5),()
{
  return "Return the downloaded file";
});
return str;
}
LoadFile() async{
  String file=await downloadFile();
  print("The loading file is $file");

}
void main(){
  print('Start laoding the file');
  LoadFile();
  print('End laoding the file');

}