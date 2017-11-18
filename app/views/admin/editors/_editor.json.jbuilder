json.extract! editor, :id, :email, :password, :password_confirmation, :created_at, :updated_at
json.url editor_url(editor, format: :json)
