# Pet App

Este proyecto es una aplicación de gestión de mascotas compuesta por un frontend desarrollado en Flutter y un backend en Node.js.

## Estructura del Proyecto

```
pet_app/
├── backend/      # Backend Node.js (API REST, lógica de negocio)
│   ├── src/
│   ├── utils/
│   ├── package.json
│   └── .env
└── frontend/     # Frontend Flutter (aplicación móvil multiplataforma)
    ├── lib/
    ├── android/
    ├── ios/
    ├── web/
    ├── macos/
    ├── linux/
    ├── windows/
    ├── pubspec.yaml
    └── README.md
```

## Tecnologías Utilizadas

- **Frontend:** [Flutter](https://flutter.dev/) (Dart)
- **Backend:** [Node.js](https://nodejs.org/) (JavaScript)
- **Base de datos:** (Agrega aquí la base de datos utilizada si aplica, por ejemplo MongoDB, PostgreSQL, etc.)

## Requisitos Previos

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Node.js y npm](https://nodejs.org/)
- (Opcional) [Android Studio](https://developer.android.com/studio) o [Xcode](https://developer.apple.com/xcode/) para emuladores

## Instalación

### Backend

1. Ve al directorio del backend:
   ```sh
   cd backend
   ```
2. Instala las dependencias:
   ```sh
   npm install
   ```
3. Crea un archivo `.env` con tus variables de entorno necesarias.

4. Inicia el servidor:
   ```sh
   npm start
   ```

### Frontend

1. Ve al directorio del frontend:
   ```sh
   cd frontend
   ```
2. Instala las dependencias:
   ```sh
   flutter pub get
   ```
3. Ejecuta la app en un emulador o dispositivo:
   ```sh
   flutter run
   ```

## Scripts Útiles

- **Backend**
  - `npm start`: Inicia el servidor en modo producción.
  - `npm run dev`: Inicia el servidor en modo desarrollo (si está configurado).

- **Frontend**
  - `flutter run`: Ejecuta la app en modo desarrollo.
  - `flutter build apk`: Genera el APK para Android.
  - `flutter build ios`: Genera el proyecto para iOS.

## Autores

- Samuel Díaz  
- Heidy Sosa
- Joel Reyes
- Elisa Matinez
- Augusto González

---

**Año:** 2025
