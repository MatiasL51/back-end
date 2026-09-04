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