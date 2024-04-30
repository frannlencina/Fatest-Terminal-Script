# Configuración de la Terminal para Fatest-Terminal

Antes de comenzar, asegúrate de editar los datos del script para asi tener tu propia terminal personalizada. 

Guia de como instalar el script.

## Configuración de la Terminal

1. **Editar los datos de la Terminal:**
   - Abre tu editor de texto preferido, como NotePad++ o Bloc de notas.
   - Edita los datos del archivo `Microsoft.PowerShell_profile` según sea necesario.

2. **Instalación y Configuración de Windows PowerShell:**
   - Instala Windows PowerShell si aún no lo tienes instalado en tu sistema.
   
3. **Comprobación de Perfil:**
   - Abre Windows PowerShell y ejecuta el siguiente comando para verificar si tienes un perfil:
     ```powershell
     Test-Path $Profile
     ```

4. **Creación de un Nuevo Perfil (si es necesario):**
   - Si el comando anterior no devuelve un resultado positivo, crea un nuevo perfil ejecutando:
     ```powershell
     New-Item –Path $Profile –Type File –Force
     ```

5. **Habilitación de la Ejecución de Scripts:**
   - Habilita la ejecución de scripts en Windows PowerShell con el siguiente comando:
     ```powershell
     Set-ExecutionPolicy RemoteSigned
     ```

6. **Reemplazo del Archivo de Perfil:**
   - Dirígete a la ubicación donde se encuentra el archivo `Microsoft.PowerShell_profile`. Por lo general, se encuentra en:
     ```
     C:\Users\<TuUsuario>\Documentos\PowerShell
     ```
   - Reemplaza el archivo de la terminal con el que has editado previamente.

¡Listo! Tu terminal está ahora configurada para utilizar el script Fatest-Terminal.

by @frannlencina / Francisco Lencina
