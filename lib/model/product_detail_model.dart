class ProductDetailsModel {
  int? totalItems;
  int? totalGroups;
  List<Groups>? groups;

  ProductDetailsModel({this.totalItems, this.totalGroups, this.groups});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    totalItems = json['total_items'];
    totalGroups = json['total_groups'];
    if (json['groups'] != null) {
      groups = <Groups>[];
      json['groups'].forEach((v) {
        groups!.add(new Groups.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_items'] = this.totalItems;
    data['total_groups'] = this.totalGroups;
    if (this.groups != null) {
      data['groups'] = this.groups!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Groups {
  String? key;
  int? itemCount;
  List<Items>? items;

  Groups({this.key, this.itemCount, this.items});

  Groups.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    itemCount = json['item_count'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['item_count'] = this.itemCount;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  Salts? salts;
  String? interactiveModule;
  String? productName;
  String? mfgGroup;
  String? expiryDate;
  int? isPurchased;
  String? documentId;
  String? productId;
  int? groupSize;
  String? refProductId;
  int? displayFactor;
  int? isFlashSaleOn;
  Null? dosageFormDisplaySeq;
  int? bBFlashSaleSoldPercent;
  String? productShortDescription;
  bool? applyPincodeWiseDiscount;
  int? avgRating;
  String? offerTitle;
  String? encodeProdId;
  int? dosageAlert;
  int? minQty;
  int? recentOrderCount;
  int? isFeatured;
  String? brand;
  Null? brandImage;
  int? maxSKUOrderCount;
  int? active;
  int? dealPrice;
  String? productAliasName;
  int? dealMaxQty;
  int? numCustomer;
  String? dosageForm;
  String? schemeFreeBaseQtyOfferText;
  double? lastMRP;
  String? pKLotId;
  String? primaryDisease;
  String? keywords;
  int? appDiscount;
  String? offerImage;
  int? bBHighDisc;
  String? productImage;
  double? mRP;
  int? isNew;
  String? isOutOfStock;
  String? interactiveSubModule;
  double? appOfferPrice;
  double? pTR;
  String? hasOffer;
  int? dosageRestriction;
  String? displayName;
  String? prescriptionOTC;
  int? offerCategoryId;
  int? orderCount;
  double? custOfferPrice;
  int? isRedeemable;
  int? recentProductCount;
  int? pTRDiscPercent;
  int? numRating;
  int? isGiftableProduct;
  String? productStatus;
  int? customScoreManipulator;
  int? custDiscPercent;
  int? routeId;
  int? deliveryDelayedDay;
  int? schemeFreeBaseQty;
  int? recentCustCount;
  int? sKUOrderCount;
  double? unitPrice;
  int? isFoodProduct;
  int? displayRank;
  int? isCourierable;
  String? offerCategory;
  String? strength;
  int? isCustomizable;

  Items(
      {this.salts,
        this.interactiveModule,
        this.productName,
        this.mfgGroup,
        this.expiryDate,
        this.isPurchased,
        this.documentId,
        this.productId,
        this.groupSize,
        this.refProductId,
        this.displayFactor,
        this.isFlashSaleOn,
        this.dosageFormDisplaySeq,
        this.bBFlashSaleSoldPercent,
        this.productShortDescription,
        this.applyPincodeWiseDiscount,
        this.avgRating,
        this.offerTitle,
        this.encodeProdId,
        this.dosageAlert,
        this.minQty,
        this.recentOrderCount,
        this.isFeatured,
        this.brand,
        this.brandImage,
        this.maxSKUOrderCount,
        this.active,
        this.dealPrice,
        this.productAliasName,
        this.dealMaxQty,
        this.numCustomer,
        this.dosageForm,
        this.schemeFreeBaseQtyOfferText,
        this.lastMRP,
        this.pKLotId,
        this.primaryDisease,
        this.keywords,
        this.appDiscount,
        this.offerImage,
        this.bBHighDisc,
        this.productImage,
        this.mRP,
        this.isNew,
        this.isOutOfStock,
        this.interactiveSubModule,
        this.appOfferPrice,
        this.pTR,
        this.hasOffer,
        this.dosageRestriction,
        this.displayName,
        this.prescriptionOTC,
        this.offerCategoryId,
        this.orderCount,
        this.custOfferPrice,
        this.isRedeemable,
        this.recentProductCount,
        this.pTRDiscPercent,
        this.numRating,
        this.isGiftableProduct,
        this.productStatus,
        this.customScoreManipulator,
        this.custDiscPercent,
        this.routeId,
        this.deliveryDelayedDay,
        this.schemeFreeBaseQty,
        this.recentCustCount,
        this.sKUOrderCount,
        this.unitPrice,
        this.isFoodProduct,
        this.displayRank,
        this.isCourierable,
        this.offerCategory,
        this.strength,
        this.isCustomizable});

  Items.fromJson(Map<String, dynamic> json) {
    salts = json['Salts'] != null ? new Salts.fromJson(json['Salts']) : null;
    interactiveModule = json['InteractiveModule'];
    productName = json['ProductName'];
    mfgGroup = json['MfgGroup'];
    expiryDate = json['ExpiryDate'];
    isPurchased = json['IsPurchased'];
    documentId = json['DocumentId'];
    productId = json['ProductId'];
    groupSize = json['GroupSize'];
    refProductId = json['RefProductId'];
    displayFactor = json['DisplayFactor'];
    isFlashSaleOn = json['IsFlashSaleOn'];
    dosageFormDisplaySeq = json['DosageFormDisplaySeq'];
    bBFlashSaleSoldPercent = json['BBFlashSaleSoldPercent'];
    productShortDescription = json['ProductShortDescription'];
    applyPincodeWiseDiscount = json['ApplyPincodeWiseDiscount'];
    avgRating = json['AvgRating'];
    offerTitle = json['OfferTitle'];
    encodeProdId = json['EncodeProdId'];
    dosageAlert = json['DosageAlert'];
    minQty = json['MinQty'];
    recentOrderCount = json['RecentOrderCount'];
    isFeatured = json['IsFeatured'];
    brand = json['Brand'];
    brandImage = json['BrandImage'];
    maxSKUOrderCount = json['MaxSKUOrderCount'];
    active = json['Active'];
    dealPrice = json['DealPrice'];
    productAliasName = json['ProductAliasName'];
    dealMaxQty = json['DealMaxQty'];
    numCustomer = json['NumCustomer'];
    dosageForm = json['DosageForm'];
    schemeFreeBaseQtyOfferText = json['SchemeFreeBaseQtyOfferText'];
    lastMRP = json['LastMRP'];
    pKLotId = json['PKLotId'];
    primaryDisease = json['PrimaryDisease'];
    keywords = json['Keywords'];
    appDiscount = json['AppDiscount'];
    offerImage = json['OfferImage'];
    bBHighDisc = json['BBHighDisc'];
    productImage = json['ProductImage'];
    mRP = json['MRP'];
    isNew = json['IsNew'];
    isOutOfStock = json['IsOutOfStock'];
    interactiveSubModule = json['InteractiveSubModule'];
    appOfferPrice = json['AppOfferPrice'];
    pTR = json['PTR'];
    hasOffer = json['HasOffer'];
    dosageRestriction = json['DosageRestriction'];
    displayName = json['DisplayName'];
    prescriptionOTC = json['PrescriptionOTC'];
    offerCategoryId = json['OfferCategoryId'];
    orderCount = json['OrderCount'];
    custOfferPrice = json['CustOfferPrice'];
    isRedeemable = json['IsRedeemable'];
    recentProductCount = json['RecentProductCount'];
    pTRDiscPercent = json['PTRDiscPercent'];
    numRating = json['NumRating'];
    isGiftableProduct = json['IsGiftableProduct'];
    productStatus = json['ProductStatus'];
    customScoreManipulator = json['CustomScoreManipulator'];
    custDiscPercent = json['CustDiscPercent'];
    routeId = json['RouteId'];
    deliveryDelayedDay = json['DeliveryDelayedDay'];
    schemeFreeBaseQty = json['SchemeFreeBaseQty'];
    recentCustCount = json['RecentCustCount'];
    sKUOrderCount = json['SKUOrderCount'];
    unitPrice = json['UnitPrice'];
    isFoodProduct = json['IsFoodProduct'];
    displayRank = json['DisplayRank'];
    isCourierable = json['IsCourierable'];
    offerCategory = json['OfferCategory'];
    strength = json['Strength'];
    isCustomizable = json['IsCustomizable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.salts != null) {
      data['Salts'] = this.salts!.toJson();
    }
    data['InteractiveModule'] = this.interactiveModule;
    data['ProductName'] = this.productName;
    data['MfgGroup'] = this.mfgGroup;
    data['ExpiryDate'] = this.expiryDate;
    data['IsPurchased'] = this.isPurchased;
    data['DocumentId'] = this.documentId;
    data['ProductId'] = this.productId;
    data['GroupSize'] = this.groupSize;
    data['RefProductId'] = this.refProductId;
    data['DisplayFactor'] = this.displayFactor;
    data['IsFlashSaleOn'] = this.isFlashSaleOn;
    data['DosageFormDisplaySeq'] = this.dosageFormDisplaySeq;
    data['BBFlashSaleSoldPercent'] = this.bBFlashSaleSoldPercent;
    data['ProductShortDescription'] = this.productShortDescription;
    data['ApplyPincodeWiseDiscount'] = this.applyPincodeWiseDiscount;
    data['AvgRating'] = this.avgRating;
    data['OfferTitle'] = this.offerTitle;
    data['EncodeProdId'] = this.encodeProdId;
    data['DosageAlert'] = this.dosageAlert;
    data['MinQty'] = this.minQty;
    data['RecentOrderCount'] = this.recentOrderCount;
    data['IsFeatured'] = this.isFeatured;
    data['Brand'] = this.brand;
    data['BrandImage'] = this.brandImage;
    data['MaxSKUOrderCount'] = this.maxSKUOrderCount;
    data['Active'] = this.active;
    data['DealPrice'] = this.dealPrice;
    data['ProductAliasName'] = this.productAliasName;
    data['DealMaxQty'] = this.dealMaxQty;
    data['NumCustomer'] = this.numCustomer;
    data['DosageForm'] = this.dosageForm;
    data['SchemeFreeBaseQtyOfferText'] = this.schemeFreeBaseQtyOfferText;
    data['LastMRP'] = this.lastMRP;
    data['PKLotId'] = this.pKLotId;
    data['PrimaryDisease'] = this.primaryDisease;
    data['Keywords'] = this.keywords;
    data['AppDiscount'] = this.appDiscount;
    data['OfferImage'] = this.offerImage;
    data['BBHighDisc'] = this.bBHighDisc;
    data['ProductImage'] = this.productImage;
    data['MRP'] = this.mRP;
    data['IsNew'] = this.isNew;
    data['IsOutOfStock'] = this.isOutOfStock;
    data['InteractiveSubModule'] = this.interactiveSubModule;
    data['AppOfferPrice'] = this.appOfferPrice;
    data['PTR'] = this.pTR;
    data['HasOffer'] = this.hasOffer;
    data['DosageRestriction'] = this.dosageRestriction;
    data['DisplayName'] = this.displayName;
    data['PrescriptionOTC'] = this.prescriptionOTC;
    data['OfferCategoryId'] = this.offerCategoryId;
    data['OrderCount'] = this.orderCount;
    data['CustOfferPrice'] = this.custOfferPrice;
    data['IsRedeemable'] = this.isRedeemable;
    data['RecentProductCount'] = this.recentProductCount;
    data['PTRDiscPercent'] = this.pTRDiscPercent;
    data['NumRating'] = this.numRating;
    data['IsGiftableProduct'] = this.isGiftableProduct;
    data['ProductStatus'] = this.productStatus;
    data['CustomScoreManipulator'] = this.customScoreManipulator;
    data['CustDiscPercent'] = this.custDiscPercent;
    data['RouteId'] = this.routeId;
    data['DeliveryDelayedDay'] = this.deliveryDelayedDay;
    data['SchemeFreeBaseQty'] = this.schemeFreeBaseQty;
    data['RecentCustCount'] = this.recentCustCount;
    data['SKUOrderCount'] = this.sKUOrderCount;
    data['UnitPrice'] = this.unitPrice;
    data['IsFoodProduct'] = this.isFoodProduct;
    data['DisplayRank'] = this.displayRank;
    data['IsCourierable'] = this.isCourierable;
    data['OfferCategory'] = this.offerCategory;
    data['Strength'] = this.strength;
    data['IsCustomizable'] = this.isCustomizable;
    return data;
  }
}

class Salts {
  String? nameSearch;
  String? saltStrengthRaw;
  String? saltStrength;
  String? id;
  String? code;
  String? name;

  Salts(
      {this.nameSearch,
        this.saltStrengthRaw,
        this.saltStrength,
        this.id,
        this.code,
        this.name});

  Salts.fromJson(Map<String, dynamic> json) {
    nameSearch = json['NameSearch'];
    saltStrengthRaw = json['SaltStrengthRaw'];
    saltStrength = json['SaltStrength'];
    id = json['Id'];
    code = json['Code'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NameSearch'] = this.nameSearch;
    data['SaltStrengthRaw'] = this.saltStrengthRaw;
    data['SaltStrength'] = this.saltStrength;
    data['Id'] = this.id;
    data['Code'] = this.code;
    data['Name'] = this.name;
    return data;
  }
}