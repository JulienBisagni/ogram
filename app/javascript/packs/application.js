import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import $ from 'jquery';
import swipe from 'jquery-touchswipe';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { modal } from '../plugins/modal.js'
import { swipePost } from '../plugins/swipePost';
import { searchBar } from '../plugins/searchBar';
import { submitComment, deleteComment } from '../plugins/comment';

window.$ = $;

initMapbox();
initAutocomplete();
modal();
swipePost();
searchBar();
submitComment();
deleteComment();

window.swipePost = swipePost;
window.modal = modal;
