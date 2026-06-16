#!/bin/bash
# Script: aws-inventory.sh
# Descripción: Lista los recursos principales de tu cuenta AWS
# Autor: Roanger Ochoa

echo "============================="
echo "  AWS Resource Inventory"
echo "============================="

echo ""
echo "📦 Buckets S3:"
aws s3 ls

echo ""
echo "⚡ Funciones Lambda:"
aws lambda list-functions --query 'Functions[*].FunctionName' --output table

echo ""
echo "🗄️  Tablas DynamoDB:"
aws dynamodb list-tables --output table

echo ""
echo "============================="
echo "  Inventario completado ✅"
echo "============================="
