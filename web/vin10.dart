import 'dart:html';
import 'package:sqljocky/sqljocky.dart';
import 'package:sqljocky/utils.dart';
import 'lib/marque.dart';
import 'lib/bouteille.dart';


void main() {
  
  var pool = CreerPool('localhost', 3306, 'root', 'alexpoi23', 'vinidb');
          
  var cMarque = new Marque();
  var cBout= new Bouteille();  
    
  window.location.replace('SaisBu.html');
  
  /*if (querySelector('#txtAnnee').value == 'SaisBout'){
  
    cMarque.AjouterBoutMarque(pPool, querySelector('#txtMarque').value, querySelector('#txtReg').value,
        querySelector('#selCepage').value, querySelector('#selCoul').value, querySelector('#selPast').value,
        querySelector('#txtAn').value, querySelector('#txtDeg').value, querySelector('#txtAchat').value, 
        querySelector('#txtGarde').value, querySelector('#txtCmt').value, querySelector('#txtOuv').value,
        querySelector('#selEmpl').value, querySelector('#txtPrix').value);   
             
  }
  else if (querySelector('#txtAnnee').value == 'SaisBu'){
    cBout.NoterBout(pPool, querySelector('#selBout').value, querySelector('#txtBu').value,
        querySelector('#selEmpl').value, querySelector('#txtNote').value, querySelector('#txtCmt').value);
  }
  else {
    document.querySelector('#Liste').innerHtml = '${AffBout(lstBout)}';
  }*/
    
  //TesterFonction(pool, cBout, cMarque);
  
  pool.close();
}

/* ----------------------------------------------------------------------------
  * CreerPool
  * Paramètre :(Autres) : Champs de la connection
  * Description : Créer la connection
  -----------------------------------------------------------------------------*/
ConnectionPool CreerPool(var pHost, var pPort, var pUser, var pPwd, var pDB) {
  return new ConnectionPool(host: pHost, port: pPort, user: pUser, password: pPwd, db: pDB);
}

void TesterFonction(var pPool, var pBout, var pMarque){

  //pMarque.AjouterMarque(pPool, 'Le bonheur', 'Afrique du sud', 'Cabernet-Sauvignon', 'Rouge', '');
  /*pMarque.AjouterBoutMarque(pPool, 'Greg Norman Limestone', 'Australie', 'Cabernet-Merlot', 'Rouge', 
                           'Aromatique-Charnu', 2010, 17, '2014-01-01', 2015, '', '', 
                           'Haut', 22.95);*/
  //pMarque.AfficherMarque(pPool);  
  
  //pBout.AfficherBouteille(pPool);
  pBout.AfficherBoutDispo(pPool);
  //pBout.AfficherBoutBu(pPool, 'Nom');
  //pBout.AfficherBoutBu(pPool, 'Note');
  //pBout.NoterBout(pPool, 20, '2014-01-31', 7.5, 'Bon');
  
}

/*void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector("#sample_text_id").text = buffer.toString();
}*/