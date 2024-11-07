# Documentación de Configuración y Provisionamiento

Este proyecto está basado en el uso de **Vagrant**, un software para la creación y gestión de entornos virtualizados. La configuración de Vagrant, junto con varios scripts `shell`, automatiza el proceso de instalación de diversos servicios como **NGINX**, **vsftpd**, y la creación de sitios web usando **Git** y **FTP**. A continuación, se describe el proceso de configuración y los distintos scripts utilizados.

---

## Estructura del Proyecto

La estructura del proyecto es la siguiente:

```scss
                        .
                        ├── Vagrantfile
                        └── sh/
                            │
                            ├── nginx.sh
                            ├── ftp.sh
                            ├──primeraPagina(git).sh
                            └──segundaPagina(ftpd).sh
```


### Descripción de los Archivos

1. **Vagrantfile**: Archivo de configuración de Vagrant. Este archivo define la máquina virtual, sus configuraciones de red y las provisiones a ejecutar.
2. **nginx.sh**: Script para instalar y configurar el servidor web NGINX.
3. **ftp.sh**: Script para instalar y configurar el servidor FTP (vsftpd) y crear un usuario.
4. **primeraPagina(git).sh**: Script que instala Git, clona un repositorio web, configura el sitio web en NGINX y establece los permisos necesarios.
5. **segundaPagina(ftpd).sh**: Script para crear otro sitio web, configurarlo en NGINX y hacer la transferencia de archivos a través de FTP. También configura los permisos necesarios.

---
### Funcionamiento de las paginas WEB

Primer sitio web, transferencia de archivos con GIT.
![](img/server.test.PNG)

Segunndo sitio web, transferencia de archivos con FTP.
![](img/proluh.test.PNG)

---

### Transferencia manual de archivos con FTP

Conexión:
![](img/Conexion_FileZilla.PNG)

Contraseña:
![](img/Contraseña.PNG)

Subida de archivos:
![](img/Transferencia_de_archivos1.png)
![](img/Transferencia_de_archivos2.png)

---
### Redireccion de nombres
En el archivo local de ordeandor dentro de `C:\Windows\System32\drivers\etc\hosts`
![](img/Redireccion_de_nombres.PNG)