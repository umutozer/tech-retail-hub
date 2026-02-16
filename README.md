# tech-retail-hub

Cep telefonu ve bilgisayar satışı için dinamik ürün kataloglu, admin panelli, modern landing page ve tanıtım sitesi.

## Teknoloji

| | |
|---|---|
| Mimari | aspnet-core |
| Frontend | React + Vite + Tailwind CSS |
| Backend | ASP.NET Core 8 Web API |
| Veritabani | PostgreSQL |
| Deployment | Docker + Nginx |

## Kurulum

```bash
cd Backend
dotnet restore
dotnet run
```

## Dosya Yapisi

```
tech-retail-hub/
  styles/variables.css
  styles/reset.css
  styles/global.css
  database/schema.sql
  database/seed.sql
  Backend/TechRetailHub.API/Program.cs
  Backend/TechRetailHub.Core/Entities/Models.cs
  Backend/TechRetailHub.Infrastructure/Data/AppDbContext.cs
  Backend/TechRetailHub.API/Controllers/AuthController.cs
  Backend/TechRetailHub.API/Controllers/ProductController.cs
  Backend/TechRetailHub.API/appsettings.json
  Backend/TechRetailHub.API/TechRetailHub.API.csproj
  Frontend/package.json
  Frontend/vite.config.js
  Frontend/tailwind.config.js
  Frontend/src/index.css
  Frontend/src/services/api.js
  Frontend/src/context/AuthContext.jsx
  Frontend/src/components/ProtectedRoute.jsx
  Frontend/src/pages/Home.jsx
  Frontend/src/pages/Login.jsx
  Frontend/src/App.jsx
  tests/test-plan.md
  tests/checklist.md
  .gitignore
  .github/workflows/deploy.yml
  Dockerfile
  docker-compose.yml
```

## Uretim Raporu

- uiux: Tamamlandi
- db: Tamamlandi
- backend: Tamamlandi
- frontend: Tamamlandi
- qa: Tamamlandi
- devops: Tamamlandi

---

> Bu proje Kurumsal AI Yazilim Ajansi tarafindan otomatik olarak uretilmistir.
