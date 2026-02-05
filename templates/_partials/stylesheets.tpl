{* Izystands - stylesheets (safe PS9 / PHP8) *}

{assign var=izy_css value=$stylesheets|default:[]}

{* Cas A : structure attendue par PrestaShop (external/inline + parfois local) *}
{assign var=izy_local value=$izy_css.local|default:[]}
{assign var=izy_external value=$izy_css.external|default:[]}
{assign var=izy_inline value=$izy_css.inline|default:[]}

{* 1) local (si présent) *}
{foreach $izy_local as $s}
  {if isset($s.uri)}
    <link rel="stylesheet" href="{$s.uri}" media="{$s.media|default:'all'}">
  {/if}
{/foreach}

{* 2) external (principal) *}
{foreach $izy_external as $s}
  {if isset($s.uri)}
    <link rel="stylesheet" href="{$s.uri}" media="{$s.media|default:'all'}">
  {/if}
{/foreach}

{* 3) inline *}
{foreach $izy_inline as $s}
  {if isset($s.content)}
    <style>
      {$s.content nofilter}
    </style>
  {/if}
{/foreach}

{* Cas B : fallback si $stylesheets est une liste plate *}
{if empty($izy_local) && empty($izy_external) && empty($izy_inline) && ($izy_css|@is_array)}
  {foreach $izy_css as $s}
    {if isset($s.uri)}
      <link rel="stylesheet" href="{$s.uri}" media="{$s.media|default:'all'}">
    {/if}
  {/foreach}
{/if}