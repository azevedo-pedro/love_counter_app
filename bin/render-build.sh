#!/usr/bin/env bash

# Exit on error
set -o errexit

# Adicione a versão do Ruby explicitamente (opcional, mas boa prática)
# Ex: export RUBY_VERSION="3.2.2"
# Adicione ou garanta que as variáveis de ambiente necessárias estejam presentes,
# embora o Render já forneça muitas delas.

# Instala as gems
bundle install

# Precompila os assets
RAILS_ENV=production bundle exec rails assets:precompile
RAILS_ENV=production bundle exec rails db:prepare

# Executa as migrações do banco de dados
# Isso é importante para novas implantações ou atualizações de esquema
RAILS_ENV=production bundle exec rails db:migrate

# Certifique-se de que a migração do Solid Cache seja executada
# Se você tiver `solid_cache`, você precisará executar as migrações específicas
# rails solid_cache:install:migrations
# rails db:migrate
# Certifique-se que estas migrações já estão no seu repositório local.