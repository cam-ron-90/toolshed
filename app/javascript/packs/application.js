import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { loadDynamicBannerText } from '../components/banner';
import { initBookingPrice } from '../components/dateCalculation';
import { initMapbox } from '../plugins/initMapbox';
// import { calculateTotal } from '../components/dateCalculation';

// calculateTotal();
initBookingPrice();
loadDynamicBannerText();
initMapbox();



