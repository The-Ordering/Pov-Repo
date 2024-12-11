import 'package:ordering/model/product_model.dart';

class ProductController {
  final List<ProductModel>products = <ProductModel>[
    ProductModel(
    id: 1, 
    name: 'Kong Keb Boak', 
    price: 10.99, 
    description: """The first amazing Cambodian street food that deserves to be on our list is Kang Kep Baob, or stuffed frog. As its name means, the frog is filled with a blend of ingredients.
            The mixture of stuff includes chopped frog meat with pork, coconut, peanuts, saffron, and citronella. These are stuffed inside the frog skin, making it fat and funny.
            The food needs to be dried under the sun for 15 minutes and then grilled or fried. The hot stuffed frog is served with a delicious smell and tender texture.""", 
    image: "assets/images/kong_keb_boak.jpg"),
    ProductModel(
    id: 2, 
    name: 'Ang Dtray-Meuk: ', 
    price: 15.99, 
    description: "For seafood lovers, Ang Dtray-Meuk offers a tantalizing combination of fresh squid grilled to perfection and served with a spicy dipping sauce made from lime juice, garlic, chili, and fish sauce. The smoky flavor of the grilled squid pairs perfectly with the tangy and savory sauce, creating a mouthwatering culinary experience.", 
    image: "assets/images/meuk_ang.jpg"),
    ProductModel(
    id: 3, 
    name: 'A_Ping',
    price: 20.99, 
    description: """You'll be surprised to see the local fried insects on the streets, yet it's part of their street food. A-Ping, the deep-fried spider, is a typical example. Other versions of this dish are silkworms, cockroaches, crickets, grasshoppers, beetles, etc.   
            These insects became edible due to the terrible famine that Cambodians experienced in the 1970s. They were so starving that insects were their only source of food.
            Even though it's an uncommon dish, it received more positive feedback than you may have thought. The crispy exterior contrasts with the soft center said to be "rather like a cross between chicken and cod", offering an unforgettable experience""", 
    image: "assets/images/a_ping.jpg"),
  ];
}