<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter une parcelle</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">

    <h2>Ajouter une parcelle</h2>

    <form action="{{ route('parcelles.store') }}" method="POST">

        @csrf

        <div class="mb-3">
            <label>Nom</label>
            <input type="text" name="nom" class="form-control">
        </div>

        <div class="mb-3">
            <label>Culture</label>
            <input type="text" name="culture" class="form-control">
        </div>

        <div class="mb-3">
            <label>Superficie</label>
            <input type="number" step="0.01" name="superficie" class="form-control">
        </div>

        <div class="mb-3">
            <label>Date de plantation</label>
            <input type="date" name="date_plantation" class="form-control">
        </div>

        <div class="mb-3">
            <label>Statut</label>

            <select name="statut" class="form-control">
                <option>En culture</option>
                <option>Récoltée</option>
                <option>Préparation</option>
            </select>

        </div>

        <button class="btn btn-success">
            Enregistrer
        </button>

        <a href="{{ route('parcelles.index') }}" class="btn btn-secondary">
            Retour
        </a>

    </form>

</div>

</body>
</html>