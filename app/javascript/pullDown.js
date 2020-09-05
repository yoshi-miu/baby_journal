window.addEventListener('load', function () {
  const pullDownButton = document.getElementById("lists")
  const pullDown = document.getElementById("pull-down")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "color: #00f;");
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color: #00f;");
  })

  pullDownButton.addEventListener('click', function(){
    if (pullDown.getAttribute("style") == "display: block;"){
      pullDown.removeAttribute("style", "display: block;");
    } else {
      pullDown.setAttribute("style", "display: block;");
    }
  })

  document.addEventListener('click', (e) => {
    if(!e.target.closest('.child-name')) {
      pullDown.removeAttribute("style", "display: block;");
    }
  })
})
