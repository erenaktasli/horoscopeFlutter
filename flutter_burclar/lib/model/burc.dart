class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => this._burcAdi;

// set burcAdi(final value) => this._burcAdi = value;

  get burcTarihi => this._burcTarihi;

 //set burcTarihi( value) => this._burcTarihi = value;

  get burcDetayi => this._burcDetayi;

 //set burcDetayi( value) => this._burcDetayi = value;

  get burcKucukResim => this._burcKucukResim;

 //set burcKucukResim( value) => this._burcKucukResim = value;

  get burcBuyukResim => this._burcBuyukResim;

 //set burcBuyukResim( value) => this._burcBuyukResim = value;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);

  @override
  String toString() {
    // TODO: implement toString
    return '$_burcAdi - $_burcBuyukResim';
  }
}
