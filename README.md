# AWS DevOps Labs 🚀
# AWS DevOps Labs 🚀

Repositorio de prácticas y scripts en AWS, como parte de mi preparación para la certificación **AWS Solutions Architect Associate (SAA-C03)** y mi aprendizaje hacia un rol Jr. en Cloud/DevOps.

## 🎯 Objetivo

Documentar ejercicios y pequeños scripts mientras aprendo: auditoría básica de recursos vía CLI, y conceptos de AWS como IAM y VPC Endpoints aplicados en práctica.

## 🛠️ Stack

- **AWS CLI** — interacción y automatización vía terminal
- **IAM** — Roles, Instance Profiles, políticas de mínimo privilegio
- **Lambda** — funciones serverless (Node.js)
- **API Gateway** — exposición de endpoints HTTP
- **DynamoDB** — base de datos NoSQL serverless
- **S3** — almacenamiento de objetos, VPC Gateway Endpoints
- **VPC** — networking, endpoints, control de tráfico privado

## 📂 Scripts

### `scripts/aws-inventory.sh`

Script de auditoría rápida que lista los recursos activos en una cuenta AWS: buckets S3, funciones Lambda y tablas DynamoDB. Pensado para detectar recursos huérfanos o de prueba que generan costo sin uso real.

**Uso:**
```bash
chmod +x scripts/aws-inventory.sh
./scripts/aws-inventory.sh
```

**Por qué existe:** mientras practicaba para la certificación, encontré recursos sin usar en mi propia cuenta (una EC2 olvidada, una tabla DynamoDB y una Lambda de prueba). Este script me ayuda a revisarlo rápido en vez de ir servicio por servicio a mano.

## 📌 Conceptos que he ido practicando

- IAM Role + Instance Profile como alternativa a guardar credenciales en una instancia EC2.
- VPC Gateway Endpoints para que el tráfico a S3/DynamoDB no salga a internet.
- Filtrado de resultados de AWS CLI con `--query` para no perderme en el JSON.
- Revisar y limpiar recursos que ya no se usan, para no generar costos de más.

## 👤 Autor

**Roanger Ochoa**
📍 Aguascalientes, México
🔗 [github.com/RoaDevOps](https://github.com/RoaDevOps) · [devxter.vercel.app](https://devxter.vercel.app)
