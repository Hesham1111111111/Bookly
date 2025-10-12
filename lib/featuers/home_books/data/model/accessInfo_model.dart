class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final bool? quoteSharingAllowed;
  final String? webReaderLink;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.quoteSharingAllowed,
    this.webReaderLink,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      quoteSharingAllowed: json['quoteSharingAllowed'],
      webReaderLink: json['webReaderLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'quoteSharingAllowed': quoteSharingAllowed,
      'webReaderLink': webReaderLink,
    };
  }
}
