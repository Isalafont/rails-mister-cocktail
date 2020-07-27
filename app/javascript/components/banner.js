import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Déguster et Partager", "Retrouvez les meilleures recettes de cocktails"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
