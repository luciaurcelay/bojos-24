# Cuadernos de IA para Bojos per la Supercomputació 2024

El formato con el que realizaremos las sesiones será el de Jupyter notebooks, que son una herramienta cómoda
y ágil para realizar exploraciones de datos y pruebas rápidas de implementación con Python.

Hay dos maneras de ejecutar los notebooks que le pasamos: en local (si tiene suficiente potencia
de computación) o en remoto (en nuestro cluster). Recomendamos que mientras tenga las cuentas
de usuario se haga en remoto.

## En remoto

Para poder ejecutar los notebooks directamente dentro del cluster y, por tanto,
aprovechando la infraestructura HPC, es necesario utilizar una terminal.

En primer lugar, **nos conectamos al Marenostrum a través de SSH**, ejecutando la siguiente orden (donde `XXX` son los números concretos del usuario):

```bash
ssh nct01XXX@mn1.bsc.es
```

Acto seguido os pedirá la contraseña. Cuando estéis dentro tendréis que moveros a la carpeta de este taller utilizando:

```bash
cd bojos-ai
```

Reservamos un nodo del Marenostrum ejecutando el siguiente script:

```bash
./remote_server.sh
```

Os saldrá una salida como la siguiente:

```
Jupyter notebook server still not up. Waiting 10 seconds more...
Jupyter notebook server up at port PORT and host HOST
```

donde `PORT` son los 3 dígitos últimos de vuestro usuario (`XXX`) y `HOST` es el nodo que se os ha asignado. Estos dos valores son **muy importantes para el siguiente paso**.


En segundo lugar, descargamos el código en nuestro ordenador:

```bash
git clone https://github.com/luciaurcelay/bojos-24
```


A continuación tenemos que exponer el servidor Jupyter ejecutado en el nodo del Marenostrum a nuestro ordenador, lo que se hace ejecutando el siguiente script **en nuestro ordenador**, donde los valores `PORT` y `HOST` los copiamos del apartado anterior:


```bash
./local_serve.sh PORT HOST
```

A continuación puedes acceder a la web de Jupyter vía [http://localhost:55XXX](http://localhost:55XXX).
La contraseña es `bojos`. donde `XXX` es el valor de `PORT`.

**No cerréis la terminal.**

## En local

### Descargar el código

Hay dos opciones de descargar el código:

 * Usando git

```bash
git clone https://github.com/luciaurcelay/bojos-24
```

 * Descargando el archivo .zip

El enlace es https://github.com/luciaurcelay/bojos-24/archive/refs/heads/main.zip

### Preparar el sistema

Debe instalar ciertos paquetes en su sistema python.

Si tenéis Conda instalado:

```bash
conda install keras jupyter scikit-learn seaborn keras tensorflow matplotlib numpy pandas scipy
```

Si no tenéis Conda:

```bash
pip3 install keras jupyter scikit-learn seaborn keras tensorflow matplotlib numpy pandas scipy
```

### Iniciar el servidor

```bash
jupyter notebook
```

La página web de los notebooks debería abrirse automáticamente en su navegador por defecto.
