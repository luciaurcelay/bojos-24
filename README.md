# Notebooks d'IA per Bojos per la Supercomputació

El format amb el que farem les sessions serà el de Jupyter notebooks, que són una eina còmoda
i àgil per a fer exploracions de dades i proves ràpides d'implementació amb Python.

Hi ha dos maneres d'executar els notebooks que us passem: en local (si teniu prou potència
de computació) o en remot (en el nostre cluster). Us recomanem que mentre tingueu les comptes
d'usuari ho feu en remot.

## En remot

Per poder executar els notebooks directament dins del cluster i, per tant,
aprofitant la infraestructura HPC, cal utilitzar una terminal. 

En primer lloc, vinculem el port de Marenostrum a un port del vostre ordinador a través d'una connexió SSH. On hi ha XXX heu de posar el vostre nom d’usuari al cluster. 

```bash
sh run_local.sh XXX 
```

Tot seguit us demanarà la vostra contrasenya (c4cdys.XXX). Assegureu-vos que l'usuari i la contrasenya són els correctes.

```bash
Your user is nct01XXX
Password:
```

En segon lloc, iniciarem el servidor Jupyter i exposarem el port d'aquest servidor dins de l'ordinador Marenostrum.


```bash
bojos-notebooks/notebook-server.sh
```

Si tot va bé, hauríeu de tenir un missatge com aquest:

```bash
Connection successful!
```

A continuació podeu accedir a la web de Jupyter via [http://localhost:55XXX](http://localhost:55).
La contrasenya és `bojos`.

**No tanqueu la terminal.**

## En local

### Descarregar el codi

Hi ha dos opcions de descarregar el codi:

 * Usant git

```bash
git clone https://gitlab.hpai.bsc.es/courses/bojos-notebooks.git
```

 * Descarregant el fitxer .zip

L'enllaç és https://gitlab.hpai.bsc.es/courses/bojos-notebooks/-/archive/master/bojos-notebooks-master.zip

### Preparar el sistema

Heu d'instal-lar certs paquets al vostre sistema python.

Si teniu Conda instal-lat:

```bash
conda install keras jupyter scikit-learn seaborn keras tensorflow matplotlib numpy pandas scipy
```

Si no teniu Conda:

```bash
pip install keras jupyter scikit-learn seaborn keras tensorflow matplotlib numpy pandas scipy
```

### Iniciar el servidor

```hbash
jupyter notebook
```

La pàgina web dels notebooks hauria d'obrir-se automàticament en el vostre navegador per defecte.
