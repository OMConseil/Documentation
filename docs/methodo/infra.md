# Impacts des infrastructures

*Infrastructure : Ensemble de matériel informatique, fonctionnant conjointement pour fournir un service. Exemple : infrastructure réseau, Datacenter...*

#### Impact d’une infrastructure

Les impacts des infrastructures résident dans leurs équipements

```
ImpactInfrastructureParAn(i) = SUM(ImpactEquipementSurInfrastructureParAn((e,i)))
```

#### Impact d’un équipement sur une infrastructure

```
ImpactEquipementSurInfrastructureParAn((e,i)) =(ImpactBrut(e)-ImpactUtilisationHypothèse((e,i))+ImpactUtilisationReel((e,i)))*nbEquipement((e,i))/AnnesAvantReconditionnement(e) + AnneesUtilisation((e,i))
```
