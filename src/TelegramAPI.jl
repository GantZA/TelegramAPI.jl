module TelegramAPI

using HTTP, JSON
include("api.jl")

export get_me, get_updates, send_message

end # module
