json.extract! payer, :id, :name, :bill_name, :account, :sum, :invoke, :active_record, :created_at, :updated_at
json.url payer_url(payer, format: :json)
