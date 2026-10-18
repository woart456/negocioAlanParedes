# Documentación de Métodos HTTP

En este documento se detallan los 5 métodos HTTP principales utilizados en APIs REST, junto con ejemplos prácticos sobre la API pública JSONPlaceholder (`https://jsonplaceholder.typicode.com/posts`).

---

## 1. GET
Servicio para obtener o consultar información del servidor sin modificar ningún recurso.

- **Método**: `GET`
- **URL**: `https://jsonplaceholder.typicode.com/posts/1`
- **Body**: N/A (No lleva cuerpo)
- **Código de Estado**: `200 OK`

---

## 2. POST
Se utiliza para enviar datos al servidor y crear un nuevo recurso.

- **Método**: `POST`
- **URL**: `https://jsonplaceholder.typicode.com/posts`
- **Body** (JSON):
```json
{
  "title": "Nuevo post de prueba",
  "body": "Contenido para la práctica de Programación Web III",
  "userId": 1
}