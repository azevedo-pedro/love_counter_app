#!/usr/bin/env bash
# exit on error
set -o errexit

# Instala as dependências
bundle install

# Precompila os assets
bundle exec rails assets:precompile

# Executa as migrações do banco de dados
bundle exec rails db:migrate
# Para o primeiro deploy, ou se você preferir resetar e popular o banco,
# você pode usar 'bundle exec rails db:prepare' no lugar de 'db:migrate'.
# Cuidado ao usar db:prepare em produção, pois pode apagar dados.