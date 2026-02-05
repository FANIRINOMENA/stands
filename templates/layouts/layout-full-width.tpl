{* Izystands - layout full width with sidebar left *}
<!doctype html>
<html lang="{$language.iso_code|escape:'htmlall':'UTF-8'}">

<head>
  {include file='_partials/head.tpl'}
  {block name='stylesheets'}
    {include file='_partials/stylesheets.tpl' stylesheets=$stylesheets}
  {/block}
</head>

<body id="{$page.page_name|escape:'htmlall':'UTF-8'}" class="{$page.body_classes|classnames}">
  {hook h='displayAfterBodyOpeningTag'}

  <div class="izy-layout">
    {include file='_partials/sidebar.tpl'}
    <div class="izy-main">
      {block name='header'}{include file='_partials/header.tpl'}{/block}

      <main id="main-site" role="main" class="py-4">
        {block name='content'}
          {block name='page_content_container'}{/block}
        {/block}
      </main>

      {block name='footer'}{include file='_partials/footer.tpl'}{/block}
    </div>
  </div>

  {hook h='displayBeforeBodyClosingTag'}

  {* PS scripts (si dispo) *}
  {block name='javascript_bottom'}
    {include file='_partials/javascript.tpl' javascript=$javascript|default:$javascripts|default:[]}
  {/block}

  {* ✅ FORCÉ : homepage.js *}
  <script src="{$urls.theme_assets}/js/homepage.js?v={$smarty.now}"></script>
</body>
</html>