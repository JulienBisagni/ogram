import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { modal } from '../plugins/modal.js'
import $ from 'jquery';
import swipe from 'jquery-touchswipe';
import { swipePost } from '../plugins/swipePost';

window.$ = $;

initMapbox();
initAutocomplete();
modal();
swipePost();
