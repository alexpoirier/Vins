
/* ----------------------------------------------------------------------------
  * AfficherVue
  * Paramètre : pPool : Connecteur
  *             pReq : Chaine de caractère de la requète
  *             pChp : Nombre de champs contenu dans la requète
  * Description : Sert à réaliser une requête dans la BD
  -----------------------------------------------------------------------------*/
void AfficherVue(var pPool, var pReq, var pChp){  
  var strSql;
  pPool.query(pReq).then((result) {    
    result.forEach((row) {
        strSql = '';
        for (var Cpt=0; Cpt<pChp; Cpt++) {
          if (row[Cpt] != ''){
            if (strSql != '')
              strSql = '${strSql} - ';
            strSql = '${strSql}${row[Cpt]}';
          }          
        }
        print(strSql);
    });    
  });  
}

/* ----------------------------------------------------------------------------
  * MajBd
  * Paramètre : pPool : Connecteur
  *             pReq : Chaine de caractère de la mise à jour
  * Description : Sert à réaliser une requête de UPDATE dans la BD
  -----------------------------------------------------------------------------*/
void MajBd(var pPool, var pReq){    
    pPool.startTransaction().then((trans) {
        trans.query(pReq).then((result) {
            trans.commit().then((result2) {
          });
        });
    });
    print("Maj réussie");
}

/*pPool.query('select * from Marque').then((result) {    
    result.forEach((row) {
        print('Name: ${row.RefMarque}, email: ${row.NomMarque}');
    });    
  });*/