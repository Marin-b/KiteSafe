import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const updateInput = (marker) => {
  const latInput = document.querySelector('#spot_latitude')
  const longInput = document.querySelector('#spot_longitude')
  latInput.value = marker.lat
  longInput.value = marker.lng
}

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const mapIndex = document.getElementById('mapIndex');
  const mapShow = document.getElementById('mapShow');

  if (mapElement) { // only build a map if there's a div#map to inject into
    let marker
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    map.on("click", (evt) => {
      if (marker != undefined) { marker.remove()}
      marker = new mapboxgl.Marker()
        .setLngLat(evt.lngLat)
        .addTo(map)
      updateInput(evt.lngLat)
    })
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  }
  if (mapIndex) {
    mapboxgl.accessToken = mapIndex.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'mapIndex',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapIndex.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup({ offset: 25 })
        .setHTML(marker.infoWindow)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map)
    });
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  }
  if (mapShow) {
    const lat = parseFloat(document.querySelector('.lattitudeForMap').innerHTML)
    const long = parseFloat(document.querySelector('.longitudeForMap').innerHTML)
    console.log(lat, long)
    mapboxgl.accessToken = mapShow.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'mapShow',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [long, lat],
      zoom: 15
    });
    const marker = JSON.parse(mapShow.dataset.markers);
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
    };
};

export { initMapbox };
