# Impacts brute des équipements

*Équipements : Matériel informatique*

Chacun des impacts dits “brutes” retenus pour un équipement peuvent-être récupéré selon les méthodologies suivantes dans l’ordre de pertinence (voir liste des référentiels constructeurs/fournisseur) :


#### 1 Donnée de source fiable

Les données sont récupérées depuis un référentiel indépendant des constructeurs. Elles sont le résultat d’une ACV. Référentiels pas encore disponible


#### 2 Données constructeur ou fournisseur

Les données sont récupérées depuis le référentiel du producteur ou du fournisseur. Si les données ne sont pas disponibles, une demande peut être effectuée. Les données du producteur doivent être le résultat d’une ACV.
Si l’impact de l’étape d’utilisation n’est pas disponible dans le référentiel du producteur ou du fournisseur, on le calcule au prorata de l’impact global à partir d’un taux d’impact de l’utilisation définis en fonction du type d’équipement.

#### 3 Équipements d’interconnexion - par puissance nominal (Seulement pour les équipements d'interconnexion)

L’impact Cradle-to-gate est fixé à 80 kgCO2eq. L’impact de l’utilisation est calculé à partir de la puissance nominale de l’équipement :
``` 
ImpactUtilisation(e) =(puissanceNominal(e)*0,55*heureUtilisationJournalière(e)*JoursUtilisation(e)*AnneeUtilisation(e)*facteurImpactCarboneElectricite(e))/1000
```

#### 4 Impact d’un cœur virtuel (vCPU) - pour les infrastructures cloud

L’impact (sur tout son cycle de vie) d’un serveur est divisé par le nombre maximal de CPU virtuel (vCPU) qu’il possède.


#### 5 Données d’abaque

À partir du type d'équipement, on récupère les données d’impact dans les abaques. Les abaques proviennent de sources fiables (ADEME).






