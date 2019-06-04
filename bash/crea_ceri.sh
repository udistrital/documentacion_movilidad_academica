#!/bin/bash


echo creando archivo de movilidad_academica_mid

echo "#!/bin/bash" >>  ./github.com/udistrital/movilidad_academica_mid/ejec.sh

chmod 777 ./github.com/udistrital/movilidad_academica_mid/ejec.sh

echo "MOVILIDAD_MID_HTTP_PORT=8081 MODALIDAD_CRUD=localhost:8080/v1 CONVENIO_CRUD=localhost:8086/v1 PERSONAS_SERVICE=localhost:8083/v1 ORGANIZACION_SERVICE=localhost:8106/v1 UBICACIONES_SERVICE=localhost:8085/v1 ENTE_SERVICE=localhost:8096/v1 PROGRAMA_ACADEMICO_SERVICE=localhost:8101/v1 CAMPUSMID_SERVICE=localhost:8095/v1 bee run -downdoc=true -gendoc=true" >>  ./github.com/udistrital/movilidad_academica_mid/ejec.sh

echo archivo movilidad_academica_mid creado


echo creando archivo de convenios_crud

echo "#!/bin/bash" >>  ./github.com/udistrital/convenios_crud/ejec.sh

chmod 777 ./github.com/udistrital/convenios_crud/ejec.sh

echo "CONVENIO_CRUD__PGDB=ceri CONVENIO_CRUD__PGPASS=postgres CONVENIO_CRUD__PGURLS=localhost CONVENIO_CRUD__PGUSER=postgres CONVENIO_CRUD__SCHEMA=convenio CONVENIO_HTTP_PORT=8086 bee run" >>  ./github.com/udistrital/convenios_crud/ejec.sh

echo archivo convenios_crud creado


echo creando archivo de movilidad_academica_crud

echo "#!/bin/bash" >>  ./github.com/udistrital/movilidad_academica_crud/ejec.sh

chmod 777 ./github.com/udistrital/movilidad_academica_crud/ejec.sh

echo "MOVILIDAD_CRUD__PGDB=ceri MOVILIDAD_CRUD__PGPASS=postgres MOVILIDAD_CRUD__PGURLS=localhost MOVILIDAD_CRUD__PGUSER=postgres MOVILIDAD_HTTP_PORT=8080 MOVILIDAD_CRUD__SCHEMA=movilidad_academica bee run" >>  ./github.com/udistrital/movilidad_academica_crud/ejec.sh

echo archivo movilidad_academica_crud creado




echo creando archivo de borrado

echo "#!/bin/bash" >>  ./clear_ceri.sh

chmod 777 ./clear_ceri.sh

echo "echo borando archivos" >> ./clear_ceri.sh


echo "rm ./github.com/udistrital/movilidad_academica_mid/ejec.sh" >> ./clear_ceri.sh

echo "rm ./github.com/udistrital/convenios_crud/ejec.sh" >> ./clear_ceri.sh

echo "rm ./github.com/udistrital/movilidad_academica_crud/ejec.sh" >> ./clear_ceri.sh

echo "rm ./clear_ceri.sh" >> ./clear_ceri.sh

echo "echo archivos borrados" >> ./clear_ceri.sh

echo archivo de borrado creado



echo gracias por ejecutarme ◠‿◠
