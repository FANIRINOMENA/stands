{* Izystands - head *}
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>{$page.meta.title|escape:'htmlall':'UTF-8'}</title>

  {if isset($page.meta.description) && $page.meta.description}
    <meta name="description" content="{$page.meta.description|escape:'htmlall':'UTF-8'}">
  {/if}

  {if isset($page.meta.keywords) && $page.meta.keywords}
    <meta name="keywords" content="{$page.meta.keywords|escape:'htmlall':'UTF-8'}">
  {/if}

  {if isset($page.meta.robots) && $page.meta.robots}
    <meta name="robots" content="{$page.meta.robots|escape:'htmlall':'UTF-8'}">
  {/if}

  {if isset($page.canonical) && $page.canonical}
    <link rel="canonical" href="{$page.canonical}">
  {/if}

  {* Favicon *}
  {if isset($shop.favicon) && $shop.favicon}
    <link rel="icon" type="image/x-icon" href="{$shop.favicon}">
  {/if}

  {* CSS modules/prestashop (laisse-le, important) *}
  {block name='stylesheets'}
    {include file='_partials/stylesheets.tpl' stylesheets=$stylesheets}
  {/block}

  {* Bootstrap 5 CDN CSS *}
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
        crossorigin="anonymous">
        <link rel="stylesheet" href="{$urls.theme_assets}css/sidebar.css">
        <link rel="stylesheet" href="{$urls.theme_assets}css/homepage.css">
        <link rel="stylesheet" href="{$urls.theme_assets}css/formulaire.css">
        <link rel="stylesheet" href="{$urls.theme_assets}css/commande.css">
        <link rel="stylesheet" href="{$urls.theme_assets}css/apropos.css">

  {* Ton CSS custom *}

  {* Hook header (obligatoire) *}
  {hook h='displayHeader'}

  {* JS head PrestaShop (variables etc.) *}
  {block name='javascript_head'}
    {include file='_partials/javascript.tpl' javascript=$javascript}
  {/block}
</head>