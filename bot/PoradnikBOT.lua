local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logged in as '.. client.user.username)
end)







client:on('messageCreate', function(message)
    if message.content == '!tworca' then
        message.channel:send('🤖Moim tworcą jest igorxd#5769🤖')
    end
end)







client:on('messageCreate', function(message)
    if message.content == '!pomoc' then
        message.channel:send('🌍Oto lista komend: !tworca, !zapro, !pomoc, !bot, !iq, !kostka, !mem, !powiedz !moneta !ocena🌍')
    end
end)







client:on('messageCreate', function(message)
    if message.content == '!zapro' then
        message.channel:send('Witaj moja prośba wyślij to do znajomych będę ci bardzo wdzięczny😉 https://discord.gg/YNS9h5Sv')
    end
end)







client:on("messageCreate", function(message)

    local content = message.content
    local author = message.author

    if content == "!bot" then
        message:delete()
        local wiadomosc = message.channel:send {
            embed = {
                title = "Zaproszenie bota na serwer:",
                description = "https://discord.com/api/oauth2/authorize?client_id=901431531455807518&permissions=8&redirect_uri=https%3A%2F%2Fdiscord.com%2Fapi%2Foauth2%2Fauthorize&scope=bot",
                author = {
                    name = author.username,
                    icon_url = author.avatarURL
                },
                footer = {
                    text = ""..os.date()..""
                },
                color = 0x747ba1
            }
        }
    wiadomosc:addReaction("❤")
    end

end)






client:on('messageCreate', function(message)
    discordia.extensions()
    local args = message.content:split(" ")
	local command = table.remove(args, 1)
	if command == "!clear" then 
	local Member = message.member 
	if Member:hasPermission('administrator') or message.member == owner then
	local ilosc = table .concat(args, " ")
	ilosc = ilosc .. "\n"
message.channel:send('Usuwam ostatnie '.. ilosc ..' wiadomości')
      mg =  message.channel:getMessages(ilosc)
    message.channel:bulkDelete(mg)
    else
    message.channel:send('Nie posiadasz dostępu do tej komendy') 
   end
end
end)







client:on('messageCreate', function(message)
    if message.content == '!kostka' then
                local max, random = math.max, math.random
              kostka= random(1,6)
                message.channel:send('Wypadło ' ..kostka .. ' !')
        end
end)







client:on('messageCreate', function(message)
    if message.content == '!iq' then
                local max, random = math.max, math.random
                losowanie = random(1,3)
                iq = random(-100, 1000)
        if losowanie == 1 then
                        message.channel:send('Masz ' .. iq .. ' IQ!')
        end
        if losowanie == 2 then
                        message.channel:send('Według wszystkich obliczeń których nie ma, masz ' .. iq ..' IQ!')
        end
        if losowanie == 3 then
                        message.channel:send('Masz ' .. iq .. ' IQ! To więcej niż ja!')
        end
    end
end)






client:on("messageCreate", function(message)
    local content = message.content
    local author = message.author
    if content == "<@!901431531455807518>" then
        message.channel:send {
            embed = {
                title = "Prefix: !",
                author = {
                    name = author.username,
                    icon_url = author.avatarURL 
                },
                fields = { -- array of fields
                {
                    name = "Informacja",
                    value = "<@!"..message.member.id..">Pamiętaj że w moim statusie też to pisze!",
                    inline = true
                }
             },
                footer = {
                    text = ""
                },
                color = 0x5959FF -- kolor hex   
            }
        }
    end
end)





