import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Noticia extends StatelessWidget {
  var _img;
  var _titulo;
  var _data;
  var _descricao;

  BuildContext _context;

  Noticia(this._img, this._titulo, this._data, this._descricao);

  @override
  Widget build(BuildContext context) {
    this._context = context;

    // TODO: implement build
    return new Container(

      margin: const EdgeInsets.only(
          left: 10.0, right: 10.0, bottom: 10.0, top: 0.0),

      child: new Material(

        borderRadius: new BorderRadius.circular(6.0),
        elevation: 2.0,


        child: _getListTile(),

      ),


    );
  }


  Widget _getListTile() {

    return new Container(

      height: 95.0,


      child: new Row(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          new FadeInImage.assetNetwork(placeholder: '', image: this._img, fit: BoxFit.cover, width: 95.0, height: 95.0,),

          _getColumText(this._titulo, this._data, this._descricao),
              
        ],
      ),


    );

  }


Widget _getColumText(titulo, data, descricao){

    return new Expanded(

      child: new Container(

        margin: new EdgeInsets.all(10.0),

        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            _getTituloWidget(this._titulo),
            _getDataWidget(this._data),
            _getDescricaoWidget(this._descricao)


          ],


        ),


      ),



    );

}


Widget _getTituloWidget(String titulo){
    return new Text(titulo, maxLines: 1, style: new TextStyle(fontWeight: FontWeight.bold));
}

Widget _getDataWidget(String data){
    return new Text(data, style: new TextStyle(color: Colors.grey, fontSize: 10.0));
}

Widget _getDescricaoWidget(String descricao){
    return new Container(
      margin: new EdgeInsets.only(top: 5.0),
     child: new Text(descricao, maxLines: 2,),
    );
}



}