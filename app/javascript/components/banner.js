import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Oserez-vous entrer?", "Cliquez sur la cible!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
