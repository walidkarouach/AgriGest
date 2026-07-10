# 🌿 AgriGest

AgriGest est une application web développée avec **Laravel 12** permettant de gérer les parcelles agricoles d'une coopérative. Elle offre un système CRUD complet (Créer, Lire, Modifier, Supprimer) afin de faciliter le suivi des parcelles.

---

## 📌 Contexte

Une coopérative agricole souhaite remplacer la gestion papier de ses parcelles par une application web interne.

L'objectif est de centraliser les informations des parcelles afin de préparer l'application à de futures évolutions comme :

- Gestion des récoltes
- Alertes météo
- Statistiques agricoles

---

## 🚀 Fonctionnalités

- ✅ Afficher la liste des parcelles
- ✅ Consulter les détails d'une parcelle
- ✅ Ajouter une nouvelle parcelle
- ✅ Modifier une parcelle existante
- ✅ Supprimer une parcelle
- ✅ Validation des formulaires
- ✅ Génération de données fictives avec Factory & Seeder
- ✅ Interface responsive avec Bootstrap

---

## 🛠️ Technologies utilisées

- Laravel 12
- PHP 8
- MySQL
- Bootstrap 5
- Blade
- Eloquent ORM

---

## ⚙️ Installation

### 1. Cloner le projet

```bash
git clone https://github.com/walidkarouach/AgriGest.git
```

### 2. Accéder au dossier

```bash
cd AgriGest
```

### 3. Installer les dépendances

```bash
composer install
```

### 4. Copier le fichier .env

```bash
cp .env.example .env
```

### 5. Générer la clé de l'application

```bash
php artisan key:generate
```

### 6. Configurer la base de données

Modifier le fichier `.env`

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=agrigest
DB_USERNAME=root
DB_PASSWORD=
```

### 7. Exécuter les migrations et les seeders

```bash
php artisan migrate:fresh --seed
```

### 8. Lancer le serveur

```bash
php artisan serve
```

Puis ouvrir :

```
http://127.0.0.1:8000/parcelles
```

---

## 📷 Pages de l'application

- Liste des parcelles
- Ajouter une parcelle
- Modifier une parcelle
- Détails d'une parcelle

---

## 👨‍💻 Auteur

**Walid Karouach**

Développeur Full Stack Junior

GitHub : https://github.com/walidkarouach