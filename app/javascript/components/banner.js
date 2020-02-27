import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text')
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["At your fingertips", "easy as."],
      typeSpeed: 25,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
