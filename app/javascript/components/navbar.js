const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-full');
      } else {
        navbar.classList.remove('navbar-lewagon-full');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

// Taille de la fenêtre
// window.innerHeight
