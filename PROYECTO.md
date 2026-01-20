# Proyecto: Grupo Gurdjieff

## Información General

**Nombre del Proyecto:** Grupo Gurdjieff - Santiago de Chile
**Fecha de Creación:** 20 de Enero de 2026
**Repositorio:** https://github.com/chuchurex/grupogurdjieff.cl
**Ubicación Local:** `/Users/chuchurex/Sites/prod/grupogurdjieff.cl`

## Dominios

- **Desarrollo:** grupogurdjieff.chuchurex.cl
- **Producción (opcional):** grupogurdjieff.cl
- **Cloudflare Pages:** grupogurdjieff-cl.pages.dev

## Hosting

**Plataforma:** Cloudflare Pages
**Tipo:** Static Site Hosting
**Deploy:** Automático vía GitHub Actions

## Estructura del Sitio

### Páginas
- `index.html` - Página principal con información del grupo
- `contacto.html` - Formulario de contacto

### Recursos
- **CSS:** Lightbox styles
- **JavaScript:**
  - jQuery 2.2.4 (CDN)
  - Prototype.js
  - Scriptaculous
  - Lightbox.js
- **Imágenes:** Fotos, logos, biografías, textos

### Tecnología
- HTML5 estático
- CSS3
- JavaScript (ES5)
- Sin framework backend
- Sin base de datos

## Contenido

El sitio presenta información sobre:

1. **El Cuarto Camino** - Enseñanzas de G.I. Gurdjieff
2. **Biografía** - Vida y obra de Gurdjieff
3. **El Trabajo** - Información sobre el trabajo del grupo
4. **Contacto** - Formulario para conectar con el grupo

### Textos destacados:

- Estados de conciencia (P.D. Ouspensky)
- Ver realmente quiénes somos (Adela Dib de Hales)
- Las dos naturalezas del hombre (Michel Conge)

## Configuración de Cloudflare

### Variables de Entorno Necesarias

```
CLOUDFLARE_ACCOUNT_ID=
CLOUDFLARE_API_TOKEN=
```

Ver archivo `.env.example` para más detalles.

### Configuración de Pages

- **Project Name:** grupogurdjieff-cl
- **Production Branch:** main
- **Build Command:** (ninguno)
- **Build Output Directory:** /
- **Node Version:** No requerido (sitio estático)

## Comandos Útiles

### Desarrollo Local

```bash
# Opción 1: Script incluido
./serve.sh

# Opción 2: Python
python3 -m http.server 8000

# Opción 3: Wrangler
npm run dev
```

### Despliegue

```bash
# Despliegue manual
npm run deploy

# Despliegue automático
git push origin main
```

### Git

```bash
# Ver estado
git status

# Hacer commit
git add .
git commit -m "mensaje"

# Subir cambios
git push origin main
```

## Archivos de Configuración

- `.env` - Variables de entorno (NO incluir en git)
- `.env.example` - Plantilla de variables de entorno
- `wrangler.toml` - Configuración de Cloudflare
- `package.json` - Dependencias y scripts
- `.gitignore` - Archivos ignorados por git

## Documentación

- `README.md` - Documentación general del proyecto
- `DEPLOY.md` - Guía de despliegue detallada
- `PROYECTO.md` - Este archivo (resumen del proyecto)

## Mantenimiento

### Actualizaciones de Contenido

1. Editar archivos HTML
2. Actualizar imágenes si es necesario
3. Commit y push a GitHub
4. El despliegue es automático

### Actualizaciones de Diseño

1. Editar estilos inline en HTML o archivos CSS
2. Probar localmente con `./serve.sh`
3. Commit y push

### Backup

El repositorio de GitHub actúa como backup principal.

Para backup local adicional:
```bash
cd /Users/chuchurex/Sites/prod
tar -czf grupogurdjieff.cl-backup-$(date +%Y%m%d).tar.gz grupogurdjieff.cl/
```

## Credenciales

### GitHub
- Repositorio: https://github.com/chuchurex/grupogurdjieff.cl
- Usuario: chuchurex

### Cloudflare
- Account ID: (ver archivo .env)
- API Token: (ver archivo .env)
- Dashboard: https://dash.cloudflare.com

## Notas Importantes

1. El sitio fue capturado desde http://grupogurdjieff.cl el 20/01/2026
2. Es un sitio estático sin backend
3. El formulario de contacto puede requerir integración con servicio de email
4. Todas las imágenes y recursos están versionados en el repositorio
5. No hay dependencias de Node.js en producción

## Próximos Pasos

- [ ] Obtener credenciales de Cloudflare
- [ ] Configurar archivo .env
- [ ] Hacer push al repositorio de GitHub
- [ ] Conectar repositorio a Cloudflare Pages
- [ ] Configurar dominio personalizado
- [ ] Verificar funcionamiento del sitio
- [ ] Configurar formulario de contacto (si es necesario)

## Soporte

Para problemas o dudas:
- Revisar `README.md` y `DEPLOY.md`
- Consultar documentación de Cloudflare Pages
- Verificar logs en Cloudflare Dashboard

## Licencia

Contenido © Grupo Gurdjieff, Santiago de Chile
