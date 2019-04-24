import 'bootstrap';
import Turbolinks from 'turbolinks';
import { initMapbox } from '../plugins/mapbox';

const turbolinks = Turbolinks.start();

document.addEventListener('turbolinks:load', () => {
  initMapbox();
});
