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
  ),
  Product(
    id: '5',
    name: 'Baby Lotion',
    price: 19.95,
    imageUrl:
        'https://images.unsplash.com/photo-1716043426139-3573390e8477?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmFieSUyMGxvdGlvbnxlbnwwfHwwfHx8MA%3D%3D',
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
  ),
  Product(
    id: '6',
    name: 'Maternity Dress',
    price: 79.99,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1664053011505-13375aee2971?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fG1hdGVybml0eXxlbnwwfHwwfHx8MA%3D%3D',
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
        'https://images.unsplash.com/photo-1728487892215-0d96da2221b7?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YmFieSUyMGxvdGlvbnxlbnwwfHwwfHx8MA%3D%3D',
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
