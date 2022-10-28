
class Item {

  String titleTorta; //nombre del pastel
  String description; // QUITAR
  List<double> sizeDisp; // 3 tamaños disponibles  
  double price; //precio
  List<String> cakeTipos; // 3 tipos de pastel interior
  String imageUrl;
  String cakeInterior;
  double sizeFinal; 
  String nameIntCake; 
  String dateCake; 
  bool isFav; 
  
  Item(
  this.titleTorta, 
  this.description, 
  this.sizeDisp, 
  this.price, 
  this.cakeTipos, 
  this.imageUrl,
  this.cakeInterior,
  this.sizeFinal,
  this.nameIntCake,
  this.dateCake,
  this.isFav
  );

}

List<Item> cakesKids(){ 
  return <Item>[
    Item(
      'Bananas',
      'Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.', 
      [12,24,32], 
      1.15, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
    Item(
      'Blueberries',
      'Blueberries can be eaten freshly picked or incorporated into a variety of recipes. They can also be purchased frozen.', 
      [12,24,32], 
      14.80, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
    Item(
      'Dragon Fruit',
      'Dragon fruit, also known as pitaya or the strawberry pear, is a beautiful tropical fruit that is sweet and crunchy.', 
      [12,24,32], 
      1.15, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
    Item(
      'Lychee',
      "Lychee is a tropical fruit that is unique in appearance and flavor. It's native to China but can grow in certain warm regions of the U.S like Florida and Hawaii.", 
      [12,24,32], 
      8.22, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
    Item(
      'Mango',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.", 
      [12,24,32], 
      1.02, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
    Item(
      'Papaya',
      'Papayas grow in tropical climates and are also known as papaws or pawpaws. Their sweet taste, vibrant color, and the wide variety of health benefits they provide make them a popular fruit.', 
      [12,24,32], 
      1.99, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
    Item(
      'Pineapple',
      'Pineapples are tropical fruits that are rich in vitamins, enzymes and antioxidants. They may help boost the immune system, build strong bones and aid indigestion.', 
      [12,24,32], 
      3.55, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
    Item(
      'Strawberries',
      'A strawberry is a short plant in the wild strawberry genus of the rose family. The name is also used for its very common sweet edible "fruit" and for flavors that taste like it.', 
      [12,24,32], 
       2.45, 
      ['Keke','Tres Leches','Chocolate'], 
      'assets/kids_cake/torta1.png',
      'Keke',
       12.0,
       'Sin nombre',
       'Sin fecha',
       false
    ),
  ];
}