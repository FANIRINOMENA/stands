 function changeImage(mainId, src) {
      const mainImg = document.getElementById(mainId);
      mainImg.style.opacity = 0;
      setTimeout(() => {
        mainImg.src = src;
        mainImg.style.opacity = 1;
      }, 150);
 }