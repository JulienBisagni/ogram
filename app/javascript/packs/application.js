import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import $ from 'jquery';
import swipe from 'jquery-touchswipe';
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { swipePost } from '../plugins/swipePost';

window.$ = $;

initMapbox();
initAutocomplete();
swipePost();
