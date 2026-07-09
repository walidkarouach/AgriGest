<!DOCTYPE html>
<html>
<head>
    <title>Liste des Parcelles</title>
</head>
<body>

    <h1>Liste des Parcelles</h1>

    @foreach ($parcelles as $parcelle)
        <p>{{ $parcelle->nom }}</p>
    @endforeach

</body>
</html>