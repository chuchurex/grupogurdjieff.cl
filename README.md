# Grupo Gurdjieff - Santiago de Chile

Sitio web del Grupo Gurdjieff en Santiago de Chile, dedicado a las enseñanzas del Cuarto Camino de G.I. Gurdjieff.

## Información del Proyecto

- **Dominio de desarrollo:** grupogurdjieff.chuchurex.cl
- **Dominio de producción:** grupogurdjieff.cl (opcional)
- **Repositorio:** https://github.com/chuchurex/grupogurdjieff.cl
- **Hosting:** Cloudflare Pages

## Contenido del Sitio

Este sitio captura el contenido del sitio original de Grupo Gurdjieff, incluyendo:

- Información sobre las enseñanzas del Cuarto Camino
- Biografía de G.I. Gurdjieff
- Información sobre el trabajo del grupo
- Formulario de contacto

## Estructura del Proyecto

```
grupogurdjieff.cl/
├── index.html           # Página principal
├── contacto.html        # Página de contacto
├── css/                 # Estilos CSS
│   ├── lightbox.css
│   └── lightbox-print.css
├── js/                  # Scripts JavaScript
│   ├── prototype.js
│   ├── scriptaculous.js
│   └── lightbox.js
├── images/              # Imágenes del sitio
├── .env.example         # Ejemplo de variables de entorno
└── README.md            # Este archivo
```

## Configuración

Para sitios estáticos en Cloudflare Pages no se requiere configuración adicional. Simplemente conecta el repositorio de GitHub a Cloudflare Pages.

## Despliegue

### Despliegue Automático (Recomendado)

1. Conecta el repositorio de GitHub a Cloudflare Pages:
   - Ve a https://dash.cloudflare.com
   - Workers & Pages > Create application > Pages > Connect to Git
   - Selecciona el repositorio: chuchurex/grupogurdjieff.cl
   - Configuración de build:
     - Build command: (vacío)
     - Build output directory: `/`
     - Production branch: `main`

2. Configura el dominio personalizado:
   - En la configuración del proyecto en Cloudflare Pages
   - Custom domains > Set up a custom domain
   - Agrega: `grupogurdjieff.chuchurex.cl`


## Desarrollo Local

Para probar el sitio localmente, puedes usar cualquier servidor web simple:

### Usando Python:

```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

### Usando Node.js:

```bash
npx http-server -p 8000
```

Luego abre http://localhost:8000 en tu navegador.

## Tecnologías Utilizadas

- HTML5
- CSS3
- JavaScript
- jQuery 2.2.4
- Prototype.js
- Scriptaculous
- Lightbox (para galería de imágenes)

## Mantenimiento

### Actualizar contenido

1. Edita los archivos HTML correspondientes
2. Actualiza imágenes en la carpeta `images/`
3. Commit y push a GitHub (despliegue automático)

### Backup del sitio original

El sitio fue capturado desde http://grupogurdjieff.cl el 20 de enero de 2026.

## Contacto

Para información sobre el Grupo Gurdjieff, usa el formulario de contacto en el sitio web.

## Licencia

Contenido © Grupo Gurdjieff, Santiago de Chile
