import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["More tasty cocktails", "than your liver can handle."],
    typeSpeed: 25,
    loop: true
  });
}

export { loadDynamicBannerText };
