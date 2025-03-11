import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String category;
  final bool isBestSeller;
  final List<String> sizes;
  final List<String> colors;
  final List<String> images;
  final String description;
  final double rating;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.isBestSeller = false,
    required this.sizes,
    required this.colors,
    required this.images,
    required this.description,
    this.rating = 0.0,
  });
}

List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Baby Suit',
    price: 254.89,
    imageUrl:
        'https://images.unsplash.com/photo-1578897367107-2828e351c8a8?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmFieSUyMGZhc2hpb258ZW58MHx8MHx8fDA%3D',
    category: 'Baby Clothes',
    isBestSeller: true,
    sizes: ['Small', 'Medium', 'Large'],
    colors: ['Blue', 'Red', 'Green'],
    images: [
      'https://images.unsplash.com/photo-1578897367107-2828e351c8a8?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmFieSUyMGZhc2hpb258ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1562438995-20c8bc11d4a9?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJhYnklMjBmYXNoaW9ufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1564157465092-eaa2a4c834ca?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJhYnklMjBnaXJsfGVufDB8fDB8fHww',
    ],
    description:
        'Comfortable baby suit made with 100% organic cotton. Perfect for everyday wear.',
    rating: 4.5,
  ),
  Product(
    id: '2',
    name: 'Baby winter',
    price: 64.95,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1661292113475-8b301ec76e35?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFieSUyMG9uZXNpZXxlbnwwfHwwfHx8MA%3D%3D',
    category: 'Baby Clothes',
    isBestSeller: true,
    sizes: ['Small', 'Medium', 'Large'],
    colors: ['Green', 'Yellow', 'Pink'],
    images: [
      'https://plus.unsplash.com/premium_photo-1661292113475-8b301ec76e35?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFieSUyMG9uZXNpZXxlbnwwfHwwfHx8MA%3D%3D',
      'https://plus.unsplash.com/premium_photo-1661610681259-65823ea607fe?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmV3Ym9ybiUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
    ],
    description:
        'Adorable baby suite with matching hat. Made with soft, breathable fabric.',
    rating: 4.2,
  ),
  Product(
    id: '3',
    name: 'Baby suit',
    price: 967.80,
    imageUrl:
        'https://images.unsplash.com/photo-1519689680058-324335c77eba?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
    category: 'Baby Clothes',
    isBestSeller: true,
    sizes: ['Small', 'Medium', 'Large'],
    colors: ['Red', 'Blue', 'Green'],
    images: [
      'https://images.unsplash.com/photo-1519689680058-324335c77eba?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
      'https://images.unsplash.com/photo-1607006344380-b6775a0824ce?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
      'https://images.unsplash.com/photo-1607006344380-b6775a0824ce?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
    ],
    description:
        'Premium quality baby suit with cute design. Perfect for special occasions.',
    rating: 4.8,
  ),
  Product(
    id: '4',
    name: 'Baby Shoes',
    price: 45.99,
    imageUrl:
        'https://images.unsplash.com/photo-1594150878496-a921e5af8907?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMHNob2VzfGVufDB8fDB8fHww',
    category: 'Baby Shoes',
    isBestSeller: false,
    sizes: ['0-3m', '3-6m', '6-9m'],
    colors: ['White', 'Blue', 'Pink'],
    images: [
      'https://images.unsplash.com/photo-1565430076958-f6579417a6ef?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmFieSUyMHNob2VzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1624958797025-b119e2fa2b53?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJhYnklMjBzaG9lc3xlbnwwfHwwfHx8MA%3D%3D',
      'https://images.unsplash.com/photo-1584564515943-b54cbb61836b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJhYnklMjBzaG9lc3xlbnwwfHwwfHx8MA%3D%3D',
    ],
    description:
        'Soft-soled baby shoes perfect for first steps. Non-slip bottom for safety.',
    rating: 4.0,
  ),
  Product(
    id: '5',
    name: 'Baby Lotion',
    price: 19.95,
    imageUrl:
        'https://images.unsplash.com/photo-1580870069867-74c57ee1bb07?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ym9keSUyMGNyZWFtfGVufDB8fDB8fHww',
    category: 'Baby Cream',
    isBestSeller: true,
    sizes: ['100ml', '200ml', '500ml'],
    colors: ['Original', 'Lavender', 'Aloe'],
    images: [
      'https://images.unsplash.com/photo-1580870069867-74c57ee1bb07?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ym9keSUyMGNyZWFtfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1629198688000-71f23e745b6e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHByb2R1Y3RzfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1669212408620-957229726535?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bG9yYXxlbnwwfHwwfHx8MA%3D%3D',
    ],
    description:
        'Gentle baby lotion with natural ingredients. Hypoallergenic and dermatologist tested.',
    rating: 4.7,
  ),
  Product(
    id: '6',
    name: 'Maternity Dress',
    price: 79.99,
    imageUrl:
        'https://images.unsplash.com/photo-1591130433799-45290f88de1b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWF0ZXJuaXR5JTIwc2hvb3R8ZW58MHx8MHx8fDA%3D',
    category: 'Mom Clothes',
    isBestSeller: false,
    sizes: ['S', 'M', 'L', 'XL'],
    colors: ['Black', 'Navy', 'Burgundy'],
    images: [
      'https://images.unsplash.com/photo-1591130433799-45290f88de1b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWF0ZXJuaXR5JTIwc2hvb3R8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1681821441657-28d97551e14b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1672936601120-72c0a6971f76?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ],
    description:
        'Comfortable and stylish maternity dress. Perfect for all stages of pregnancy.',
    rating: 4.3,
  ),
  // New products
  Product(
    id: '7',
    name: 'Baby Carrier',
    price: 89.99,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1663133962951-8a25192dfd07?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGJhYnklMjBjYXJyaWVyfGVufDB8fDB8fHww',
    category: 'Baby Accessories',
    isBestSeller: true,
    sizes: ['One Size'],
    colors: ['Gray', 'Black', 'Beige'],
    images: [
      'https://plus.unsplash.com/premium_photo-1663133962951-8a25192dfd07?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGJhYnklMjBjYXJyaWVyfGVufDB8fDB8fHww',
      'https://plus.unsplash.com/premium_photo-1661274158693-401c233e0d21?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFieSUyMGNhcnJpZXJ8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1564149809912-731909a19d89?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmFieSUyMGNhcnJpZXJ8ZW58MHx8MHx8fDA%3D',
    ],
    description:
        'Ergonomic baby carrier with multiple carrying positions. Provides optimal support for baby and parent comfort.',
    rating: 4.9,
  ),
  Product(
    id: '8',
    name: 'Baby Blanket',
    price: 34.50,
    imageUrl:
        'https://images.unsplash.com/photo-1505679428249-ebe9559320a0?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGJsYW5rZXR8ZW58MHx8MHx8fDA%3D',
    category: 'Baby Accessories',
    isBestSeller: false,
    sizes: ['Small', 'Medium', 'Large'],
    colors: ['Pink', 'Blue', 'Yellow', 'White'],
    images: [
      'https://images.unsplash.com/photo-1505679428249-ebe9559320a0?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGJsYW5rZXR8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1555252333-9f8e92e65df9?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmFieSUyMGJsYW5rZXR8ZW58MHx8MHx8fDA%3D',
      'https://plus.unsplash.com/premium_photo-1675183690726-a5d47dbcc14a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8YmFieSUyMGJsYW5rZXR8ZW58MHx8MHx8fDA%3D',
    ],
    description:
        'Super soft and cozy baby blanket made from premium organic cotton. Perfect for swaddling or as a stroller cover.',
    rating: 4.6,
  ),
  Product(
    id: '9',
    name: 'Baby Monitor',
    price: 129.99,
    imageUrl:
        'https://images.unsplash.com/photo-1585183575469-343460119976?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMG1vbml0b3J8ZW58MHx8MHx8fDA%3D',
    category: 'Baby Electronics',
    isBestSeller: true,
    sizes: ['One Size'],
    colors: ['White', 'Gray'],
    images: [
      'https://images.unsplash.com/photo-1585183575469-343460119976?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMG1vbml0b3J8ZW58MHx8MHx8fDA%3D',
      'https://plus.unsplash.com/premium_photo-1664304447377-de8c12df9ed9?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bmVvbmF0YWx8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1585183575469-343460119976?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMG1vbml0b3J8ZW58MHx8MHx8fDA%3D',
    ],
    description:
        'High-definition video baby monitor with night vision, two-way audio, and temperature monitoring. Keep an eye on your little one from anywhere.',
    rating: 4.8,
  ),
  Product(
    id: '10',
    name: 'Baby Teether',
    price: 12.99,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1661430916195-f8bfa159d705?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFieSUyMGFjY2Vzc29yaWVzfGVufDB8fDB8fHww',
    category: 'Baby Toys',
    isBestSeller: false,
    sizes: ['One Size'],
    colors: ['Green', 'Blue', 'Pink', 'Yellow'],
    images: [
      'https://plus.unsplash.com/premium_photo-1661430916195-f8bfa159d705?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFieSUyMGFjY2Vzc29yaWVzfGVufDB8fDB8fHww',
      'https://plus.unsplash.com/premium_photo-1661416470657-3d173ab24569?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1pbi1zYW1lLXNlcmllc3wxfHx8ZW58MHx8fHx8',
      'https://plus.unsplash.com/premium_photo-1661430931607-70b2e194f741?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ],
    description:
        'BPA-free silicone teether designed to soothe baby\'s gums during teething. Easy for little hands to hold and multiple textures for sensory development.',
    rating: 4.5,
  ),
  Product(
    id: '11',
    name: 'Baby Bath Set',
    price: 39.99,
    imageUrl:
        'https://images.unsplash.com/photo-1609254495151-73a4c7df99ab?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmFieSUyMGJhdGh8ZW58MHx8MHx8fDA%3D',
    category: 'Baby Bath',
    isBestSeller: true,
    sizes: ['One Size'],
    colors: ['Yellow', 'Blue', 'Green'],
    images: [
      'https://images.unsplash.com/photo-1609254495151-73a4c7df99ab?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmFieSUyMGJhdGh8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1546094164-381e9487c464?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGJhYnklMjBiYXRofGVufDB8fDB8fHww',
      'https://plus.unsplash.com/premium_photo-1661391604440-b2f2a725ddb8?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFieSUyMGJhdGh8ZW58MHx8MHx8fDA%3D',
    ],
    description:
        'Complete baby bath set including gentle shampoo, body wash, lotion, and soft washcloths. Made with natural ingredients safe for sensitive skin.',
    rating: 4.7,
  ),
  Product(
    id: '12',
    name: 'Baby Crib Mobile',
    price: 49.95,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1678402534987-ff038753d0ec?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFieSUyMG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
    category: 'Baby Furniture',
    isBestSeller: false,
    sizes: ['One Size'],
    colors: ['White', 'Gray', 'Pastel'],
    images: [
      'https://plus.unsplash.com/premium_photo-1678402534987-ff038753d0ec?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFieSUyMG1vYmlsZXxlbnwwfHwwfHx8MA%3D%3D',
      'https://images.unsplash.com/photo-1505043203398-7e4c111acbfa?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y290fGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1458731909820-5850bdcaee0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGNyaWJ8ZW58MHx8MHx8fDA%3D',
    ],
    description:
        'Musical crib mobile with gentle rotating motion and soft plush toys. Plays soothing lullabies to help baby fall asleep.',
    rating: 4.4,
  ),
];

List<Map<String, dynamic>> categories = [
  {
    'name': 'Baby Clothes',
    'imageUrl':
        'https://plus.unsplash.com/premium_photo-1676031940533-8f1ac6a07268?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFieSUyMGNsb3RoaW5nfGVufDB8fDB8fHww',
  },
  {
    'name': 'Baby Cream',
    'imageUrl':
        'https://images.unsplash.com/photo-1580870069867-74c57ee1bb07?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ym9keSUyMGNyZWFtfGVufDB8fDB8fHww',
  },
  {
    'name': 'Baby Shoes',
    'imageUrl':
        'https://images.unsplash.com/photo-1553884013-c5593d463526?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpbGRyZW4lMjBzaG9lc3xlbnwwfHwwfHx8MA%3D%3D',
  },
  {
    'name': 'Mom Clothes',
    'imageUrl':
        'https://plus.unsplash.com/premium_photo-1673384389447-5a4364e7c93b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybCUyMGRyZXNzfGVufDB8fDB8fHww',
  },
  {
    'name': 'Baby Accessories',
    'imageUrl':
        'https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGFjY2Vzc29yaWVzfGVufDB8fDB8fHww',
  },
  {
    'name': 'Baby Electronics',
    'imageUrl':
        'https://plus.unsplash.com/premium_photo-1673883976774-aeef0ebe71eb?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpbGQlMjBpcGFkfGVufDB8fDB8fHww',
  },
  {
    'name': 'Baby Bath',
    'imageUrl':
        'https://images.unsplash.com/flagged/photo-1564228539519-4dfe919785a6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmFieSUyMGJhdGh8ZW58MHx8MHx8fDA%3D',
  },
];

List<Map<String, dynamic>> brands = [
  {
    'name': 'Munchkin',
    'imageUrl':
        'https://images.unsplash.com/photo-1615957174619-df4f50462403?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bXVuY2hraW4lMjBjYXR8ZW58MHx8MHx8fDA%3D',
  },
  {
    'name': 'Stereo',
    'imageUrl':
        'https://images.unsplash.com/photo-1577607120840-a1ace6dc676f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHN0ZXJlb3xlbnwwfHwwfHx8MA%3D%3D',
  },
  {
    'name': 'Pampers',
    'imageUrl':
        'https://images.unsplash.com/photo-1504151806752-5b3af8e39e4e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZGlhcGVyc3xlbnwwfHwwfHx8MA%3D%3D',
  },
  {
    'name': 'Carter\'s',
    'imageUrl':
        'https://marvel-b1-cdn.bc0a.com/f00000000270502/s19538.pcdn.co/wp-content/uploads/2020/06/carter-logo-2020-1024x512.jpg',
  },
  {
    'name': 'Gerber',
    'imageUrl':
        'https://images.unsplash.com/photo-1607074250455-a796a7b74534?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z2VyYmVyYXN8ZW58MHx8MHx8fDA%3D',
  },
  {
    'name': 'Huggies',
    'imageUrl':
        'https://images.unsplash.com/photo-1504151806752-5b3af8e39e4e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZGlhcGVyc3xlbnwwfHwwfHx8MA%3D%3D',
  },
];

List<Map<String, String>> genderCategories = [
  {
    'name': 'Baby Girl',
    'background': 'purple',
  },
  {
    'name': 'Baby Boy',
    'background': 'black',
  },
  {
    'name': 'Baby Girl',
    'background': 'purple',
  },
  {
    'name': 'Baby Boy',
    'background': 'black',
  },
];

List<String> searchHistory = [
  'Rompers',
  'Baby suit',
  'Summer',
  'Spring',
  'Sleep suit',
  'Baby carrier',
  'Teething toys',
  'Organic cotton',
];

List<Map<String, dynamic>> settingsOptions = [
  {'title': 'Notification', 'icon': Icons.notifications_outlined},
  {'title': 'Language', 'icon': Icons.language_outlined},
  {'title': 'Country', 'icon': Icons.public_outlined},
  {'title': 'Terms & Condition', 'icon': Icons.description_outlined},
  {'title': 'Privacy Policy', 'icon': Icons.privacy_tip_outlined},
  {'title': 'Contact us', 'icon': Icons.contact_support_outlined},
  {'title': 'About us', 'icon': Icons.info_outline},
];
