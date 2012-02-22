bundle install --system && \
rake db:drop db:create db:migrate test cucumber
