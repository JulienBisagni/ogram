import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { modal } from '../plugins/modal.js'

import { slide} from '../plugins/slide';
import {swipePost} from '../plugins/swipePost';

window.$ = $;

initMapbox();
initAutocomplete();
modal();
slide();
swipePost();
