# FERENGINE

**Repositorio oficial del motor 3D independiente de FerStudio, orientado primero a Android.**

El código fuente completo de esta primera entrega está en [`FERENGINE_SOURCE.tar.gz`](FERENGINE_SOURCE.tar.gz). Para abrirlo, descarga el archivo y ejecuta:

```bash
tar -xzf FERENGINE_SOURCE.tar.gz
cd FerEngine
```

La carpeta extraída contiene el proyecto C++20, la aplicación Android Kotlin/JNI, CMake, Gradle, pruebas y documentación.

## Estado real de esta entrega

Esta es una **base técnica de Fase 1**, no un motor 3D terminado. Incluye:

- Núcleo C++20 portable con estados de ciclo de vida y diagnóstico.
- Aplicación Android nativa Kotlin con puente JNI.
- Orientación horizontal solicitada y modo inmersivo.
- Interfaz inicial del editor que identifica los módulos pendientes sin simular que ya existen.
- Pruebas automatizadas del núcleo y GitHub Actions para compilar el núcleo y generar un APK debug.

Todavía no incluye renderer Vulkan/OpenGL operativo, cámara 3D, geometría, sistema ECS/escenas, importador GLTF, física, audio, animación ni scripting. Esos módulos se implementarán por fases y se marcarán como completados solo después de compilarlos y probarlos.

## Compilación automatizada

Cada push a `main` ejecuta pruebas C++20 y compila `app-debug.apk` usando Android SDK, NDK y Gradle instalados en GitHub Actions. El APK se publica como artefacto de la ejecución. La CI no sustituye las pruebas en un teléfono físico.

## Prioridad técnica

1. Conseguir una APK reproducible y validar el arranque Android horizontal/fullscreen.
2. Implementar superficie Android y backend gráfico real, empezando por detección de capacidades y selección Vulkan/fallback.
3. Construir viewport, cámara y geometría antes de añadir herramientas avanzadas del editor.

La licencia del código propio está pendiente de decisión del propietario. No se concede una licencia implícita.
