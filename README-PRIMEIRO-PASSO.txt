RISSY SECRET — SITE PARA CLOUDFLARE PAGES
========================================

O pacote contém a loja pública, painel administrativo e funções de servidor para login e cadastro de produtos. A estética usa bordô, creme e rosé, com textos em português.

IMPORTANTE: o arquivo ainda NÃO é um site publicado. Para existir um link público e o painel funcionar com salvamento real, é necessário publicar no Cloudflare e criar o banco de dados seguindo os passos abaixo. Não compartilhe sua senha com ninguém.

1) CRIAR O BANCO DE DADOS
- Entre em https://dash.cloudflare.com/
- No menu, abra Workers & Pages > D1 SQL Database (o nome do menu pode variar).
- Crie um banco chamado: rissy-secret-db
- Abra o banco, vá para Console/Query e execute todo o conteúdo do arquivo schema.sql.

2) PUBLICAR O SITE
- Abra https://pages.cloudflare.com/ e entre na sua conta.
- Escolha criar um projeto Pages e conectar um repositório Git.
- Se preferir enviar arquivos diretamente, confira se sua conta oferece Direct Upload para projetos com Pages Functions. Algumas formas de upload direto não publicam Functions; nesse caso, use Git ou Wrangler.
- Os arquivos da pasta do projeto precisam ser enviados como projeto, preservando a estrutura das pastas `functions/api/` e `admin/`. Não envie apenas index.html.
- Não é necessário comprar domínio. O Cloudflare oferece um endereço gratuito terminado em `pages.dev`.

3) LIGAR O BANCO AO SITE
Nas configurações do projeto Pages, procure Functions > D1 database bindings e adicione:
  Variable name / Binding name: DB
  D1 database: rissy-secret-db
Salve e faça novo deploy.

4) CONFIGURAR LOGIN PRIVADO
Nas configurações do projeto, em Settings > Variables and Secrets (o nome pode variar), crie estas variáveis de ambiente para Production:
  ADMIN_EMAIL = o e-mail que você usará para entrar
  ADMIN_PASSWORD = crie uma senha forte e exclusiva
  SESSION_SECRET = uma sequência aleatória longa, diferente da senha
Configure as três como secrets quando a interface permitir. Não coloque esses valores em arquivos públicos nem os envie no chat.
Depois salve e faça novo deploy.

5) COMO ACESSAR
- Loja dos clientes: https://SEU-NOME.pages.dev/
- Painel privado: https://SEU-NOME.pages.dev/admin/
O endereço verdadeiro só aparece depois da publicação.

6) COMO CADASTRAR PEÇAS
Entre no painel com ADMIN_EMAIL e ADMIN_PASSWORD. Preencha nome, categoria, preço, tamanhos, cor e descrição. Pode enviar foto JPG/PNG/WebP de até 1,5 MB. Salve. A peça fica armazenada no D1 e aparece na vitrine pública. Pode editar e excluir produtos.

NOTAS
- A loja tem filtros por categoria, tamanho e busca.
- O botão “Consultar peça” abre o WhatsApp com uma mensagem pronta, mas sem número configurado o cliente precisará escolher o contato. Depois, você pode configurar seu número de WhatsApp.
- As peças de exemplo são apenas uma prévia de visual; remova-as depois de publicar os produtos reais.
- O site não cria sozinho uma conta Cloudflare, banco ou link público. A publicação e configuração inicial precisam ser feitas na sua conta.
