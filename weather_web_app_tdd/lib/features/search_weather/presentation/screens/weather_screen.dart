import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bloc/weather_bloc.dart';
import '../widgets/failed_state.dart';
import '../widgets/loading_state.dart';
import '../widgets/weather_fetched.dart';

class WeatherScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.only(top: 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Weather-Man',
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Get.theme.primaryColor),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.1,
                    right: size.width * 0.1,
                  ),
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Search for a city',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () => controller.clear(),
                        icon: Icon(Icons.clear),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onFieldSubmitted: (city) {
                      BlocProvider.of<WeatherBloc>(context)
                          .add(GetWeatherForCity(city));
                    },
                  ),
                ),
                BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (context, state) {
                    if (state is WeatherInitial) {
                      return Container();
                    } else if (state is WeatherLoaded) {
                      return Expanded(
                        child: WeatherFetched(
                          weather: state.weather,
                        ),
                      );
                    } else if (state is WeatherLoading) {
                      return loadingWidget();
                    } else {
                      return failedState();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
