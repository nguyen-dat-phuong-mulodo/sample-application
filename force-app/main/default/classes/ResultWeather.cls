public class ResultWeather {
    
    public Coord coord { get; set; }
    public List<Weather> weather { get; set; }
    public string base { get; set; }
    public Main main { get; set; }
    public Wind wind { get; set; }
    public Clound clouds { get; set; }
    public integer dt { get; set; }
    public integer id { get; set; }
    public string name { get; set; }
    public integer cod { get; set; }
        
    public class Coord{
        public double lon { get; set; }
        public double lat { get; set; }
    }
    public class Weather{
        public integer id { get; set; }
        public string main { get; set; }
        public string description { get; set; }
        public string icon { get; set; }
    }
    public class Main{
        public double temp { get; set; }
        public double pressure { get; set; }
        public integer humidity { get; set; }
        public double temp_min { get; set; }
        public double temp_max { get; set; }
        public double sea_level { get; set; }
        public double grnd_level { get; set; }
    }
    
    public class Wind{
        public double speed { get; set; }
        public Integer deg { get; set; }
    }
    /**
    *abc
    */
    public class Clound{
        public Integer all { get; set; }
    }
    
}