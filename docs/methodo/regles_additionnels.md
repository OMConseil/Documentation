# Règles additionnels

#### Quantité

Il correspond à la quantité d’un équipement spécifique contenu dans une infrastructure. On multiplie les impacts d’un équipement par la quantité d’équipement utilisé par l’infrastructure

```
ImpactEquipementSurInfrastructure((e,i))=ImpactBrut(e)*nbEquipement((e,i))
```

#### Durée de vie

La durée de vie de chaque équipement est prise en compte. Une durée de vie par défaut par type d’équipement est utilisée si la politique de renouvellement n’est pas spécifiée. 
D’un côté, l’augmentation de la durée de vie entraîne une diminution de l’impact par an : on divise les impacts de l’équipement par la durée de vie pour avoir l’impact par an.
De l’autre côté l’augmentation de la durée de vie entraîne une augmentation de l’impact puisqu’il augmente l’impact de la phase d’utilisation : on retire l’impact de l’utilisation pris de nos sources de données et on le remplace par l’impact de l’utilisation calculée en fonction de la durée de vie réelle.

```
ImpactEquipementSurInfrastructureParAn((e,i)) =ImpactBrut(e)-ImpactUtilisationHypothèse((e,i))+ImpactUtilisationReel((e,i))/AnneesUtilisation((e,i))
```

#### Achat reconditionné

Le reconditionnement est considéré dans les calculs comme un allongement de la durée de vie à partir de la durée de vie moyenne de l’équipement. En d’autres termes, on considère qu’un équipement acheté reconditionné est un équipement dont la durée de vie est augmentée d’autant d’années que le stipule la politique de renouvellement. 
Pour obtenir l’impact d’un équipement par an, on divise l’impact global par sa durée de vie (durée de vie moyen pré reconditionnement + durée de vie de l’appareil post reconditionnement/dans l’entreprise actuelle). 

```
ImpactEquipementSurInfrastructureParAn((e,i)) =ImpactBrut(e) /AnnesAvantReconditionnement(e) + AnneesUtilisation((e,p))
```

