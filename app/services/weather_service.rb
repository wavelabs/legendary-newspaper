class WeatherService
    def GetWeather
    city_name = "san miguel de tucuman"
    country_code = "AR"
    api_key = 'd34b8ee4d731228583756c0e25da471e'
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city_name},#{country_code}&appid=#{api_key}&lang=es")
    data = response.body
     temp_min = response['main']['temp_min'] - 273.15
    temp_max = response['main']['temp_max'] - 273.15
    humidity = response['main']['humidity']
    pressure = response['main']['pressure']
    json_data = JSON.parse(data)
    image = json_data['weather'].first['icon']
    wind = json_data['wind']['speed']

    weather = {temp_min: temp_min, temp_max: temp_max, 
        humidity: humidity, pressure: pressure, image: image, wind: wind}   
    end
end