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
    
    
    deactivate
    

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
    
    
    python manage.py runserver
    

que iniciara el servidor si todo esta en orden

**Paso N°5: Creacion de templates**

una vez la base del programa y el servidor son funcionales podremos empezar a trabajar en el propio programa.

lo primero que haremos sera crear un template para nuestra aplicacion (un template sera la parte visual de la pagina).

primero, debemos crear una carpeta dentro de la aplicacion llamada **template**.

una vez creada nos vamos al archivo **"setting.py"** y buscamos la lista "TEMPLATES" y en "DIRS" colocamos "BASE_DIR / 'templates'" de tal manera:

```
    TEMPLATES = [
        {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR / 'templates'],
```

lo cual de indicara a Django que busque los templates en ese directorio

**Paso N°6: Conexiones de URLs y Archivos HTML**

tras configurar los templates creamos un archivo HTML de pagina de inicio (en este caso home.html) en la carpeta "templates" en al app

luego vamos a views para configurar la ruta de la URL y creamos la vista home de tal manera
   
    def home(request):
    return render(request, "home.html")
    
para conectar esta vista con la url vamos al directorio **gestion_core** y vamos a **urls** y exportamos las vistas de la siguente manera:
    ```
    from gestion_escolar import views

    urlpatterns = [
        path('admin/', admin.site.urls),
        path("",views.home)
    ]

de esta forma tendremos conectadas las urls con las vista, en caso de agregar mas solo se tendra que añadir un "path" mas

y por ultimo crearemos un template para el error 404 en el directorio "template".

Este ultimo no necesitara de una vista o URL, ya que Django buscara por defecto un template para este error, para en caso de no encontrar pondra el propio de Django

y para finalizar con las vista, nos aseguraremos de que funcionen.

para ello nos iremos al directorio **gestion_core** y en **setting.py** buscaremos la linea **"DEBUG"** que estara en True por defecto, para testear las vistas tendremos que cambiar el debug a false y abajo en **ALLOWED_HOSTS** ponemos "*" y podremos observar la vista de home y 404