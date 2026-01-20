# Guía de Despliegue - Cloudflare Pages

## Credenciales Necesarias

Antes de comenzar, necesitas:

1. **CLOUDFLARE_ACCOUNT_ID**
2. **CLOUDFLARE_API_TOKEN**

### Cómo obtener las credenciales

#### 1. Account ID
1. Ve a https://dash.cloudflare.com
2. Selecciona tu cuenta
3. En la barra lateral derecha verás "Account ID"
4. Copia el ID

#### 2. API Token
1. Ve a https://dash.cloudflare.com/profile/api-tokens
2. Click en "Create Token"
3. Usa el template "Edit Cloudflare Workers" o crea un token personalizado con permisos:
   - Account Settings: Read
   - Workers Scripts: Edit
   - Workers Routes: Edit
   - Pages: Edit
4. Copia el token (solo se muestra una vez)

## Configuración del Proyecto

### 1. Crear archivo .env

```bash
cp .env.example .env
```

Edita `.env` y completa:

```env
CLOUDFLARE_ACCOUNT_ID=tu_account_id_aqui
CLOUDFLARE_API_TOKEN=tu_api_token_aqui
PROJECT_NAME=grupogurdjieff-cl
DOMAIN=grupogurdjieff.chuchurex.cl
PRODUCTION_BRANCH=main
```

### 2. Instalar Wrangler (opcional, para despliegue manual)

```bash
npm install -g wrangler
```

## Métodos de Despliegue

### Método 1: Despliegue Automático (Recomendado)

#### Paso 1: Conectar GitHub a Cloudflare Pages

1. Ve a https://dash.cloudflare.com
2. En el menú lateral: **Workers & Pages**
3. Click en **Create application**
4. Selecciona **Pages**
5. Click en **Connect to Git**

#### Paso 2: Configurar el repositorio

1. Autoriza GitHub si es la primera vez
2. Selecciona el repositorio: `chuchurex/grupogurdjieff.cl`
3. Click en **Begin setup**

#### Paso 3: Configuración de Build

- **Project name:** grupogurdjieff-cl
- **Production branch:** main
- **Build command:** (dejar vacío)
- **Build output directory:** `/`

#### Paso 4: Configurar Variables de Entorno (opcional)

Si necesitas variables de entorno en producción:
- Click en **Add environment variable**
- Agrega las variables necesarias

#### Paso 5: Deploy

1. Click en **Save and Deploy**
2. Espera a que termine el despliegue (1-2 minutos)
3. Tu sitio estará disponible en: `https://grupogurdjieff-cl.pages.dev`

#### Paso 6: Configurar Dominio Personalizado

1. En el dashboard del proyecto, ve a **Custom domains**
2. Click en **Set up a custom domain**
3. Ingresa: `grupogurdjieff.chuchurex.cl`
4. Cloudflare configurará automáticamente el DNS
5. Espera a que el certificado SSL se active (puede tomar unos minutos)

### Método 2: Despliegue Manual con Wrangler

#### Requisitos previos

```bash
# Instalar dependencias
npm install

# Autenticar con Cloudflare
wrangler login
```

#### Desplegar

```bash
# Desde la raíz del proyecto
npm run deploy

# O directamente con wrangler
wrangler pages deploy . --project-name=grupogurdjieff-cl
```

## Configuración DNS

Si vas a usar un dominio personalizado (grupogurdjieff.chuchurex.cl):

### En Cloudflare DNS:

1. Ve a la zona DNS de `chuchurex.cl`
2. Agrega un registro CNAME:
   - **Type:** CNAME
   - **Name:** grupogurdjieff
   - **Target:** grupogurdjieff-cl.pages.dev
   - **Proxy status:** Proxied (naranja)
3. Guarda

## Despliegues Futuros

### Automático (GitHub)

Cada vez que hagas `git push` a la rama `main`, Cloudflare Pages desplegará automáticamente:

```bash
git add .
git commit -m "tu mensaje"
git push origin main
```

### Manual

```bash
npm run deploy
```

## Verificación

Después del despliegue, verifica:

1. **Sitio principal:** https://grupogurdjieff-cl.pages.dev
2. **Dominio personalizado:** https://grupogurdjieff.chuchurex.cl
3. **SSL:** Verifica que el candado verde esté activo
4. **Recursos:** Verifica que todas las imágenes carguen correctamente

## Troubleshooting

### Error: "Deployment failed"
- Verifica que el directorio de output sea `/`
- Asegúrate de que todos los archivos estén en el repositorio

### Error: "Custom domain not working"
- Espera 5-10 minutos para propagación DNS
- Verifica que el CNAME apunte a `grupogurdjieff-cl.pages.dev`
- Asegúrate de que el proxy esté activado (naranja)

### Error: "SSL certificate pending"
- Espera hasta 24 horas para la emisión del certificado
- Verifica que el dominio esté correctamente configurado

## Monitoreo

Para ver logs y métricas:

1. Ve a https://dash.cloudflare.com
2. **Workers & Pages** > **grupogurdjieff-cl**
3. Revisa:
   - **Deployments:** historial de despliegues
   - **Analytics:** tráfico y rendimiento
   - **Settings:** configuración del proyecto

## Rollback

Si necesitas volver a una versión anterior:

1. Ve a **Deployments**
2. Encuentra el despliegue anterior
3. Click en **⋯** (tres puntos)
4. Selecciona **Rollback to this deployment**

## Enlaces Útiles

- **Dashboard del proyecto:** https://dash.cloudflare.com
- **Documentación Cloudflare Pages:** https://developers.cloudflare.com/pages
- **Wrangler CLI:** https://developers.cloudflare.com/workers/wrangler
- **Repositorio:** https://github.com/chuchurex/grupogurdjieff.cl
