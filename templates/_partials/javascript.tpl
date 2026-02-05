{assign var=izy_js value=$javascript|default:$javascripts|default:[]}

{* Structure standard: external/inline *}
{assign var=izy_external value=$izy_js.external|default:[]}
{assign var=izy_inline value=$izy_js.inline|default:[]}

{* Fallback: liste plate *}
{if empty($izy_external) && ($izy_js|@is_array)}
  {foreach $izy_js as $js}
    {if isset($js.uri)}
      <script src="{$js.uri}"></script>
    {/if}
  {/foreach}
{/if}

{foreach $izy_external as $js}
  {if isset($js.uri)}
    <script src="{$js.uri}"{if isset($js.attributes)} {$js.attributes nofilter}{/if}></script>
  {/if}
{/foreach}

{foreach $izy_inline as $js}
  {if isset($js.content)}
    <script>{$js.content nofilter}</script>
  {/if}
{/foreach}