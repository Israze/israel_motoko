actor SimpleConverter {

    //constants
    let metersToFeetFactor : Float = 3.28084;
    let celsiusToFahrenheitOffset : Float = 32.0;
    let celsiusToFahrenheitFactor : Float = 9.0 / 5.0;

    //meters to feet
    public func metersToFeet(meters: Float) : async Float {
        return meters * metersToFeetFactor;
    };

    //feet to meters
    public func feetToMeters(feet: Float) : async Float {
        return feet / metersToFeetFactor;
    };

    //Celsius to Fahrenheit
    public func celsiusToFahrenheit(celsius: Float) : async Float {
        return (celsius * celsiusToFahrenheitFactor) + celsiusToFahrenheitOffset;
    };

    //Fahrenheit to Celsius
    public func fahrenheitToCelsius(fahrenheit: Float) : async Float {
        return (fahrenheit - celsiusToFahrenheitOffset) / celsiusToFahrenheitFactor;
    };
};