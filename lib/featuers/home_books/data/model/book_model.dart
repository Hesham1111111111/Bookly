// Book Volume Model
class BookModel {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo:
      json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>)
          : null,
      saleInfo:
      json['saleInfo'] != null
          ? SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>)
          : null,
      accessInfo:
      json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>)
          : null,
      searchInfo:
      json['searchInfo'] != null
          ? SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo?.toJson(),
      'saleInfo': saleInfo?.toJson(),
      'accessInfo': accessInfo?.toJson(),
      'searchInfo': searchInfo?.toJson(),
    };
  }
}

// Volume Info Model
class VolumeInfo {
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String?,
      industryIdentifiers:
      (json['industryIdentifiers'] as List<dynamic>?)
          ?.map(
            (item) =>
            IndustryIdentifier.fromJson(item as Map<String, dynamic>),
      )
          .toList(),
      readingModes:
      json['readingModes'] != null
          ? ReadingModes.fromJson(
        json['readingModes'] as Map<String, dynamic>,
      )
          : null,
      pageCount: json['pageCount'] as int?,
      printType: json['printType'] as String?,
      categories: (json['categories'] as List<dynamic>?)?.cast<String>(),
      maturityRating: json['maturityRating'] as String?,
      allowAnonLogging: json['allowAnonLogging'] as bool?,
      contentVersion: json['contentVersion'] as String?,
      panelizationSummary:
      json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(
        json['panelizationSummary'] as Map<String, dynamic>,
      )
          : null,
      imageLinks:
      json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>)
          : null,
      language: json['language'] as String?,
      previewLink: json['previewLink'] as String?,
      infoLink: json['infoLink'] as String?,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'authors': authors,
      'publisher': publisher,
      'publishedDate': publishedDate,
      'description': description,
      'industryIdentifiers':
      industryIdentifiers?.map((item) => item.toJson()).toList(),
      'readingModes': readingModes?.toJson(),
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'panelizationSummary': panelizationSummary?.toJson(),
      'imageLinks': imageLinks?.toJson(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }
}

// Industry Identifier Model
class IndustryIdentifier {
  final String? type;
  final String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String?,
      identifier: json['identifier'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'identifier': identifier};
  }
}

// Reading Modes Model
class ReadingModes {
  final bool? text;
  final bool? image;

  ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'] as bool?,
      image: json['image'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'text': text, 'image': image};
  }
}

class PanelizationSummary {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'] as bool?,
      containsImageBubbles: json['containsImageBubbles'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'containsEpubBubbles': containsEpubBubbles,
      'containsImageBubbles': containsImageBubbles,
    };
  }
}

// Image Links Model
class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'smallThumbnail': smallThumbnail, 'thumbnail': thumbnail};
  }
}

// Sale Info Model
class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final Price? listPrice;
  final Price? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
      listPrice:
      json['listPrice'] != null
          ? Price.fromJson(json['listPrice'] as Map<String, dynamic>)
          : null,
      retailPrice:
      json['retailPrice'] != null
          ? Price.fromJson(json['retailPrice'] as Map<String, dynamic>)
          : null,
      buyLink: json['buyLink'] as String?,
      offers:
      (json['offers'] as List<dynamic>?)
          ?.map((item) => Offer.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
      'listPrice': listPrice?.toJson(),
      'retailPrice': retailPrice?.toJson(),
      'buyLink': buyLink,
      'offers': offers?.map((item) => item.toJson()).toList(),
    };
  }
}

// Price Model
class Price {
  final double? amount;
  final String? currencyCode;

  Price({this.amount, this.currencyCode});

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      amount: (json['amount'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'amount': amount, 'currencyCode': currencyCode};
  }
}

// Offer Model
class Offer {
  final int? finskyOfferType;
  final OfferPrice? listPrice;
  final OfferPrice? retailPrice;

  Offer({this.finskyOfferType, this.listPrice, this.retailPrice});

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      finskyOfferType: json['finskyOfferType'] as int?,
      listPrice:
      json['listPrice'] != null
          ? OfferPrice.fromJson(json['listPrice'] as Map<String, dynamic>)
          : null,
      retailPrice:
      json['retailPrice'] != null
          ? OfferPrice.fromJson(json['retailPrice'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'finskyOfferType': finskyOfferType,
      'listPrice': listPrice?.toJson(),
      'retailPrice': retailPrice?.toJson(),
    };
  }
}

// Offer Price Model
class OfferPrice {
  final int? amountInMicros;
  final String? currencyCode;

  OfferPrice({this.amountInMicros, this.currencyCode});

  factory OfferPrice.fromJson(Map<String, dynamic> json) {
    return OfferPrice(
      amountInMicros: json['amountInMicros'] as int?,
      currencyCode: json['currencyCode'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'amountInMicros': amountInMicros, 'currencyCode': currencyCode};
  }
}

// Access Info Model
class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final EpubInfo? epub;
  final PdfInfo? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'] as String?,
      viewability: json['viewability'] as String?,
      embeddable: json['embeddable'] as bool?,
      publicDomain: json['publicDomain'] as bool?,
      textToSpeechPermission: json['textToSpeechPermission'] as String?,
      epub:
      json['epub'] != null
          ? EpubInfo.fromJson(json['epub'] as Map<String, dynamic>)
          : null,
      pdf:
      json['pdf'] != null
          ? PdfInfo.fromJson(json['pdf'] as Map<String, dynamic>)
          : null,
      webReaderLink: json['webReaderLink'] as String?,
      accessViewStatus: json['accessViewStatus'] as String?,
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'textToSpeechPermission': textToSpeechPermission,
      'epub': epub?.toJson(),
      'pdf': pdf?.toJson(),
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
      'quoteSharingAllowed': quoteSharingAllowed,
    };
  }
}

// Epub Info Model
class EpubInfo {
  final bool? isAvailable;
  final String? acsTokenLink;
  final String? downloadLink;

  EpubInfo({this.isAvailable, this.acsTokenLink, this.downloadLink});

  factory EpubInfo.fromJson(Map<String, dynamic> json) {
    return EpubInfo(
      isAvailable: json['isAvailable'] as bool?,
      acsTokenLink: json['acsTokenLink'] as String?,
      downloadLink: json['downloadLink'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'acsTokenLink': acsTokenLink,
      'downloadLink': downloadLink,
    };
  }
}

// Pdf Info Model
class PdfInfo {
  final bool? isAvailable;
  final String? acsTokenLink;

  PdfInfo({this.isAvailable, this.acsTokenLink});

  factory PdfInfo.fromJson(Map<String, dynamic> json) {
    return PdfInfo(
      isAvailable: json['isAvailable'] as bool?,
      acsTokenLink: json['acsTokenLink'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'isAvailable': isAvailable, 'acsTokenLink': acsTokenLink};
  }
}

// Search Info Model
class SearchInfo {
  final String? textSnippet;

  SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(textSnippet: json['textSnippet'] as String?);
  }

  Map<String, dynamic> toJson() {
    return {'textSnippet': textSnippet};
  }
}
