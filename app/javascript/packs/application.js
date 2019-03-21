import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initOnboardingSlider } from '../functions/onboarding';
import { showUploadedPictures } from '../functions/showPictures';
import { showForms } from '../functions/difficultyLevel';
import { matchScroll } from '../functions/matchScroll'

initOnboardingSlider();
initMapbox();
showUploadedPictures();
showForms();
matchScroll();
