document.getElementById('searchBtn').addEventListener('click', buscarPokemon);

async function buscarPokemon() {
    const input = document.getElementById('pokemonInput').value.trim().toLowerCase();
    const resultDiv = document.getElementById('result');

    if (!input) {
        resultDiv.innerHTML = '<p class="error">Por favor, escribe el nombre o ID de un Pokémon.</p>';
        return;
    }

    resultDiv.innerHTML = '<p class="loading">Cargando...</p>';

    try {
        const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${input}`);

        if (!response.ok) {
            throw new Error('Pokémon no encontrado');
        }

        const data = await response.json();

        const pesoKg = data.weight / 10;
        const alturaMetros = data.height / 10;

        resultDiv.innerHTML = `
            <h2>${data.name.toUpperCase()} (#${data.id})</h2>
            <img src="${data.sprites.front_default}" alt="${data.name}">
            <p><strong>Peso:</strong> ${pesoKg} kg</p>
            <p><strong>Altura:</strong> ${alturaMetros} m</p>
        `;

    } catch (error) {
        resultDiv.innerHTML = `<p class="error">Error: ${error.message}. Intenta con otro nombre o ID.</p>`;
    }
}