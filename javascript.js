document.addEventListener("DOMContentLoaded", function () {
    // Exemplo: Fetch para pegar dados de uma API ou servidor
    fetch('https://api-seu-servidor.com/clientes')
        .then(response => response.json())
        .then(data => {
            const tabela = document.getElementById('clientes-tabela');
            data.forEach(cliente => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${cliente.id}</td>
                    <td>${cliente.nome}</td>
                    <td>${cliente.tipo}</td>
                    <td>${cliente.contato}</td>
                `;
                tabela.appendChild(row);
            });
        })
        .catch(error => console.error('Erro ao carregar clientes:', error));
});
