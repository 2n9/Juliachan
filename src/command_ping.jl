"""
# module command_ping

- Julia version: 1.7.0
- Author: 2n9
- Date: 2021-12-01

#
"""

module command_ping

    using Discord
    function handler(c::Client, e::MessageCreate)
        println("Received Message: $(e.message.content)")

        create(c, Reaction, e.message, '👍')
    end

    export message_handler
end
