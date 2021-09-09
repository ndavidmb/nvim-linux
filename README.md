# nvim-windows

![image](https://user-images.githubusercontent.com/77401753/114603667-9fb0fc80-9c5d-11eb-981b-2c346f7ed25e.png)

## Mis configuraciones de neovim en windows paso a paso

### Instalación de Neovim
Bueno primero que todo debemos instalar neovim en el siguiente link https://github.com/neovim/neovim/wiki/Installing-Neovim#scoop
Y nos vamos a la sección de windows, en mi caso me funcionó mucho mejor con scoop, si no tienen este instalador de paquetes tienen que
buscar como instalarlo

### Instalación de Vim-Plug
Lo segundo que haremos es la instalación del vim-plug para poder instalar todos los plugins correspondientes a mi configuración
para poder instalar vim-plug podemos ir a la siguiente url https://github.com/junegunn/vim-plug#windows-powershell-1
en la sección de **instalar la versión de neovim y no la de vim**

### Instalación de python para algunos plugins
Justo después de esto debemos instalar Python pueden saltarse este paso si ya tienen instalado python y lo tienen agregado en su %PATH%
ahora en caso de que no lo tengan les haré un pequeño resumen

  - Instalar python en este link https://www.python.org/downloads/windows/
  - En el paquete de instalación hay que asegurarse de checkear la opción de agregar en el path
      ```
        python --version
        > Python 3.9.4 
       ```
  - ahora lo siguiente que debemos hacer es
    ```pip install pynvim```
  - Si cuando realizamos esto aparece un error se debe a que python no esta en el path, podemos dirigirnos a 
    > C:\Users\ *Your_user* \AppData\Local\Programs\Python\Python39\Scripts>
    > **pip.exe install pynvim**
### Instalación de mis configuraciones
Ahora lo siguiente que debemos hacer es dirigirnos a   ```C:\Users\Your_user\.config``` y clonar este repositorio
  ```
  git clone https://github.com/ndavidmb/nvim-windows.git
  ```
### Crear el init.vim
Por último nos dirigimos a ```C:\Users\Your_user\AppData``` aquí buscamos si existe una carpeta con el nombre llamado **nvim** si no existe la crearemos
y luego crearemos un archivo **con extensión .vim** llamado **init.vim** a continuación nos moveremos a esta carpeta vía terminal y ejecutaremos ```nvim init.vim```
y copiaremos el siguiente código
```
let g:python3_host_prog='C:/Users/YOURUSERNAME/AppData/Local/Programs/Python/Python39/python.exe'
set runtimepath^=~\nvim-windows\.vim runtimepath+=~\nvim-windows\.vim\after
let &packpath=&runtimepath
source ~\.config\nvim-windows\.vimrc
```

Guardamos el archivo, y lo volvemos a abrir y ejecutaremos oprimiendo ":" ``` PlugInstall ``` lo cuál debera ejecutar como esta:

![image](https://user-images.githubusercontent.com/77401753/114602841-b014a780-9c5c-11eb-839b-f3783ded5116.png)

### Recomendaciones
- El powershell brinda herramientas muy potentes para la terminal de windows, sin embargo no aporta la velocidad optima y maneja una serie de bugs con los
  temas del nvim, por lo cuál recomiendo usar estas configuraciones desde el cmd, que aporta mucha más velocidad y es compatible con los temas de vim y neovim a 256
- Para la configuración de los iconos se necesita una fuente compatible con estos en mi caso me gusta FantasqueSansMono Nerd Font podrán ver más alternativas
  aquí https://www.nerdfonts.com/font-downloads para obtener un resultado como este:
  
  
  ![image](https://user-images.githubusercontent.com/77401753/114603409-4cd74500-9c5d-11eb-96c7-5820f5c7a73f.png)


