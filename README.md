# Pruebas de API con Karate

## Descripción

Este proyecto contiene pruebas automatizadas de API utilizando **Karate DSL**.

## Herramientas y Tecnologías

* **Karate DSL**
* **Java**
* **Maven**


## Estructura del Proyecto

```text
api-tests2/
├── src/
│   ├── test/
│   │   ├── java/
│   │   └── resources/
├── pom.xml
├── README.md
└── .gitignore
```

## Prerrequisitos

Antes de ejecutar el proyecto, asegúrate de tener instalado:

* **Java JDK 17** 
* **Apache Maven 3.9 **
* **Git**

## Ejecución de las Pruebas

### Opción 1: Ejecutar todas las pruebas

Desde la terminal, en la raíz del proyecto:

```bash
mvn test
```

### Opción 2: Ejecutar desde el IDE

Puedes ejecutar los runners de pruebas directamente desde tu entorno de desarrollo (IntelliJ, Eclipse, VS Code).

## Validaciones Implementadas

Las pruebas permiten validar:

* Códigos de respuesta HTTP
* Estructura y contenido de la respuesta
* Datos retornados por la API
* Comportamiento funcional del servicio

## Consideraciones

* Los escenarios están escritos en formato legible utilizando Karate DSL.
* El proyecto está estructurado para facilitar su mantenimiento y escalabilidad.
