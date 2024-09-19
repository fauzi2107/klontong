class ProductModel {
  final int id, categoryId, weight, width, length, height, harga;
  final String categoryName, sku, name, description, image, productId;

  ProductModel({
    this.id = 86,
    required this.productId,
    this.categoryId = 14,
    this.weight = 5,
    this.width = 5,
    this.length = 5,
    this.height = 5,
    required this.harga,
    required this.categoryName,
    this.sku = 'MHZVTK',
    required this.name,
    required this.description,
    this.image = ''
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      productId: json['_id'] ?? '',
      categoryId: json['CategoryId'],
      categoryName: json['categoryName'],
      sku: json['sku'],
      name: json['name'],
      description: json['description'],
      weight: json['weight'],
      width: json['width'],
      length: json['length'],
      height: json['height'],
      image: json['image'],
      harga: json['harga']
    );
  }

  ProductModel copyWith({
    int? id,
    int? categoryId,
    int? weight,
    int? width,
    int? length,
    int? height,
    int? harga,
    String? categoryName,
    String? sku,
    String? name,
    String? description,
    String? image,
    String? productId
  }) => ProductModel(
    id: id ?? this.id,
    categoryId: categoryId ?? this.categoryId,
    weight: weight ?? this.weight,
    width: width ?? this.width,
    length: length ?? this.length,
    height: height ?? this.height,
    harga: harga ?? this.harga,
    categoryName: categoryName ?? this.categoryName,
    sku: sku ?? this.sku,
    name: name ?? this.name,
    description: description ?? this.description,
    image: image ?? this.image,
    productId: productId ?? this.productId
  );

  Map<String, dynamic> get toJson => {
    'id': id,
    'CategoryId': categoryId,
    'categoryName': categoryName,
    'sku': sku,
    'name': name,
    'description': description,
    'weight': weight,
    'width': width,
    'length': length,
    'height': height,
    'image': 'https://cf.shopee.co.id/file/7cb930d1bd183a435f4fb3e5cc4a896b',
    'harga': harga
  };

  static Map<String, dynamic> get dummyJson => {
    "id": 86,
    "CategoryId": 14,
    "categoryName": "Cemilan",
    "sku": "MHZVTK",
    "name": "Ciki ciki",
    "description": "Ciki ciki yang super enak, hanya di toko klontong kami",
    "weight": 500,
    "width": 5,
    "length": 5,
    "height": 5,
    "image": "https://cf.shopee.co.id/file/7cb930d1bd183a435f4fb3e5cc4a896b",
    "harga": 30000
  };
}

List<ProductModel> get dummy => List.generate(100, (index) {
  final model = ProductModel.fromJson(ProductModel.dummyJson);
  return model.copyWith(
    id: index + 1,
    harga: model.harga * (index+1),
    name: '${model.name} ${index+1}'
  );
}).toList();