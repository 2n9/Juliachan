#=
main.jl:
- Julia version: 1.7.0
- Author: 2n9
- Date: 2021-12-01
=#

using Discord

module Bot
    using Discord
    function main()
        c = Client(""; presence=(game=(name="with Julia", type=AT_GAME),))

        include("command_ping.jl")

        add_handler!(c, MessageCreate, command_ping.handler)

        open(c)

        wait(c)
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    c = Bot.main()
    wait(c)
end

