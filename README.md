# QA Technical Challenge

Repositorio con la solución del reto técnico de QA, compuesto por:

- Automatización E2E con **Serenity BDD + Screenplay**
- Pruebas de API con **Karate Framework**

---

## Tecnologías utilizadas

- Java 17
- Gradle 7.6.1
- Maven 3.9.12
- Serenity BDD
- Screenplay Pattern
- Karate Framework
- Microsoft Edge WebDriver 146

---

## Requisitos

- JDK: 17
- Gradle: 7.6.1
- Maven: 3.9.12

> Nota: El proyecto fue desarrollado y probado con JDK 17.  
> Es importante ejecutar las pruebas con esta versión para garantizar compatibilidad.

---

## Estructura del proyecto

```text
qa-technical-challenge
├── e2e-ui
└── api-tests2

1. Proyecto E2E - Serenity BDD

Ruta: e2e-ui

Flujo automatizado
Se automatizó el flujo de compra en SauceDemo, cubriendo:

Inicio de sesión con usuario válido
Se agregan dos productos al carrito
Visualización del carrito
Se completan datos en formulario de compra
Finalizar compra
Se muestra mensaje final de confirmación

Para su ejecución:
Ejecutar el runner: PurchaseRunner.java

Ruta del Reporte
El reporte de Serenity se genera en: e2e-ui/target/site/serenity/index.html

2. Proyecto API - Karate Framework

Ruta: api-tests2

Flujo automatizado
Se implementaron pruebas sobre la API de PetStore, cubriendo:

Creación de una mascota
Consultar mascota por ID
Actualizar nombre y estado de la mascota
Consultar mascota por estado

Para su ejecución

Abrir el proyecto api-tests2 y ejecutar: TestRunner.java

Ruta del Reporte
api-tests2/target/karate-reports/karate-summary.html

Consideraciones
Para el proyecto E2E se utilizó Microsoft Edge debido a un problema del navegador Chrome con un popup de seguridad de contraseñas.
Se utilizó Java 17 por compatibilidad con Serenity BDD y Karate Framework.