client:on('messageCreate', function(message)
    if message.content == '!mem' then
                local max, random = math.max, math.random
                mem = random(1,13)
        if mem == 1 then
                        message.channel:send('https://cdn.discordapp.com/attachments/806450646839721996/830171193553453086/unknown.png')
                end
        if mem == 2 then
                        message.channel:send('https://d-art.ppstatic.pl/kadry/k/r/50/ea/5f6e3d064c781_o_medium.jpg')
                end
        if mem == 3 then
                        message.channel:send('https://www.wykop.pl/cdn/c3201142/comment_7SJ4QJjAXlIN8drigWpMMfhhbcGPZcHB.jpg')
                end
        if mem == 4 then
                        message.channel:send('https://memy.pl/show/big/uploads/Post/361262/16182404693785.jpg')
                end
        if mem == 5 then
                        message.channel:send('https://i.ytimg.com/vi/VE0jxGyS3es/maxresdefault.jpg')
                end
        if mem == 6 then
                        message.channel:send('https://pbs.twimg.com/media/EySQjFvWgAYNxez.jpg')
                end
        if mem == 7 then
                        message.channel:send('https://memy.pl/show/big/uploads/Post/361251/16182393652102.jpg')
                end
        if mem == 8 then
                        message.channel:send('https://cdn.discordapp.com/attachments/816930473086550026/834741183333924864/unknown.png')
                end
        if mem == 9 then
                        message.channel:send('https://imgur.com/ock5lnc')
                end
        if mem == 10 then
                        message.channel:send('https://imgur.com/AFCS3cV')
                end
        if mem == 11 then
                        message.channel:send('https://imgur.com/aWILyOD')
                end
        if mem == 12 then
                        message.channel:send('https://imgur.com/OQOg2cP')
                end
        if mem == 13 then
                    message.channel:send('https://i.imgur.com/Am0n1ec_d.webp?maxwidth=760&fidelity=grand')
                end
        if mem == 14 then
                    message.channel:send('https://i.imgur.com/ip30E1D.jpg')
                end
        if mem == 15 then
                   message.channel:send('https://i.imgur.com/v1dTPDQ.png')
                end
        if mem == 16 then
                    message.channel:send('https://cdn.discordapp.com/attachments/716678166252355635/799730784834420736/139621615_10221853773007409_4262167975253640621_o.png')
                end
        if mem == 17 then
                    message.channel:send('https://cdn.discordapp.com/attachments/716678166252355635/799719452009955378/139425161_4061825953848603_1277844212708802553_n.png')
                end
        if mem == 18 then
                    message.channel:send('https://cdn.discordapp.com/attachments/716678166252355635/799036594938052618/139095210_2824969917770016_391513931977284205_o.png')
                end
        if mem == 19 then
                    message.channel:send('https://cdn.discordapp.com/attachments/716678166252355635/798818255129018388/432534535.jpg')
                end
        if mem == 20 then
                    message.channel:send('https://cdn.discordapp.com/attachments/716678166252355635/797089602153611294/4634564363.jpg')
                end
        if mem == 21 then
                    message.channel:send('https://cdn.discordapp.com/attachments/697133424909221979/831079910377390110/5931_bingus.png')
                end
    end
end)





client:on('ready', function()
   print('Logged in as '.. client.user.username)
       client:setGame("@⚡FiveM Leaks PL")
end)






client:on('messageCreate', function(message)
    discordia.extensions()
    local args = message.content:split(" ")
    local command = table.remove(args, 1)
    if command == "!powiedz" then
    local nazwa = table.concat(args, " ")
    if nazwa == "" then
    message.channel:send {
    content = "Nic nie napisałeś!",
    }
    else
    message.channel:send {
    content = "Powtarzam: ''" .. nazwa .. "''.",
    }
        end
    end
end)






client:on('messageCreate', function(message)
    discordia.extensions()
    if message.author.bot then return end
    if not message.guild then return end
    local content = message.content
    local guild = message.guild
    if string.find(content:lower(), "i!ban") then
          if message.member:hasPermission('banMembers') == true then
            local user = message.mentionedUsers
            if user.first then
                for user in user:iter() do
                    local reasonstart, reasonend = string.find(content, user.id)
                    if reasonstart then
                        local member = guild:getMember(user.id)
                        if guild:getMember(message.author.id).highestRole.position > member.highestRole.position then
                            local usertwo = client:getUser(user.id)
                            if #content>reasonend+2 then
                                local reason = string.sub(content, reasonend+3, -1)
                                usertwo:send('Zostałeś zbanowany na ' .. guild.name .. '!\nPowód: "' .. reason .. '".')
                                message.channel:send("Zbanowano użytkownika: <@!" .. user.id .. ">.\nPowód: \"" .. reason .. "\".")
                            else
                                usertwo:send('Zostałeś zbanowany na ' .. guild.name .. '!')
                                message.channel:send("Zbanowano użytkownika: <@!" .. user.id .. ">.")
                            end
                            guild:banUser(user.id)
                        else
                            message.channel:send("Nie możesz zbanować osób które mają wyższą rolę!")
                        end
                    else
                        message.channel:send("Nie podałeś użytkownika!")
                    end
                    break
                end
            else
                message.channel:send("Nie podałeś użytkownika!")
            end
        else
            message.channel:send("Nie posiadasz uprawnień do banowania!")
        end
    end
end)






