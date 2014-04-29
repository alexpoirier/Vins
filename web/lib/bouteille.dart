import 'vindb.dart';

/*---------------------------------------------------------------
 * Classe : Bouteille
 * Fonction : 
 *    AfficherBouteille
 *    AfficherBoutDispo
 *    AfficherBoutBu
 *    AjouterBouteille
 *    NoterBout
 * Description : Classe servant à faire le lien entre l'application et 
 *                les tables bouteilles et marques
 -----------------------------------------------------------------*/
class Bouteille {
  
  /*-----------------------------
   * Constructeur 
   -------------------------------*/
  Bouteille() {
    
  }
  
  /* ----------------------------------------------------------------------------
   * AfficherBouteille
   * Paramètre : pPool : Connecteur
   * Description : Sert à afficher le contenu de la table bouteille uniquement
   -----------------------------------------------------------------------------*/
  void AfficherBouteille(var pPool){    
    AfficherVue(pPool, 'select RefBout, AnBout, Degre, Achat, Garde, CmtBout, OuvBout, '
                            'EmplBout, RefMarque, Prix, DateBu, NoteBu, CmtBu FROM Bouteille '
                    'from Bouteille', 13);    
  }
  
  /* ----------------------------------------------------------------------------
    * AfficherBoutDispo
    * Paramètre : pPool : Connecteur
    * Description : Sert à afficher le les bouteilles de vins disponibles
    -----------------------------------------------------------------------------*/
  void AfficherBoutDispo(var pPool){    
    AfficherVue(pPool, "SELECT B.RefBout, M.NomMarque, M.RegionMarque, M.Cepage, M.Couleur, "
                          "M.Pastille, B.AnBout, B.Prix, B.Degre, B.Achat, B.Garde, "
                          "B.CmtBout, B.OuvBout,  B.EmplBout "
                          "FROM Bouteille AS B "
                          "INNER JOIN Marque AS M ON B.RefMarque = M.RefMarque "
                          "WHERE B.EmplBout <> 'Bu' "
                          "ORDER BY B.RefMarque ", 14);    
  }
  
  /* ----------------------------------------------------------------------------
    * AfficherBoutBu
    * Paramètre : pPool : Connecteur
    *             pTri : Tri demander (Nom ou Note)
    * Description : Sert à afficher la liste des bouteilles butes 
    -----------------------------------------------------------------------------*/
  void AfficherBoutBu(var pPool, var pTri){    
    var strSql = '';
    if (pTri == 'Nom'){
      strSql = "SELECT M.NomMarque, M.RegionMarque, M.Cepage, M.Couleur, M.Pastille, B.AnBout, "
                  "B.Prix, B.DateBu, B.NoteBu, B.CmtBu "
              "FROM Bouteille AS B "
              "INNER JOIN Marque AS M ON B.RefMarque = M.RefMarque "
              "WHERE B.EmplBout = 'Bu' ORDER By M.NomMarque";
    }
    else if (pTri == 'Note') {
      strSql = "SELECT  B.NoteBu, M.NomMarque, M.RegionMarque, M.Cepage, M.Couleur, M.Pastille, B.AnBout, "
                        "B.Prix, B.DateBu,B.CmtBu "
                    "FROM Bouteille AS B "
                    "INNER JOIN Marque AS M ON B.RefMarque = M.RefMarque "
                    "WHERE B.EmplBout = 'Bu' ORDER By B.NoteBu desc, M.NomMarque";
    }
    AfficherVue(pPool, strSql, 10);
                    
  }
  
  /* ----------------------------------------------------------------------------
    * AjouterBouteille
    * Paramètre : pPool : Connecteur
    *             pRef : Ref de la marque associée à la bouteille
    *             (Autres) : Champs de la table
    * Description : Sert à ajouter une bouteille dans la table
    -----------------------------------------------------------------------------*/
  void AjouterBouteille(var pPool, var pRef, var pAn, var pDeg, var pAchat, var pGar, var pCBo, 
                        var pOBo, var pEBo, var pPri ){    
    pPool.prepare('insert into bouteille (AnBout, Degre, Achat, Garde, CmtBout, OuvBout, EmplBout, '
                      'RefMarque, Prix) '
                       'values (?, ?, ?, ?, ?, ?, ?, ?, ?)').then((query) {
      query.execute([pAn, pDeg, pAchat, pGar, pCBo, pOBo, pEBo, pRef, pPri]).then((result) {

     });
   });    
  }
  
  /* ----------------------------------------------------------------------------
    * NoterBout
    * Paramètre : pPool : Connecteur
    *             pRef : Clé de la bouteille à modifier
    *             (Autres) Champs à inscrire dans la BD
    * Description : Sert à noter une bouteille bue.
    -----------------------------------------------------------------------------*/
  void NoterBout(var pPool, var pRef, var pDat, var pNote, var pCmt){    
    var strSql = "UPDATE Bouteille SET DateBu = '${pDat}', NoteBu = ${pNote}, CmtBu = '${pCmt}', EmplBout = 'Bu' "
                    "WHERE RefBout = ${pRef}";
    MajBd(pPool, strSql);
   
  }  
}
