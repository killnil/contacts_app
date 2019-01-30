if current_user
  json.user_email current_user.email
end

json.partial! @contact, partial: "contact", as: :contact