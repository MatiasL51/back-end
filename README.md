# Proyecto Gestion escolar 


**Paso N°1: Crear Ambiente Virtual y .gitignore**

el ambiente virtual nos permite aislar nuestro proyecto de configuraciones no deseadas
   
- dentro del directorio base de nuestro proyecto iniciamos terminal y ejecutamos el siguente comando:
    ```
    python -m venv nombre_ambiente
    ```

 en donde "nombre_ambiente" sera el nombre de nuestro ambiente virtual,
 y Luego creamos un .gitignore en la carpeta base para evitar subir archivos innecesarios

**Paso N°2: Activar Ambiente Virtual**

el ambiente debe estar activado a todo momento durante el desarrollo
- Mediante el terminal nos ubicamos dentro de nuestro directorio ambiente
- Dentro de este directorio, nos movemos al subdirectorio Scripts.
- Dentro de Scripts, ejecutamos el siguiente comando:
    ```
    .\Activate
    ```
y para cambiar de proyecto (en caso de trabajar en multiples) ingresamos en el terminal
    ```
    deactivate
    ```

**Paso N°3: Creación del Núcleo de Django**

Django nos permitira crear proyectos de forma rapida y ordenada

- Para trabajar con Django debemos crear la estructura de directorios y la instalación de las dependencias iniciales.
- Debemos ubicarnos en la carpeta raíz del proyecto y crearemos un nuevo proyecto Django con el siguiente comando:
    ```
    pip install django
    ```

luego de instalar las dependencias de Django, crearemos el motor de Django para el proyecto

**Pase N°4: Creacion De La Aplicacion**

una vez el motor Django esta funcionando, podemos empezar a crear nuestra aplicacion
-  Para crear nuestra aplicación, nos ubicamos mediante el terminal en la carpeta raíz del proyecto y ejecutamos el siguiente comando:
    ```
    django-admin startapp nombre_aplicacion
    ```

en donde "nombre_aplicacion" debe ser reemplazado por el nombre de nuestro programa

Ya creado el motor y el programa corremos el siguente comando:
    ```
    python manage.py runserver
    ```

que iniciara el servidor si todo esta en orden