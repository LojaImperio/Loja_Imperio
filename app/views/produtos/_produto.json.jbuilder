json.extract! produto, :id, :descricao, :quantidade, :categoria, :subcategoria, :valor, :tamanho, :created_at, :updated_at
json.url produto_url(produto, format: :json)
