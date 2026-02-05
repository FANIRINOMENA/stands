{* Izystands - Homepage content (PRESENTATION) *}

<section class="izy-home">

  <header class="izy-home__header">
    <h1 class="izy-home__title">PRESENTATION</h1>
    <div class="izy-home__rule"></div>

    <p class="izy-home__headline">
      <strong>Le stand en bois intelligent, pensé pour simplifier vos événements.</strong>
    </p>

    <p class="izy-home__lead">
      Dans un contexte où la mobilité, la simplicité d’usage et l’éco-responsabilité sont devenues essentielles,
      IZY STAND s’impose comme une solution innovante et durable. Conçu aussi bien pour les professionnels
      que pour les particuliers, ce stand en bois allie fonctionnalité, design et robustesse,
      tout en offrant une grande liberté d’utilisation.
    </p>
  </header>

  <div class="izy-home__grid">

    {* ======================
       Bloc Galerie (gauche)
       ====================== *}
    <article class="izy-home__block">
      <div class="izy-home__media izy-home__media--gallery">

        <div class="izy-home__main">
          <img
            src="{$urls.theme_assets}img/statique-img/presentation-img.png"
            alt="Galerie photos"
            class="izy-home__img izy-home__img--contain"
          >
        </div>

        <div class="izy-home__thumbs">
          <img
            src="{$urls.theme_assets}img/statique-img/config-1.jpg"
            alt="Miniature 1"
            class="izy-home__thumb"
          >
          <img
            src="{$urls.theme_assets}img/statique-img/home-thumb-2.jpg"
            alt="Miniature 2"
            class="izy-home__thumb"
          >
          <img
            src="{$urls.theme_assets}img/statique-img/home-thumb-3.jpg"
            alt="Miniature 3"
            class="izy-home__thumb"
          >
        </div>

      </div>

      <h3 class="izy-home__label">GALERIE PHOTOS</h3>
    </article>

    {* ======================
       Bloc Video (droite)
       ====================== *}
    <article class="izy-home__block">
      <div class="izy-home__media izy-home__media--video">

        <div class="izy-home__video">
          <video
            class="izy-home__video-player"
            controls
            preload="metadata"
            playsinline
          >
            <source src="{$urls.theme_assets}img/video-montage.mp4" type="video/mp4">
            Votre navigateur ne supporte pas la vidéo.
          </video>
        </div>

      </div>

      <h3 class="izy-home__label">VIDEO MONTAGE</h3>
    </article>

  </div>

  <div class="izy-home__values">
    <span class="izy-home__value">COMPACT</span>
    <span class="izy-home__value">FACILE</span>
    <span class="izy-home__value">RAPIDE</span>
  </div>

</section>