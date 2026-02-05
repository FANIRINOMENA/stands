{* Izystands - Footer (clean) *}

<footer class="izy-footer">
  <div class="container py-3 text-center">
    <div class="izy-footer__copy">
      © {$smarty.now|date_format:"%Y"} {$shop.name|escape:'htmlall':'UTF-8'}
    </div>
  </div>

  {* JS PrestaShop (obligatoire) *}
  {block name='javascript_bottom'}
    {include file='_partials/javascript.tpl' javascript=$javascript}
  {/block}

  {* Bootstrap 5 CDN JS (bundle = Popper inclus) *}
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
          crossorigin="anonymous"></script>

  {* Sidebar mobile toggle (chevron) *}
  <script>
    (function () {
      var btn = document.querySelector('.izy-sidebar-toggle');
      var overlay = document.querySelector('.izy-sidebar-overlay');
      var sidebar = document.getElementById('izySidebar');

      if (!btn || !sidebar) return;

      function openSidebar() {
        document.body.classList.add('izy-sidebar-open');
        btn.setAttribute('aria-expanded', 'true');
      }

      function closeSidebar() {
        document.body.classList.remove('izy-sidebar-open');
        btn.setAttribute('aria-expanded', 'false');
      }

      function toggleSidebar() {
        if (document.body.classList.contains('izy-sidebar-open')) {
          closeSidebar();
        } else {
          openSidebar();
        }
      }

      btn.addEventListener('click', toggleSidebar);

      if (overlay) {
        overlay.addEventListener('click', closeSidebar);
      }

      document.addEventListener('keydown', function (e) {
        if (e.key === 'Escape') closeSidebar();
      });

      sidebar.addEventListener('click', function (e) {
        var link = e.target.closest('a');
        if (!link) return;

        if (window.matchMedia('(max-width: 991.98px)').matches) {
          closeSidebar();
        }
      });
    })();
  </script>
</footer>