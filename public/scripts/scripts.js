(function () {
  /*
   * For disabled js
   */
  const body = document.querySelector('body');
  body.classList.remove('no-js');

  /*
   * For the mobile menu
   */
  const menuToogle = document.querySelector('.js-menu-toggler');
  menuToogle.addEventListener('click', function (e) {
    this.classList.toggle('active');
    e.preventDefault();
  });

  /*
   * Accordion
   */
  const accordionList = document.querySelector('.js-accordion');
  const accordionToggles = accordionList.querySelectorAll('.js-accordion__title');
  accordionToggles.forEach(function(item, i, arr) {
    item.addEventListener('click', function (e) {
      if(this.parentNode.classList.contains('active')) {
        this.parentNode.classList.remove('active');
      } else {
        this.parentNode.classList.add('active');
      }
      e.preventDefault();
    });
  });
})();
