#!/bin/bash
echo comanzare a traer los repos de campus
echo clonando campus mid
go get github.com/udistrital/campus_mid
cd $GOPATH/src/github.com/udistrital/campus_mid && git checkout develop
echo campus mid clonado

echo clonando personas_crud mid
go get github.com/udistrital/personas_crud
cd $GOPATH/src/github.com/udistrital/personas_crud && git checkout develop
echo personas_crud clonado

echo clonando ente_crud
go get github.com/udistrital/ente_crud
cd $GOPATH/src/github.com/udistrital/ente_crud && git checkout develop
echo ente_crud clonado

echo clonando organizacion_crud
go get github.com/udistrital/organizacion_crud
cd $GOPATH/src/github.com/udistrital/organizacion_crud && git checkout develop
echo organizacion_crud clonado

echo clonando ubicaciones_crud
go get github.com/udistrital/ubicaciones_crud
cd $GOPATH/src/github.com/udistrital/ubicaciones_crud && git checkout develop
echo ubicaciones_crud clonado

echo clonando programa_academico_crud
go get github.com/udistrital/programa_academico_crud
cd $GOPATH/src/github.com/udistrital/programa_academico_crud && git checkout develop
echo programa_academico_crud clonado

cd $GOPATH/src/github.com/udistrital/ && git clone https://github.com/udistrital/notificaciones_lib.git

echo todos los repos clonados •̪◡•̪