import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/model/home/product_model.dart';

abstract class HomePageController extends GetxController {
  scroll();
}

class HomePageControllerImp extends HomePageController {
  late List<ProductModel> normalProdcut = [
    ProductModel(
      prodcut_id: 0,
      product_name:
          "XDrive 15'li Profesyonel Oyuncu Koltuğu Yeşil/siyah XD-15-FY/S",
      prodcut_price: 4240,
      prdocut_comment: 140,
      product_discount: 0,
      product_stars: 3.0,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty732/product/media/images/20230216/10/282064320/65767948/1/1_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty732/product/media/images/20230216/10/282064320/65767948/1/1_org_zoom.jpg',
        'https://cdn.dsmcdn.com/mnresize/1200/1800/ty732/product/media/images/20230216/10/282064320/65767948/2/2_org_zoom.jpg',
        'https://cdn.dsmcdn.com/mnresize/1200/1800/ty734/product/media/images/20230216/10/282064320/65767948/3/3_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın."
            'xDrive Profesyonel Oyuncu Koltuğu 15Li Serisi',
        '2D Hareketi Kolçaklar',
        'Sağa-Sola ve Yukarı-Aşağı hareketleri yapabilen kolcaklar.',
        'uzun süreli oturumlarda bel ve boyun minderi ile konfor sağlar.',
        '120 kiloya kadar dayanıklı özel tasarım xDrive tekerlekler.',
        'Yukarı-Aşağı yükseklik ayarı yapabilirsiniz.',
      ],
      product_ifeatures: {
        'Color': 'green',
        "Sırt Mekanizması": 'Geriye doğru yatabilme',
        'Kol Desteği': 'Yukarı-Aşağı Hareketli',
      },
    ),
    ProductModel(
      prodcut_id: 1,
      product_name:
          "Apple iPhone 11 128 GB Beyaz Cep Telefonu Aksesuarsız Kutu (Apple Türkiye Garantili)",
      prodcut_price: 1800,
      prdocut_comment: 560,
      product_discount: 0,
      product_stars: 5.0,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty733/product/media/images/20230215/16/281514998/111694438/1/1_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty733/product/media/images/20230215/16/281514998/111694438/1/1_org_zoom.jpg',
        'https://cdn.dsmcdn.com/mnresize/1200/1800/ty732/product/media/images/20230215/16/281514998/111694438/2/2_org_zoom.jpg',
        'https://cdn.dsmcdn.com/mnresize/1200/1800/ty732/product/media/images/20230215/16/281514998/111694438/4/4_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.",
        "24 Ay Apple Türkiye Garantili Yeni üretim iPhone'ların Kutu içeriğinde USB-C to Lightning Kablosu bulunmaktadır. Adaptör ve Kulaklık bulunmaz.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
        "Kampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
      ],
      product_ifeatures: {
        'Color': 'White',
        "Dahili Hafıza": '128 GB',
        'RAM Kapasitesi': '4 GB',
        'İşletim Sistemi': 'iOS',
      },
    ),
    ProductModel(
      prodcut_id: 2,
      product_name: "Puma Beyaz - Caracal Ayakkabı 369863",
      prodcut_price: 1600,
      prdocut_comment: 110,
      product_discount: 15,
      product_stars: 4.0,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty539/product/media/images/20220921/8/177785416/574393092/1/1_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty539/product/media/images/20220921/8/177785416/574393092/1/1_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty538/product/media/images/20220921/8/177785416/574393092/6/6_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty538/product/media/images/20220921/8/177785416/574393092/5/5_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.",
        "Bu üründen en fazla 10 adet sipariş verilebilir. 10 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.",
        "Kampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
      ],
      product_ifeatures: {
        'Color': 'White',
        "Bağlama Şekli": 'Bağcıklı',
        'Kullanım Alanı': 'Spor',
        'Taban Tipi': 'Düz Taban',
      },
    ),
    ProductModel(
      prodcut_id: 3,
      product_name:
          "JBL Tune 510bt Multi Connect Wireless Kulaklık, Beyaz JB.JBLT510BTBLKEU",
      prodcut_price: 1350,
      prdocut_comment: 80,
      product_discount: 0,
      product_stars: 3.0,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty785/product/media/images/20230317/10/305908342/213143706/1/1_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty785/product/media/images/20230317/10/305908342/213143706/1/1_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty783/product/media/images/20230317/10/305908342/213143706/2/2_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty785/product/media/images/20230317/10/305908342/213143706/3/3_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.",
        "Bu üründen en fazla 10 adet sipariş verilebilir. 10 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.",
        "Kampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
      ],
      product_ifeatures: {
        'Color': 'White',
        "Aktif Gürültü Önleme (ANC)": 'Yok',
        'Bluetooth Versiyon': '4.1',
      },
    ),
  ];

  late List<ProductModel> discountProduct = [
    ProductModel(
      prodcut_id: 0,
      product_name: "Puma Beyaz - Caracal Ayakkabı 369863",
      prodcut_price: 1350,
      prdocut_comment: 96,
      product_discount: 25,
      product_stars: 5,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty774/product/media/images/20230313/11/302043328/884303996/1/1_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty774/product/media/images/20230313/11/302043328/884303996/1/1_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty776/product/media/images/20230313/11/302043328/884303996/4/4_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty774/product/media/images/20230313/11/302043328/884303996/5/5_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty774/product/media/images/20230313/11/302043328/884303996/7/7_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.",
        "Bu üründen en fazla 10 adet sipariş verilebilir. 10 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.",
        "Kampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
      ],
      product_ifeatures: {
        'Color': 'White',
        "Bağlama Şekli": 'Bağcıklı',
        'Kullanım Alanı': 'Spor',
        'Taban Tipi': 'Düz Taban',
      },
    ),
    ProductModel(
      prodcut_id: 1,
      product_name:
          "ASUS Tuf Dash F15 Intel Core I7 12650h 32gb 2tb Ssd Rtx3070 Freedos 15.6\" Fhd 144hz Fx517zr-hn01304 CFX517ZR-HN01304",
      prodcut_price: 56000,
      prdocut_comment: 90,
      product_discount: 15,
      product_stars: 4.0,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty699/product/media/images/20230124/15/264629801/839279763/1/1_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty699/product/media/images/20230124/15/264629801/839279763/1/1_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty699/product/media/images/20230124/15/264629801/839279763/2/2_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty701/product/media/images/20230124/15/264629801/839279763/5/5_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.",
        "Bu üründen en fazla 10 adet sipariş verilebilir. 10 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.",
        "Kampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
      ],
      product_ifeatures: {
        'İşlemci Tipi': 'Intel Core i7',
        "SSD Kapasitesi": '512 GB',
        'Kullanım Amacı': 'Oyun',
        'Arttırılabilir Azami Bellek': '32 GB',
      },
    ),
    ProductModel(
      prodcut_id: 2,
      product_name:
          "Guess Collection Gcy99001g2mf Erkek Kol Saati GCY99001G2MF",
      prodcut_price: 11500,
      prdocut_comment: 110,
      product_discount: 5,
      product_stars: 5.0,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty204/product/media/images/20211021/22/153743698/270924525/0/0_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty204/product/media/images/20211021/22/153743698/270924525/0/0_org_zoom.jpg',
        'https://cdn.dsmcdn.com/mnresize/1200/1800/ty206/product/media/images/20211021/22/153743698/270924525/2/2_org_zoom.jpg',
        'https://cdn.dsmcdn.com/mnresize/1200/1800/ty205/product/media/images/20211021/22/153743698/270924525/4/4_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.",
        "Bu üründen en fazla 10 adet sipariş verilebilir. 10 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.",
        "Kampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
      ],
      product_ifeatures: {
        'Kordon Rengi': 'Metalik Gri',
        "Tarz": 'Spor Saatler',
        'Kasa Çapı': '44 mm',
        'Kasa Rengi ': 'Metalik Gri',
      },
    ),
    ProductModel(
      prodcut_id: 3,
      product_name:
          "Altec Lansing Gri/Beyaz Red Swıtch Rainbow 87 Tuşlu Süper Kompakt Mekanik Gaming Oyuncu Klavye ALGK8404GW",
      prodcut_price: 729.0,
      prdocut_comment: 60,
      product_discount: 15,
      product_stars: 3.0,
      product_mainImage:
          'https://cdn.dsmcdn.com/ty285/product/media/images/20220104/18/21741987/351373137/1/1_org_zoom.jpg',
      product_currencyType: 'TL',
      prdocut_images: [
        'https://cdn.dsmcdn.com/ty285/product/media/images/20220104/18/21741987/351373137/1/1_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty286/product/media/images/20220104/18/21741987/351373137/2/2_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty287/product/media/images/20220104/18/21741987/351373137/4/4_org_zoom.jpg',
        'https://cdn.dsmcdn.com/ty287/product/media/images/20220104/18/21741987/351373137/5/5_org_zoom.jpg',
      ],
      product_information: [
        "15 gün içinde ücretsiz iade. Detaylı bilgi için tıklayın.",
        "Bu üründen en fazla 10 adet sipariş verilebilir. 10 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.",
        "Kampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.",
        "İncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.",
      ],
      product_ifeatures: {
        'Numerik Tuşlar': 'Var',
        "Tuş Düzeni": 'Q Klavye',
        'Kasa Çapı': '44 mm',
        'Aydınlatma': 'RGB',
      },
    ),
  ];

  late ScrollController scrollController;
  late bool showSearchText;

  @override
  void onInit() {
    scrollController = ScrollController();
    showSearchText = false;
    scrollController.addListener(scroll);
    super.onInit();
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(scroll)
      ..dispose();
    super.dispose();
  }

  @override
  scroll() {
    final currentScroll = scrollController.offset;
    if (currentScroll >= 150) {
      showSearchText = true;
      update();
    } else {
      showSearchText = false;
      update();
    }
  }
}
