json.extract! invoice, :id, :id, :customer_name, :customer_address, :items, :job_date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
