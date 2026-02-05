{* Izystands - Sidebar *}

{* Bouton chevron (mobile) *}
<button type="button"
        class="izy-sidebar-toggle"
        aria-label="Ouvrir le menu"
        aria-controls="izySidebar"
        aria-expanded="false">
  <span class="izy-chevron">›</span>
</button>

{* Overlay (mobile) *}
<div class="izy-sidebar-overlay" data-izy-sidebar-close="1" aria-hidden="true"></div>

<aside id="izySidebar"
       class="izy-sidebar d-flex flex-column justify-content-between"
       aria-label="Sidebar">

  {* Top: Logo du Backoffice dans un cadre arrondi vert *}
  <div class="izy-sidebar__top text-center">
    <a href="{$urls.base_url}" class="izy-sidebar__logo-wrap d-inline-block text-decoration-none">
      <img
        src="{$shop.logo}"
        alt="{$shop.name|escape:'htmlall':'UTF-8'}"
        class="izy-sidebar__logo-top"
        loading="lazy"
      >
    </a>
  </div>

  {* Middle: Menu *}
  <nav class="izy-sidebar__menu" aria-label="Menu principal">
    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link izy-sidebar__link" href="{$urls.pages.index}">PRESENTATION</a>
      </li>
      <li class="nav-item">
        <a class="nav-link izy-sidebar__link" href="{$urls.pages.stand}">STANDS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link izy-sidebar__link" href="{$urls.pages.commande}">COMMANDER</a>
      </li>
      <li class="nav-item">
        <a class="nav-link izy-sidebar__link" href="{$urls.pages.commande}">A PROPOS</a>
      </li>
    </ul>
  </nav>

  {* Bottom: "Un produit de" + logo partenaire sur une ligne *}
  <div class="izy-sidebar__bottom">
    <div class="izy-partner">
      <span class="izy-partner__text">Un produit de</span>
      <img
        src="{$urls.theme_assets}img/img-bois.png"
        alt="Partenaire"
        class="izy-partner__logo"
        loading="lazy"
      >
    </div>
  </div>
</aside>