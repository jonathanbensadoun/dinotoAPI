const app ={
  burgerMenu : document.querySelector('.navbar-burger'),
  init: function(){
    app.burgerMenu.addEventListener('click',app.showBurgerMenu)
  },
  showBurgerMenu: function(){
    const menu = document.querySelector("#burger-menu-show");

    app.burgerMenu.classList.toggle('is-active');
    menu.classList.toggle('is-hidden');

  }
}
app.init();
