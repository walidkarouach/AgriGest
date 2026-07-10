<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Modifier une parcelle</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">

    <h2>Modifier une parcelle</h2>

    <form action="{{ route('parcelles.update', $parcelle) }}" method="POST">

        @csrf
        @method('PUT')

        <div class="mb-3">
            <label>Nom</label>
            <input type="text" name="nom" class="form-control" value="{{ $parcelle->nom }}">
        </div>

        <div class="mb-3">
            <label>Culture</label>
            <input type="text" name="culture" class="form-control" value="{{ $parcelle->culture }}">
        </div>

        <div class="mb-3">
            <label>Superficie</label>
            <input type="number" step="0.01" name="superficie" class="form-control" value="{{ $parcelle->superficie }}">
        </div>

        <div class="mb-3">
            <label>Date de plantation</label>
            <input type="date" name="date_plantation" class="form-control" value="{{ $parcelle->date_plantation }}">
        </div>

        <div class="mb-3">
            <label>Statut</label>

            <select name="statut" class="form-control">

                <option value="En culture" {{ $parcelle->statut == 'En culture' ? 'selected' : '' }}>En culture</option>

                <option value="Récoltée" {{ $parcelle->statut == 'Récoltée' ? 'selected' : '' }}>Récoltée</option>

                <option value="Préparation" {{ $parcelle->statut == 'Préparation' ? 'selected' : '' }}>Préparation</option>

            </select>

        </div>

        <button class="btn btn-warning">
            Modifier
        </button>

        <a href="{{ route('parcelles.index') }}" class="btn btn-secondary">
            Retour
        </a>

    </form>

</div>

</body>
</html>