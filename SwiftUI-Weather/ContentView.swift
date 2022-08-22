import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackGroundView(isNight: isNight)
            VStack {
                cityTextView(cityName: "Cupertino, CA")
                
                mainWeatherStatusView(imageName: isNight ?  "moon.stars.fill" : "cloud.sun.fill" ,
                                      tempName: 76)
                
                HStack(spacing: 10){
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "tornado",
                                   temprature: 30)
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.rain.fill",
                                   temprature: 60)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temprature: 92)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.hail.fill",
                                   temprature: 20)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "wind.snow",
                                   temprature: 44)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temprature: 76)
                }
                Spacer()
                  
                Button {
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.blue)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .opacity(0.9))
                    
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temprature: Int
    
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temprature)˚")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    
   var isNight : Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct cityTextView : View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct mainWeatherStatusView: View {
    
    var imageName: String
    var tempName: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(tempName)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)

        }.padding(.bottom, 40)
    }
}
