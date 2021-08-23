## Impacts des services

> *Service : logiciel ou suite de logiciel informatique hébergé(s) sur des datacenters ou en cloud permettant à un profil d’effectuer des tâches*

L'intérêt du calcul des services est d'estimer l’impact des équipements sur lesquels ils sont hébergés quand il est impossible d’obtenir des informations sur ces équipements. C’est notamment le cas pour les services SAAS. On estime l’impact par l’utilisation (approche bottom-up). C’est également un moyen de connaître l'utilisation des services et de les comparer.

L’impact des services résident dans l'utilisation des terminaux, des infrastructures réseau et des datacenters.

Le modèle *“1 byte”* du Shift Project est appliqué pour calculer l’impact carbone des services.

Après avoir récupéré le temps, la consommation en données, le réseau et le type de terminal utilisé de chacun des services (voir méthodologie mener un audit NR) on peut calculer la consommation électrique comme suit

```
ConsoElectriqueService(s) = consoData(s)*(impactDataCenterParOctet+impactReseauParOctet(s))+temps(s)*impactTerminal(s)
```

L’impact par octet du datacenter est estimé à 7.20E-11 kWh
L’impact par octet du réseau est estimé en fonction du type de réseau (voir mener un audit NR)
L’impact par minute du terminal est estimé en fonction du type de terminal (voir mener un audit NR)

A partir du facteur d’impact de l'énergie électrique française le plus récent on récupère l’impact carbone estimé du service

```
ImpactService(s) = ConsoElectriqueService(s) * facteurImpactElectricitéFrance
```
Les analyses des services et des équipements ne sont jamais agrégées. En effet, le modèle 1 byte intègre l’impact des terminaux dans son analyse. Aussi, agréger l'impact des services et des équipements reviendrais à comptabiliser deux fois l’impact de l’utilisation des terminaux. L’analyse des services est donc une analyse parallèle à celle des équipements.