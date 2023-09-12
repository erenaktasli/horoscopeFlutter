import 'package:flutter/material.dart';
import 'package:flutter_burclar/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  //Color appBarRengi = Colors.pink;
  Color appBarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appbarRenginiBul();
    //_generator = PaletteGenerator.fromImage(Image.asset('images/' + widget.secilenBurc.burcBuyukResim));
    //_generator = PaletteGenerator.fromImageProvider(AssetImage(assetName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appBarRengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              'images/' + widget.secilenBurc.burcBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              )),
        ),
      ],
    ));
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    appBarRengi = _generator.dominantColor!.color;
    setState(() {
      
    });
    print(appBarRengi);
  }
}


/*
Center(
      child: Column(children: [
        Text(secilenBurc.burcAdi),
        Text(secilenBurc.burcDetayi),
        Text(secilenBurc.burcTarihi),
      ],
      ),

    ) ,
    */