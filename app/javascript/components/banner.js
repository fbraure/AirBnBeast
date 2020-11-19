import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Vous avez un problème?", "Nous avons les Beast solutions"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
