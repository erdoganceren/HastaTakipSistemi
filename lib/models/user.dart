class User {
  String _tCNO;
  String _sifre;
  String _adSoyad;
  String _telNo;
  String _kullaniciTipi;
  String _hastalik;
  String _adres;
  String _detay;
  String _icmesiGerekenSu;
  String _kalpAtisi;
  String _atilanAdim;

  User(
      {String tCNO,
      String sifre,
      String adSoyad,
      String telNo,
      String kullaniciTipi,
      String hastalik,
      String adres,
      String detay,
      String icmesiGerekenSu,
      String kalpAtisi,
      String atilanAdim}) {
    this._tCNO = tCNO;
    this._sifre = sifre;
    this._adSoyad = adSoyad;
    this._telNo = telNo;
    this._kullaniciTipi = kullaniciTipi;
    this._hastalik = hastalik;
    this._adres = adres;
    this._detay = detay;
    this._icmesiGerekenSu = icmesiGerekenSu;
    this._kalpAtisi = kalpAtisi;
    this._atilanAdim = atilanAdim;
  }

  String get tCNO => _tCNO;
  set tCNO(String tCNO) => _tCNO = tCNO;
  String get sifre => _sifre;
  set sifre(String sifre) => _sifre = sifre;
  String get adSoyad => _adSoyad;
  set adSoyad(String adSoyad) => _adSoyad = adSoyad;
  String get telNo => _telNo;
  set telNo(String telNo) => _telNo = telNo;
  String get kullaniciTipi => _kullaniciTipi;
  set kullaniciTipi(String kullaniciTipi) => _kullaniciTipi = kullaniciTipi;
  String get hastalik => _hastalik;
  set hastalik(String hastalik) => _hastalik = hastalik;
  String get adres => _adres;
  set adres(String adres) => _adres = adres;
  String get detay => _detay;
  set detay(String detay) => _detay = detay;
  String get icmesiGerekenSu => _icmesiGerekenSu;
  set icmesiGerekenSu(String icmesiGerekenSu) =>
      _icmesiGerekenSu = icmesiGerekenSu;
  String get kalpAtisi => _kalpAtisi;
  set kalpAtisi(String kalpAtisi) => _kalpAtisi = kalpAtisi;
  String get atilanAdim => _atilanAdim;
  set atilanAdim(String atilanAdim) => _atilanAdim = atilanAdim;

  User.fromJson(Map<String, dynamic> json) {
    _tCNO = json['TCNO'];
    _sifre = json['Sifre'];
    _adSoyad = json['AdSoyad'];
    _telNo = json['TelNo'];
    _kullaniciTipi = json['KullaniciTipi'];
    _hastalik = json['Hastalik'];
    _adres = json['Adres'];
    _detay = json['Detay'];
    _icmesiGerekenSu = json['IcmesiGerekenSu'];
    _kalpAtisi = json['KalpAtisi'];
    _atilanAdim = json['AtilanAdim'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TCNO'] = this._tCNO;
    data['Sifre'] = this._sifre;
    data['AdSoyad'] = this._adSoyad;
    data['TelNo'] = this._telNo;
    data['KullaniciTipi'] = this._kullaniciTipi;
    data['Hastalik'] = this._hastalik;
    data['Adres'] = this._adres;
    data['Detay'] = this._detay;
    data['IcmesiGerekenSu'] = this._icmesiGerekenSu;
    data['KalpAtisi'] = this._kalpAtisi;
    data['AtilanAdim'] = this._atilanAdim;
    return data;
  }
}