# Timeline lors d'un problème avec liveness probe

(durées en secondes)

- T=0 liveness probe, tout va bien, status = OK
- T=1 probème, le container ne répond plus
- T=10 liveness probe, timeout, err = 1
- T=20 liveness probe, timeout, err = 2
- T=30 liveness probe, timeout, err = 3 = threshold
- T=30 kubernetes décide de redémarrer le container
- T=30 kubernetes envoie un signal au container
- T=60 expiration de la "grace period" des signaux
- T=60 kubernetes kill le container
- T=60+epsilon démarrage du nouveau container

Bilan : environ 1 minute entre le problème et sa résolution
