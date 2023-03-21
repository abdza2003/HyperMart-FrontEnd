// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  int prodcut_id;
  String product_name;
  double prodcut_price;
  String product_currencyType;
  int prdocut_comment;
  int product_discount;
  double product_stars;
  String product_mainImage;
  List<String> prdocut_images;
  List<String> product_information;
  Map<dynamic, dynamic>? product_ifeatures;
  ProductModel({
    required this.prodcut_id,
    required this.product_name,
    required this.prodcut_price,
    required this.prdocut_comment,
    required this.product_discount,
    required this.product_stars,
    required this.product_mainImage,
    required this.product_currencyType,
    required this.prdocut_images,
    required this.product_information,
    this.product_ifeatures,
  });
}



      // 'image_link':
      //     'https://cdn.dsmcdn.com/ty162/product/media/images/20210825/15/122457756/226438506/1/1_org_zoom.jpg',
      // 'image_price': 170.0,
      // 'discout': 0,
      // 'star': 5,
      // 'commint': 370,