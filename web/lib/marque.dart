import 'vindb.dart';
import 'bouteille.dart';

/*---------------------------------------------------------------
 * Classe : Marque
 * Fonction : 
 *    AfficherMarque
 *    AjouterBoutMarque
 * Description : Classe servant à faire le lien entre l'application et 
 *                la table marque
 -----------------------------------------------------------------*/
class Marque {
  
  /*-----------------------------
   * Constructeur 
   -------------------------------*/ 
  Marque() {
    
  }
  
  /* ----------------------------------------------------------------------------
   * AfficherMarque
   * Paramètre : pPool : Connecteur
   * Description : Sert à afficher le contenu de la table Marque uniquement
   ---------------------------------------------------------------------------- */
  void AfficherMarque(var pPool){    
    AfficherVue(pPool, 'select RefMarque, NomMarque, RegionMarque, Cepage, Couleur, Pastille '
                    'from Marque', 6);    
  }  
  
  /* ----------------------------------------------------------------------------
    * AjouterBoutMarque
    * Paramètre : pPool : Connecteur
    *             (Autres) : Champs de la table
    * Description : Sert à ajouter une bouteille dans la table
    -----------------------------------------------------------------------------*/
  void AjouterBoutMarque(var pPool, var pNom, var pReg, var pCep, var pCoul, var pPast,
                        var pAn, var pDeg, var pAchat, var pGar, var pCBo, var pOBo, var pEBo, 
                         var pPri){
    var cBout= new Bouteille();
    
    pPool.prepare('insert into marque (NomMarque, RegionMarque, Cepage, Couleur, Pastille) '
                   'values (?, ?, ?, ?, ?)').then((query) {
      query.execute([pNom, pReg, pCep, pCoul, pPast]).then((result) {
        cBout.AjouterBouteille(pPool, result.insertId, pAn, pDeg, pAchat, pGar, pCBo, pOBo, pEBo, pPri);
     });
   });
  }
}
