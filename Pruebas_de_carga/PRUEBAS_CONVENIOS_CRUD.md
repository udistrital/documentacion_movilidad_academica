# **Pruebas de carga convenios_CRUD**
Para realizar las pruebas de carga de las APIs desarrolladas se utiliza JMeter, es una herramienta de carga para llevar acabo simulaciones sobre cualquier recurso de Software. 

## Prueba GET para el EndPoint 

|                |link de prueba                  |End Point|
|----------------|-------------------------------|------------------------|
| **Obtiene datos asociados a los convenios** |[GetAll](http://127.0.0.1:8082/v1/convenio)| `127.0.0.1:8080/v1/convenio` |

Resultados de la prueba:

|Label       | # Samples    | Average | Min |  Max | Dev. std. | Error % | Throughput | Received KB/sec | Sent KB/sec| Avg.Bytes|
|------------|--------------|---------|-----|------|-----------|---------|------------|-----------------|------------|----------|
|HTTP Request|10000         |485    |1   |7891 | 832.26 | 0.62%   |593.2 /sec   |  260.43          |  75.30      | 449.6   |
|Total|10000         |485    |1   |7891 | 832.26 | 0.62%   |593.2 /sec   |  260.43          |  75.30      | 449.6   |
