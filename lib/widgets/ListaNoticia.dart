import 'package:exemplo_flutternews/api/NewsApi.dart';
import 'package:exemplo_flutternews/widgets/Noticia.dart';
import 'package:flutter/material.dart';

class ListaNoticia extends StatefulWidget{

final state = _NoticeListPageState();


@override
  _NoticeListPageState createState() => state;



}


class _NoticeListPageState extends State<ListaNoticia> {

  List _news = new List();
  var repositorio = new NewsApi();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: AppBar(),

      body: new Container(
        child: _getListViewWidget(),
      ),

    );
  }


  Widget _getListViewWidget() {
    var list = new ListView.builder(

      itemCount: _news.length,
      padding: new EdgeInsets.only(top: 5.0),

      itemBuilder: (context, index) {
        return _news[index];
      },

    );

    return list;
  }














  loadNoticias() async{

    List result = await repositorio.loadNews();

    setState(() {


      result.forEach( (item) {

        var noticia= new Noticia(
            item['url_img'],
            item['tittle'],
            item['date'],
            item['description']
        );

        _news.add(noticia);

      });


      });



    @override
    void initState(){
      loadNoticias();
    }


    }









}


