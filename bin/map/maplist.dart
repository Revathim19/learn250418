void main(){
  Map map={
    "name":"Ammu",
    "age":36,
    "status":"married",
    "profession":"Housewife",
    "Stadies":"Masters",
    "Parent": [
      {
        "parent1": "amma",
        "parent2": "nanna",
      },
    ],
    "Sisters":[
      "sister1",
      "syster2",
    ],
    "Brothers":[
      "brother1",
      "brothers2",
    ]

  };

  List details=map["Sisters"];
  String sis1=details[0];
  print(sis1);
  List parents=map["Parent"];
  String par1=parents[0]["parent1"];
  print(par1);

}