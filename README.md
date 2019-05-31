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
