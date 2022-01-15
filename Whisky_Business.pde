// Title: Whisky Business
// Programmer: Michelle Ma
// Last Modified: 14 April 2020
// Description: A program designed to simulate the environment
//         and interactions at a bakery, working with classes.

void setup(){
  
  //creating the objects
  BakedGood croissants = new BakedGood("Croissants", 5, 3.85);
  BakedGood sourdough = new BakedGood("Sourdough Bread", 4, 4.99);
  BakedGood lime = new BakedGood("Key Lime Pie", 3, 5.20);
  BakedGood madelines = new BakedGood("Madelines", 2, 1.88);
  BakedGood cookies = new BakedGood("Double Fudge Cookies", 1, 1.99);
  
  Baker mel = new Baker("Melissa", 4);
  Baker matt = new Baker("Matt", 5);
  Baker steve = new Baker("Steve", 1);
  
  Customer sarah = new Customer("Sarah");
  Customer tim = new Customer("Tim");
  Customer billy = new Customer("Billy");
  
  Equipment spoon = new Equipment("Wooden spoon", 1);
  Equipment spatula = new Equipment("Spatula", 2);
  Equipment whisk = new Equipment("Whisk", 3);
  Equipment oven = new Equipment("Oven", 5);
  
  //baking
  mel.bake(cookies, 24);
  mel.bake(sourdough, 2);
  matt.bake(croissants, 5);
  matt.bake(madelines, 16);
  steve.bake(lime, 1); //baked good with higher difficulty than baker experience (random chance of failing)
  
  //buying baked goods
  tim.buy(croissants, 2);
  billy.buy(madelines, 17); //when there isn't enough
  billy.buy(madelines, 4);
  sarah.buy(cookies, 12);
  
  //favouriting baked goods
  tim.favourite(lime);
  sarah.favourite(lime);
  billy.favourite(cookies);
  
  //making mistakes
  mel.foolAround(oven);
  matt.foolAround(spoon);
  matt.insultCustomer(sarah);
  matt.insultCustomer(tim);
  matt.insultCustomer(tim);

  matt.begForForgiveness(); //depending on amount of suck-up points, the boss may take them back
  
  //sucking up
  mel.suckUp();
  steve.suckUp();
  
  //buying more equipment
  steve.buy(spatula, 2);
  matt.buy(spoon, 1);
  
  //a cheap customer
  billy.steal(croissants);
  billy.steal(lime); //might not be in stock depending if Steve failed earlier
  billy.steal(cookies);
  billy.steal(madelines);
  billy.steal(sourdough);

  billy.buy(sourdough, 1); //depending on chance, Billy may or may not be banned
  
  //customer point rewards system
  tim.redeemPoints();
  sarah.redeemPoints();
  
  //describing
  mel.describe();
  matt.describe();
  
  tim.describe();
  billy.describe();
  
  lime.describe();
  sourdough.describe();
  
  spatula.describe();
  whisk.describe();
  
  exit();
}
