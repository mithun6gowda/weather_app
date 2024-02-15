part of 'weather_block_event_dart';

sealed class WeatherBlockEvent extends Equatable{
const WeatherBlockEvent();

List<Object> get props =>[];
}

final   class FetchWeather extends WeatherBlockEvent { }

