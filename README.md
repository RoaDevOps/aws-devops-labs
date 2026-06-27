# AWS DevOps Labs 🚀

Repositorio de prácticas y scripts en AWS, como parte de mi preparación para la certificación **AWS Solutions Architect Associate (SAA-C03)** y mi aprendizaje hacia un rol Jr. en Cloud/DevOps y Sysadmin.

## 🎯 Objetivo

Documentar ejercicios y pequeños scripts mientras aprendo: auditoría básica de recursos vía CLI, administración de sistemas Linux, y conceptos de AWS como IAM y VPC Endpoints aplicados en práctica.

## 🛠️ Stack

- **AWS CLI** — interacción y automatización vía terminal
- **IAM** — Roles, Instance Profiles, políticas de mínimo privilegio
- **Lambda** — funciones serverless (Node.js)
- **API Gateway** — exposición de endpoints HTTP
- **DynamoDB** — base de datos NoSQL serverless
- **S3** — almacenamiento de objetos, VPC Gateway Endpoints
- **VPC** — networking, endpoints, control de tráfico privado
- **Linux/Bash** — administración de sistemas, scripting, permisos, cron

## 📂 Scripts

### `scripts/aws-inventory.sh`

Script de auditoría rápida que lista los recursos activos en una cuenta AWS: buckets S3, funciones Lambda y tablas DynamoDB. Pensado para detectar recursos huérfanos o de prueba que generan costo sin uso real.

**Uso:**
```bash
chmod +x scripts/aws-inventory.sh
./scripts/aws-inventory.sh
```

**Por qué existe:** mientras practicaba para la certificación, encontré recursos sin usar en mi propia cuenta (una EC2 olvidada, una tabla DynamoDB y una Lambda de prueba). Este script me ayuda a revisarlo rápido en vez de ir servicio por servicio a mano.

### `scripts/disk-check.sh`

Script que revisa el porcentaje de uso del disco y avisa si supera un umbral (85%). Además muestra las 3 carpetas que más espacio ocupan dentro de `$HOME`, para identificar rápido dónde limpiar.

**Uso:**
```bash
chmod +x scripts/disk-check.sh
./scripts/disk-check.sh
```

**Por qué existe:** al revisar mi propia máquina encontré una carpeta de recuperación de archivos olvidada que ocupaba 9 GB. Este script automatiza esa revisión para detectarlo antes de que el disco se llene de verdad.

**Automatización con cron:** programado para correr automáticamente todos los días a las 9:00 AM:
```bash
0 9 * * * /ruta/completa/disk-check.sh >> /ruta/completa/disk-check.log 2>&1
```

## 📌 Conceptos que he ido practicando

- IAM Role + Instance Profile como alternativa a guardar credenciales en una instancia EC2.
- VPC Gateway Endpoints para que el tráfico a S3/DynamoDB no salga a internet.
- Filtrado de resultados de AWS CLI con `--query` para no perderme en el JSON.
- Revisar y limpiar recursos que ya no se usan, para no generar costos de más (tanto en AWS como en Linux).
- Permisos de archivos en Linux (`chmod`, lectura/escritura/ejecución).
- Diagnóstico básico de sistema: uso de RAM vs. disco, qué carpeta ocupa más espacio.
- Procesos y servicios: diferencia entre matar un proceso (`kill`) y controlar un servicio (`systemctl`).
- Automatización de tareas con `cron`.

## 👤 Autor

**Roanger Ochoa**
📍 Aguascalientes, México
🔗 [github.com/RoaDevOps](https://github.com/RoaDevOps) · [devxter.vercel.app](https://devxter.vercel.app)