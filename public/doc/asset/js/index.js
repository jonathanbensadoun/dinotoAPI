const app ={
  count : 0,
  burgerMenu : document.querySelector('.navbar-burger'),
  init: function(){
    console.log('init');
    app.burgerMenu.addEventListener('click',app.showBurgerMenu);
    app.count ++
  },
  showBurgerMenu: function(){
    const menu = document.querySelector("#burger-menu-show");

    app.burgerMenu.classList.toggle('is-active');
    menu.classList.toggle('is-hidden');

  }
}
app.init();
