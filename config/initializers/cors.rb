Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://127.0.0.1:5173' # Replace with the appropriate domain of your React application
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
end
