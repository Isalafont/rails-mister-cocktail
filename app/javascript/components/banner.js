import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Déguster et Partager", "Retrouvez les meilleurs recettes!"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
