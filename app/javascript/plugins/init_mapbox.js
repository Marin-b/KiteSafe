import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const updateInput = (marker) => {
  const latInput = document.querySelector('#spot_latitude')
  const longInput = document.querySelector('#spot_longitude')
  latInput.value = marker.lat
  longInput.value = marker.lng
}

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const mapIndex = document.getElementById('mapIndex')

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
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(new mapboxgl.Popup({ offset: 25 })
        .setHTML(marker.infoWindow.content)
        .addTo(map);
    });
  }
};

export { initMapbox };
