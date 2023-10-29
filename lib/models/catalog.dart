

import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Huawei',
    'Xiaomi',
    'Microsoft',
    'Apple',
    'Adidas',
    'Nike',
    'Puma',
    'Spotify',
    
  ];
  static List<String> itemImages = [
    'https://cdn.iconscout.com/icon/free/png-256/free-huawei-226443.png?f=webp',
    'https://cdn.iconscout.com/icon/free/png-256/free-xiaomi-2-722656.png?f=webp',
    'https://www.shareicon.net/data/256x256/2017/06/21/887495_microsoft_512x512.png',
    'https://cdn-icons-png.flaticon.com/256/0/747.png',
    'https://cdn-icons-png.flaticon.com/256/731/731962.png',
    'https://cdn-icons-png.flaticon.com/256/732/732084.png',
    'https://i.pinimg.com/originals/ca/a7/c7/caa7c7e2b85c15e3a30939c831213bb7.png',
    'https://cdn-icons-png.flaticon.com/256/174/174872.png',


    

    
  ];
  
  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);


  Item getByPosition(int position) {
  
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
    
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
