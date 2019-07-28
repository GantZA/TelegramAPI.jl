
const API_URL = "https://api.telegram.org/bot"

function get_me(token)
    return JSON.parse(String(HTTP.get(API_URL * token *"/getMe").body))
end

function get_updates(token, offset)
    return JSON.parse(String(HTTP.get(API_URL * token *"/getUpdates?offset=" * string(offset)).body))
end

function send_message(token, chat_id, message="")
    return String(HTTP.post(API_URL * token * "/sendMessage?chat_id=" * chat_id * "&text=" * message))
end
