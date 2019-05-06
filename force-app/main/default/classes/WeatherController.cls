global class WeatherController {
    
    @RemoteAction
    global static String fetchWeather(double lat, double lng){
        system.debug(lat);
        system.debug(lng);
        HttpRequest req = new HttpRequest();
        String url = 'https://api.openweathermap.org/data/2.5/weather?appid=53bef0d54f0a5b823e659fdc7c21fa32&lat='+lat+'&lon='+lng+'&lang='+UserInfo.getLanguage();
        req.setEndpoint(url);
        req.setMethod('GET');
        Http http = new Http();
        HTTPresponse res= http.send(req);
        string response = res.getBody();
        return response;
    }

}