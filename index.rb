require 'httparty'

class Bot

    def initialize(token)
        @token = token
    end

    def test 
        response = HTTParty.get('https://httpbin.org/get')
        puts response.body if response.code == 200
    end

    def send(channel, content)
        
        params = { headers: { authorization: "Bot #@token" }, body: { content: content, tts: false } }
        HTTParty.post('https://discord.com/api/v9/channels/' + channel + "/messages", params)

    end

    def getMessage(channel, message)

        params = { headers: { authorization: "Bot #@token" } }
        response = HTTParty.get('https://discord.com/api/v9/channels/' + channel + "/messages/" + message, params)
        puts response.body if response.code == 200

    end

    def deleteMessage(channel, message)

        params = { headers: { authorization: "Bot #@token" } }
        response = HTTParty.delete('https://discord.com/api/v9/channels/' + channel + "/messages/" + message, params)
        
    end

end

