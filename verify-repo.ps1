# Script de Verificación del Repositorio GitHub
# Mototaxi Rush Project

Write-Host "🔍 Verificando configuración del repositorio..." -ForegroundColor Cyan
Write-Host ""

# Verificar estado de Git
Write-Host "1. Estado de Git:" -ForegroundColor Yellow
git status
Write-Host ""

# Verificar remote
Write-Host "2. Configuración de Remote:" -ForegroundColor Yellow
git remote -v
Write-Host ""

# Verificar commits
Write-Host "3. Últimos commits:" -ForegroundColor Yellow
git log --oneline -5
Write-Host ""

# Verificar archivos
Write-Host "4. Archivos en el repositorio:" -ForegroundColor Yellow
git ls-files
Write-Host ""

# Verificar conexión
Write-Host "5. Verificando conexión con GitHub..." -ForegroundColor Yellow
try {
    git fetch origin --dry-run 2>&1 | Out-Null
    Write-Host "✅ Conexión exitosa" -ForegroundColor Green
} catch {
    Write-Host "❌ Error de conexión: $_" -ForegroundColor Red
}
Write-Host ""

# Información del repositorio
Write-Host "6. Información del repositorio:" -ForegroundColor Yellow
Write-Host "   URL: https://github.com/Luvicas/cool.git" -ForegroundColor White
Write-Host "   Branch: main" -ForegroundColor White
Write-Host ""

# Instrucciones
Write-Host "📋 Si recibes error 404:" -ForegroundColor Cyan
Write-Host "   1. Verifica que el repositorio existe en GitHub" -ForegroundColor White
Write-Host "   2. Asegúrate de tener permisos de escritura" -ForegroundColor White
Write-Host "   3. Configura autenticación si es necesario:" -ForegroundColor White
Write-Host "      git config --global user.name 'Luvicas'" -ForegroundColor Gray
Write-Host "      git config --global user.email 'tu-email@example.com'" -ForegroundColor Gray
Write-Host "   4. O usa Personal Access Token:" -ForegroundColor White
Write-Host "      git remote set-url origin https://TU_TOKEN@github.com/Luvicas/cool.git" -ForegroundColor Gray
Write-Host ""

Write-Host "✅ Verificación completada" -ForegroundColor Green


