#!/bin/bash
sleep 30 &
conky -c ~/.conky/transparent-tiles/time &
sleep 5 &
conky -c ~/.conky/transparent-tiles/systemstat &
sleep 5 &
conky -c ~/.conky/transparent-tiles/weather_now &
sleep 5 &
conky -c ~/.conky/transparent-tiles/weather_forecast &
sleep 5 &
conky -c ~/.conky/transparent-tiles/news &
sleep 5 &
conky -c ~/.conky/transparent-tiles/mpd &
exit 0
