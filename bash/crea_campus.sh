#!/bin/bash


echo creando archivo de campus_mid

echo "#!/bin/bash" >>  $GOPATH/src/github.com/udistrital/campus_mid/ejec.sh

chmod 777 $GOPATH/src/github.com/udistrital/campus_mid/ejec.sh

echo "CAMPUS_MID_HTTP_PORT=8095 RULER_URL=localhost RULER_PORT=80/ruler RULER_NS=v1 PERSONAS_SERVICE=localhost:8083/v1 ORGANIZACION_SERVICE=localhost:8106/v1 UBICACIONES_SERVICE=localhost:8085/v1 ENTE_SERVICE=localhost:8096/v1 FORMACION_ACADEMICA_SERVICE=localhost:8098/v1 EXPERIENCIA_LABORAL_SERVICE=localhost:8099/v1 PROGRAMA_ACADEMICO_SERVICE=localhost:8101/v1 ADMISION_SERVICE=localhost:8887/v1 bee run" >>  $GOPATH/src/github.com/udistrital/campus_mid/ejec.sh

echo archivo campus_mid creado


echo creando archivo de ente

echo "#!/bin/bash" >>  $GOPATH/src/github.com/udistrital/ente_crud/ejec.sh

chmod 777 $GOPATH/src/github.com/udistrital/ente_crud/ejec.sh

echo "ENTE_CRUD__PGDB=corev1 ENTE_CRUD__PGPASS=postgres ENTE_CRUD__PGURLS=localhost ENTE_CRUD__PGUSER=postgres ENTE_CRUD__SCHEMA=ente ENTE_HTTP_PORT=8096 bee run" >>  $GOPATH/src/github.com/udistrital/ente_crud/ejec.sh

echo archivo ente creado


echo creando archivo de organizacion_crud

echo "#!/bin/bash" >>  $GOPATH/src/github.com/udistrital/organizacion_crud/ejec.sh

chmod 777 $GOPATH/src/github.com/udistrital/organizacion_crud/ejec.sh

echo "ORGANIZACION_CRUD__HTTP_PORT=8106 ORGANIZACION_CRUD__DB_USER=postgres ORGANIZACION_CRUD__DB_PASS=postgres ORGANIZACION_CRUD__DB_URL=localhost ORGANIZACION_CRUD__DB_NAME=corev1 ORGANIZACION_CRUD__DB_SCHEMA=ente bee run" >>  $GOPATH/src/github.com/udistrital/organizacion_crud/ejec.sh

echo archivo organizacion_crud creado



echo creando archivo de ubicaciones_crud

echo "#!/bin/bash" >>  $GOPATH/src/github.com/udistrital/ubicaciones_crud/ejec.sh

chmod 777 $GOPATH/src/github.com/udistrital/ubicaciones_crud/ejec.sh

echo "UBICACIONES_CRUD__PGDB=corev1 UBICACIONES_CRUD__PGPASS=postgres UBICACIONES_CRUD__PGURLS=localhost UBICACIONES_CRUD__PGUSER=postgres UBICACIONES_CRUD__SCHEMA=ubicaciones UBICACIONES_HTTP_PORT=8085 bee run" >>  $GOPATH/src/github.com/udistrital/ubicaciones_crud/ejec.sh

echo archivo ubicaciones_crud creado



echo creando archivo de personas_crud

echo "#!/bin/bash" >>  $GOPATH/src/github.com/udistrital/personas_crud/ejec.sh

chmod 777 $GOPATH/src/github.com/udistrital/personas_crud/ejec.sh

echo "PERSONAS_CRUD__PGDB=corev1 PERSONAS_CRUD__PGPASS=postgres PERSONAS_CRUD__PGURLS=localhost PERSONAS_CRUD__PGUSER=postgres PERSONAS_CRUD__SCHEMA=ente API_PERSONAS_HTTP_PORT=8083 bee run" >>  $GOPATH/src/github.com/udistrital/personas_crud/ejec.sh

echo archivo personas_crud creado



echo creando archivo de programa_academico_crud

echo "#!/bin/bash" >>  $GOPATH/src/github.com/udistrital/programa_academico_crud/ejec.sh

chmod 777 $GOPATH/src/github.com/udistrital/programa_academico_crud/ejec.sh

echo "PROGRAMA_ACADEMICO_CRUD__PGDB=corev1 PROGRAMA_ACADEMICO_CRUD__PGPASS=postgres PROGRAMA_ACADEMICO_CRUD__PGURLS=localhost PROGRAMA_ACADEMICO_CRUD__PGUSER=postgres PROGRAMA_ACADEMICO_CRUD__SCHEMA=programa_academico PROGRAMA_ACADEMICO_HTTP_PORT=8101 bee run" >>  $GOPATH/src/github.com/udistrital/programa_academico_crud/ejec.sh

echo archivo programa_academico_crud creado




echo creando archivo de borrado

echo "#!/bin/bash" >>  ./clear.sh

chmod 777 ./clear.sh

echo "echo borando archivos" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/admisiones_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/campus_mid/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/documentos_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/ente_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/experiencia_laboral_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/formacion_academica_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/idiomas_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/organizacion_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/personas_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/produccion_academica_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/programa_academico_crud/ejec.sh" >> ./clear.sh

echo "rm $GOPATH/src/github.com/udistrital/ubicaciones_crud/ejec.sh" >> ./clear.sh

echo "rm ./clear.sh" >> ./clear.sh

echo "echo archivos borrados" >> ./clear.sh

echo archivo de borrado creado



echo gracias por ejecutarme ◠‿◠
