json.extract! venda, :id, :valorTotal, :produto_id, :cliente_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)