client:on('messageCreate', function(message)
    discordia.extensions()
    local client = message.client
    local guild = message.guild
    local args = message.content:split(" ")
    local command = table.remove(args, 1)
    local test = "tak"
    if command == "i!kick" then
    local Member = message.member
    if Member:hasPermission("kickMembers") == true then
    local nick = table.concat(args, " ")
    local nicktwo = "test"
    if nick and string.match(nick, "<@!%d+>") then
        print("Wyrzucono uzytkownika (pierwszym sposobem) ".. string.sub(nick, 4,-2))
        nicktwo = string.sub(nick, 4,-2)
    elseif nick and string.match(nick, "<@%d+>") then
        print("Wyrzucono uzytkownika (drugim sposobem) "..string.sub(nick, 3, -2))
        nicktwo = string.sub(nick, 3, -2)
    elseif nick and string.match(nick, "%d+") then
        print("Wyrzucono uzytkownika (trzecim sposobem) ".. string.match(nick, "%d+"))
        nicktwo = string.match(nick, "%d+")
    else test = "nie"
    end
    if test == "tak" then
    local User = client:getUser(nicktwo)
    User:send('Zostałeś wyrzucony!')
    guild:kickUser(nicktwo)
    message.channel:send {
    content = "Wyrzucono użytkownika: " .. nick .. "!",
    }
    elseif test == "nie" then
    message.channel:send {
    content = "BŁĄD \nNiepoprawna nazwa użytkownika!",
    }
    end
    else message.channel:send {
    content = "BŁĄD \nNie posiadasz uprawnień do wyrzucania! \nADMINISTRATOR",
    }
    end
    end
end)







client:on('messageCreate', function(message)
    discordia.extensions()
    local client = message.client
    local guild = message.guild
    local args = message.content:split(" ")
    local command = table.remove(args, 1)
    local test = "tak"
    if command == "i!unban" then
    local Member = message.member
    if Member:hasPermission("banMembers") == true then
    local nick = table.concat(args, " ")
    local nicktwo = "test"
    if nick and string.match(nick, "<@!%d+>") then
        print("Zunbanowano uzytkownika (pierwszym sposobem) ".. string.sub(nick, 4,-2))
        nicktwo = string.sub(nick, 4,-2)
    elseif nick and string.match(nick, "<@%d+>") then
        print("Zunbanowano uzytkownika (drugim sposobem) "..string.sub(nick, 3, -2))
        nicktwo = string.sub(nick, 3, -2)
    elseif nick and string.match(nick, "%d+") then
        print("Zunbanowano uzytkownika (trzecim sposobem) ".. string.match(nick, "%d+"))
        nicktwo = string.match(nick, "%d+")
    else test = "nie"
    end
    if test == "tak" then
    local User = client:getUser(nicktwo)
    User:send('Dostałeś unbana!')
    guild:unbanUser(nicktwo)
    message.channel:send {
    content = "Odbanowałem użytkownika: " .. nick .. "!",
    }
    elseif test == "nie" then
    message.channel:send {
    content = " Kogo mam unbanować? ",
    }
    end
    else message.channel:send {
    content = " NIE MASZ UPRAWNIEŃ DO TEJ KOMENDY!",
    }
    end
    end
end) 







client:on('messageCreate', function(message)
    if message.content == '!ocena' then
                local max, random = math.max, math.random
              ocena= random(1,6)
                message.channel:send('Jutro dostaniesz ' ..ocena .. ' w szkole!')
        end
end)







client:on('messageCreate', function(message)
    if message.content == '!moneta' then
                local max, random = math.max, math.random
              moneta= random(1,1000)
                message.channel:send('Wypadło ci ' ..moneta .. ' monet!')
        end
end)







client:run('Bot OTAxNDMxNTMxNDU1ODA3NTE4.YXPxiA.iK0EsZbhov1x564ICvPEdHbPia4')