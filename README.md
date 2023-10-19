# Pila Lamp en AWS

Utilizaremos una serie de tecnologías para poder ejecutar la práctica:

- SO Debian 12
- Servidos Apache
- Php
- Basede de datos MaiaDB

## 1. Desplegamos un servidor en AWS

- Primero que nada lanzamos una instacia y le damos nombre, tambienpodemos elegir el SO que deseamos para dicho Servidor en este caso elegiré Debian 12.

![Captura1](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/bbf992e3-c2db-4658-a47e-98ad5f4413f9)

- En Segundo lugar seguiremos hacia abajo y elegiremos crear un nuevo par de claves.

![Captura2](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/9c5af9b5-5be0-401c-9ffc-b98e0c2e7109)

- Luego crearemos el par de claves y le daremos nombre. Dichas claves se descargán automaticamente en la carpeta de descargas.

![Captura3](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/98060a92-7664-420a-80ed-2cc8cfcaa443)

- Después configuraremos la red. Elegiremos la red predeterminada o default porque no hace falta que modifiquemos los valores de la red y le damos un nuevo nombre al grupo de seguridad.

![Captura4](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/12998229-1041-484c-98f0-6781e5f46982)

- Por último configuraremos los puertos, seleccionaremos el servicio HTTP para poder abrir los puertos en este caso el puerto 80. En tipo de origen eseleccionamos personalizada y en origen 0.0.0.0/0 para que pueda reconocer que cualquier IP pueda conectarse a nuestro servidor. Cuidado con no poner el puerto 22 que es el que nos permite conectarnos por ssh al servidor por lo tanto le daremos a agregar nueva regla de seguridad para configurar el puerto 80.

![Captura5](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/0e87ecfd-8e2e-4683-8e37-09c5ef5ab39b)

- Habiendo configurado todo le daremos a lanzar instancia y ya se procederia a la creacion de la maquina/Servidor. Luedo le damos a ver todas las instancias y nos llevaria a ver que ya esrtaria creada.

![Captura6](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/975eb20b-81c3-4231-af93-81894433ed16)

## 2. Procederemos a iniciar el Servidor

- Primero haremos click derecho sobre la instancia que hemmos creado anteriormente y le damos a Conectar. Esto nos derivaria hacia otra página para poder conectarnos por ssh través del terminal de nuestro equipo anfritión. 

![Captura7](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/3d62525f-417e-45f2-aa4b-3d0a4d4aab11)

- Luego nos iremos a nuestro terminal e iremos hacia la carpeta donde tenemos las claves que nos hemos descargado anteriormente. Copiamos el comando que nos aparece (chmod...) y lo ejecutamos para cambiarle los permisos a las claves. Después copiaremos el comando (ssh -i....) que nos pone de ejemplo y lo ejecutamos, y ya estariamos dentro de nuestro servidor por ssh. 

![Captura8](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/d8da0bd0-8c84-4944-aef8-550bff3580e7)

![Captura9](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/153b5260-d27a-4bfd-a233-b92f1545e351)

- Ya estariamos dentro de la instancia que hemos creado.

## 3. Procederemos a instalar apache

- `# apt update`
- `# apt upgrade -y`
- `# apt install apache2 -y`
  Utilizaremos el siguiente comando para ver si el servicio esta activo
- `# systemctl status apache2`

![Captura10](https://github.com/LarryWestbrook/Pila-Lamp-en-AWS/assets/114906861/5664b7da-0aa4-4a5d-9543-53aaf6e0dc0d)


## 4. Instalamos MariaDB

- `# apt install mariadb-server`

  Para acceder a MariaDB implementaremos el siguiente comando debido a que no tenemos contrasña podemos acceder a través del root.

- `# mariadb -u root -p`

  




