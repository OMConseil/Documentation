# Impacts de l’utilisation des équipements

#### Durée de vie réel de la phase d’utilisation

Les données récupérées sont calculées pour une certaine durée de vie prise en hypothèse. Il est nécessaire d'effectuer une manipulation sur les données pour les rapporter à la durée de vie réelle. 

On calcule pour chacun des équipements l’impact annuel de la phase d’utilisation :
``` 
ImpactUtilisationParAnHypothèse(e) =ImpactUtilisation(e)/AnneeUtilisationHypothese(e)
``` 
L’augmentation de la durée de vie réduit l’impact annuel des équipements. Mais cette augmentation a également un effet augmentant puisqu'elle augmente l’impact de la phase d’utilisation. Pour connaître l’impact de la phase d’utilisation d’un équipement sachant la durée de vie réel on utilise la fonction suivante
``` 
ImpactUtilisationReel(e) = ImpactUtilisationParAnHypothèse(e)*DuréeDeVieReel(e)
``` 
Une fois la durée de vie connus on remplace l’impact de l’utilisation en hypothèse par l’impact réelle

#### Facteur d’impact

Les données d’impacts des différentes phases du cycle de vie sont récupérées à partir de facteurs d’impacts relatifs aux zones géographique où la phase c'est déroulée. On considère que l'ensemble des équipements présent dans notre référentiel sont utilisés en France. Aussi, pour la phase d’utilisation, il est nécessaire d’effectuer une manipulation sur les données pour rapporter l’impact de l’utilisation au facteur d’impact français. 

``` 
ImpactUtilisationFrance(e) = (ImpactUtilisationBrute(e)/FacteurImpactBrute(e))*facteurImpactFrance(e)
``` 

