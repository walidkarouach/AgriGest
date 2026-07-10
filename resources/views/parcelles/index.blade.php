<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Parcelles</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">

    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Liste des Parcelles</h2>

        <a href="{{ route('parcelles.create') }}" class="btn btn-success">
            Ajouter une parcelle
        </a>
    </div>

    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>Nom</th>
                <th>Culture</th>
                <th>Superficie</th>
                <th>Statut</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>

        @foreach($parcelles as $parcelle)

            <tr>

                <td>{{ $parcelle->nom }}</td>

                <td>{{ $parcelle->culture }}</td>

                <td>{{ $parcelle->superficie }} ha</td>

                <td>{{ $parcelle->statut }}</td>

                <td>

                    <a href="{{ route('parcelles.show',$parcelle) }}" class="btn btn-primary btn-sm">
                        Voir
                    </a>

                    <a href="{{ route('parcelles.edit',$parcelle) }}" class="btn btn-warning btn-sm">
                        Modifier
                    </a>

                <form action="{{ route('parcelles.destroy', $parcelle) }}" method="POST" style="display:inline;">

                    @csrf
                    @method('DELETE')

                    <button
                        type="submit"
                        class="btn btn-danger btn-sm"
                        onclick="return confirm('Voulez-vous vraiment supprimer cette parcelle ?')">
                        Supprimer
                    </button>

                </form>

                </td>

            </tr>

        @endforeach

        </tbody>

    </table>

</div>

</body>
</html>