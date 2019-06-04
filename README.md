# Documentación General de la aplicación Movilidad Academica para la dependecia CERI


Esta documentación concentra toda la documentación requerida para enteder el proyecto de movilidad academica desarrollada para la dependecia CERI de la Universidad Distrital Francisco Jose De Caldas, el proyecto nace de la necesidad de actualizar la aplicacion [actual](https://ceri.udistrital.edu.co/plataforma-de-apoyo) de la depencia. 

## Comenzando 🚀
La arquitectura de la aplicacion desarrollada se expone en la siguiente imagen.

![](ArquitecturaCERI.png)


### Pre-requisitos 📋

Para el correcto despliegue del proyecto es necesario contar con las siguientes herramientas:

* [golang](https://golang.org/) - Lenguaje de programación 
* [Beego](https://beego.me/) - Framework  usado
* [PgModeles](https://pgmodeler.io/) - PostgreSQL Database Modeler
* [PgAdmin3](https://www.pgadmin.org/) - Motor para bases de datos
* [Angular](https://angular.io/) - Framework FrontEnd

### Instalación 🔧

El proyecto esta compuesto por 6 APIs, 4 desarrollados por el equipo desarrollador ( movilidad_academica_crud,  movilidad_academica_mid, movilidad_academica_cliente y convenios_crud) y dos Servicios desarrollados por otro equipo de la OAS (api_academica y organizacion_crud), los repositorios de cada API se en lista a continuación:

* [movilidad_academica_crud](https://github.com/udistrital/movilidad_academica_crud) - CRUD para  base de datos para los procesos de movilidad academica.
* [convenios_crud](https://github.com/udistrital/convenios_crud) - CRUD para base de datos de los convenios ofertados por el CERI
* [movilidad_academica_mid](https://github.com/udistrital/movilidad_academica_mid) - MID encargado de traer los servicios de api_academica y organizacion_crud.
* [movilidad_academica_cliente](https://github.com/udistrital/movilidad_academica_cliente) - Cliente de la aplicacion creado con el template ngxAdmin.
* [api_academica](https://github.com/udistrital/api_academica) - API encargada de la información atadas a las personas pertenecientes a la universidad.
* [organizacion_crud](https://github.com/udistrital/organizacion_crud) - API encargada de la información atadas a las organizaciones que tiene algun vinculo con la universidad.

## EndPoinst de las APIs 📦

* movilidad_academica_crud

|                |link de prueba                  |End Point|
|----------------|-------------------------------|------------------------|
| **Obtiene datos asociados a la movilidad estudiantil** |[GetAll](http://127.0.0.1:8080/v1/movilidad)| `127.0.0.1:8080/v1/movilidad` |
| **Obtiene las categorías de movilidad** | [GetAll](http://127.0.0.1:8080/v1/tipo_categoria) |`127.0.0.1:8080/v1/tipo_categoria`|
| **Obtiene los tipo de movilidad(Extranjera o nacional)** |[GetAll](http://127.0.0.1:8080/v1/tipo_movilidad)| `127.0.0.1:8080/v1/tipo_movilidad` |

* convenios_crud

|                |link de prueba                  |End Point|
|----------------|-------------------------------|------------------------|
| **Obtiene datos asociados a los convenios** |[GetAll](http://127.0.0.1:8082/v1/convenio)| `127.0.0.1:8080/v1/convenio` |

* movilidad_academica_mid

|                |link de prueba                  |End Point|
|----------------|-------------------------------|------------------------|
| **Obtiene datos asociados a la información academica** | [GetAcademica](http://127.0.0.1:8081/v1/academica/GetAcademica) |`127.0.0.1:8081/v1/academica/GetAcademica`|
| **Obtiene datos asociados a los convenios** |[GetConvenio](http://127.0.0.1:8081/v1/convenio/GetConvenio)| `127.0.0.1:8081/v1/convenio/GetConvenio` |
| **Obtiene datos asociados a la movilidad estudiantil** |[GetMovilidad](http://127.0.0.1:8081/v1/movilidad/GetMovilidad)| `127.0.0.1:8081/v1/movilidad/GetMovilidad` |

* api_academica

Los EndPoints de esta api estan ligada a previa autorización por parte de la oficina asesora de sistemas.

* organizacion_crud

Los EndPoints de esta api estan ligada a previa autorización por parte de la oficina asesora de sistemas.

## uso de bash

Para los repos de [movilidad_academica_crud](https://github.com/udistrital/movilidad_academica_crud) , 
[convenios_crud](https://github.com/udistrital/convenios_crud) , [movilidad_academica_mid](https://github.com/udistrital/movilidad_academica_mid). se ha modificado de tal manera que lo que se use para su ejecucion no sea directamente el comando `bee run` .

Esto con el fin de poder cambiarse a conveniencia por desarrollo o despliegue y no generar cambios que a futuro pida un _**commit**_ , este archivo esta en el omitiendose en el git ignore,por esa razon no se subira a los repos al momento de hacer un push.

Para la ejecucion de los Apis se crea un archivo llamado `ejec.sh` en este estan las sentencias para la correcta ejecucion del api.

--- 
### nota

devido a que este repo puede ser clonado en cualquier directorio de su ordenador , se recomeinda dejar el archivo `crea_ceri.sh` en el directorio 

```javascript
${GOPATH}/src
```

si no sabe cual es su `GOPATH` ejecute:

```javascript
echo ${GOPATH}
```
---

El archivo [bash](./bash/crea_ceri.sh) debe de tener permisos de ejecucion por lo tento ejecutar lo siguiente:

```javascript
chmod 777 ./crea_ceri.sh
```

al ejecutarlo en la raiz de cada uno de los repos nombrados anteior mente se creara un archivo con la variables para su ejecucion.

<details>
<summary>variables del bash</summary>
En el bash se encuentran la siguientes variables:

- MOVILIDAD_CRUD__PGDB
    - nombre de la base de datos, este se cambia en caso de que el script sea ejecutado en una base de datos diferente al valor ya seteado en el bash.
- MOVILIDAD_CRUD__PGPASS
    - password de la base de datos o conexion.
- MOVILIDAD_CRUD__PGURLS
    - url de conexion a la base de datos, en este caso se tiene por defecto localhost, generalmente se puede dejar tal como esta.
- MOVILIDAD_CRUD__PGUSER
    - usuario con permisos para la base de datos.
- MOVILIDAD_HTTP_PORT
    - puerto de ejecucion el api, por defecto esta el 8080, pero este se puede cambiar a preferencia.
- MOVILIDAD_CRUD__SCHEMA
    - esquema de la base de datos a la cual debe apintar el api
</details>

para levantar el api ejecutar lo siguiente (similar a usar bee run, debe ejecutarse el comando en la raiz de cada repo)

```javascript
./ejec.sh
```

si se quieren crear mas archivos `ejec.sh ` es recomendable crear eso en el archivo [crea_ceri.sh](./bash/crea_ceri.sh)

--- 

### Campues en local

ya que se estan usando varias apis de campus como ente, personas, organizaciones, ubicaciones y el mid.

En la carpeta `bash` estan 2 script para usarlos, el script [repos_campus.sh](./bash/repos_campus.sh)  al ejecutarse trae en local todos los apis necesarios para integrar en local la funcionalidad de campus al proyecto CERI.

luego de ello debe de crearse en postgres una base de datos llamada `corev1` ya que este es el nombbre con el cual se conectan las apis de CAMPUS, si se coloca otro nombre distinto a la base de datos se recomienda remplazar la palabra `corev1` en el archivo [crea_campus.sh](./bash/crea_campus.sh) por el nombre de la base de datos que desee colocar.

enseguida de haber creado la base de datos debe ingresar por la terminal en modo administrador y ejecutar el siguiente comando

```javascript
pg_restore -h localhost -p 5432 -U postgres -d corev1 -v '/[directorio donde se descargo el backup]/campus_2_06_2019.backup' 
```

el backup se encuentra en una carpeta compartida en drive para los miembros del proyecto CERI.

al terminar de restaurarse la base de datos ya pueden ejecutarse las apis y para su ejecucion un poco mas amena se creo el script [crea_campus.sh](./bash/crea_campus.sh)el cual crea un archivo en cada api que se esta usando de campus, el archivo es creado en la raiz de cada api y ya contiene los parametros exactos para su ejecucion

en la raiz de cada api ejecutar 

```javascript
./ejec.sh
```
