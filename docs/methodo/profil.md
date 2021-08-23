## Impacts des profils

> *Profil : Un modèle qui rassemble les membres du personnel ayant un usage du numérique similaire dans leurs équipements et dans leur utilisation des services.*


#### Impact d’un profil


Les impacts des profils résident dans leurs équipements
Les impacts des équipements sur les profils dépendent de leur politique d’achat ainsi que de leurs usages.

```
ImpactProfilParAn(p) = SUM(ImpactEquipementSurProfilParAn((e,p)))
```

#### Part d’utilisation de l'équipement partagé

Certains équipements sont utilisés partiellement par plusieurs utilisateurs. On appelle ici ces équipements les équipements partagés. C’est le cas des imprimantes par exemple. La part d’utilisation permet de définir quelle est la proportion d'utilisation de l’équipement par le profil dans l’utilisation totale. On multiplis les impacts de l’équipement par la part d’utilisation de l’équipement par le profil

```
ImpactEquipementSurProfil((e,p)) =ImpactBrut(e)*partUtilisation((e,p))
```

#### BYOD ou COPE

* Le BYOD (Bring Your Own Device) consiste à proposer aux salariés d’utiliser leurs propres matériels informatiques dans le cadre de leur travail. L’entreprise peut subventionner le salarié pour l’achat ou l'entretien du matériel.

* Le COPE (Corporate-Owned Personally-Enabled) consiste à proposer aux salariés de pouvoir utiliser le matériel informatique fournis par l’entreprise à dans le cadre personnel.
Ces deux approches permettent d’éviter un achat d’équipements personnels/professionnels aux salariés. On considère que les impacts de l’équipement sont répartis entre le salarié et l’entreprise selon une clef de réparation par défaut de un demi pour le salarié dans son cadre privé et un demi dans le cadre professionnel. Seul l’impact du cadre professionnel est évalué ici. On multiplie l’impact de l'équipement par la clef de répartition des impacts de l’entreprise. Par défaut par 0.5.

```
ImpactEquipementSurProfil((e,p)) =Impact(e)*ClefRepartitionImpact(o)
```
