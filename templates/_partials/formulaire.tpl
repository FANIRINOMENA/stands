{* Izystands - form content (FORMULAIRE) *}

{* FORMULAIRE DE DEMANDE DE DEVIS *}

<section class="page-container">

  <main class="main-content">

    <header class="page-header">
      <h1>{l s='FORMULAIRE POUR OBTENIR MON DEVIS'}</h1>
    </header>

    <div class="form-container">

      <div class="form-intro">
        <p>
          {l s='Remplissez le formulaire ci-dessous et notre équipe vous contactera dans les plus brefs délais avec un devis personnalisé.'}
        </p>
      </div>

      <form id="devisForm"
            class="devis-form"
            method="post"
            action="{$link->getPageLink('contact', true)|escape:'html'}">

        {* NOM *}
        <div class="form-group">
          <label for="nom">
            {l s='Nom'} <span class="required">*</span>
          </label>
          <input type="text"
                 id="nom"
                 name="nom"
                 value="{$smarty.post.nom|escape:'html'}"
                 required
                 placeholder="{l s='Votre nom'}">
          <span class="error-message" id="nom-error"></span>
        </div>

        {* PRÉNOM *}
        <div class="form-group">
          <label for="prenom">
            {l s='Prénom'} <span class="required">*</span>
          </label>
          <input type="text"
                 id="prenom"
                 name="prenom"
                 value="{$smarty.post.prenom|escape:'html'}"
                 required
                 placeholder="{l s='Votre prénom'}">
          <span class="error-message" id="prenom-error"></span>
        </div>

        {* EMAIL *}
        <div class="form-group">
          <label for="email">
            {l s='Email'} <span class="required">*</span>
          </label>
          <input type="email"
                 id="email"
                 name="email"
                 value="{$smarty.post.email|escape:'html'}"
                 required
                 placeholder="votre.email@exemple.com">
          <span class="error-message" id="email-error"></span>
        </div>

        {* TÉLÉPHONE *}
        <div class="form-group">
            <label for="telephone">
                {l s='Téléphone'}
            </label>

           <input type="tel"
                id="telephone"
                name="telephone"
                value="{$smarty.post.telephone|escape:'html'}"
                placeholder="{l s='+33 6 12 34 56 78'}"
            >
        </div>

        {* OBJET DE L'EMAIL *}
        <div class="form-group">
            <label for="objet">
                {l s='Objet de votre demande'} <span class="required">*</span>
            </label>

            <input type="text"
                id="objet"
                name="objet"
                value="{$smarty.post.objet|escape:'html'}"
                required
                placeholder="{l s='Ex : Demande de devis IZY STAND'}"
            >
            <span class="error-message" id="objet-error"></span>
        </div>

        {* MESSAGE *}
        <div class="form-group full-width">
          <label for="message">
            {l s='Message / Informations complémentaires'}
          </label>
          <textarea id="message"
                    name="message"
                    rows="6"
                    placeholder="{l s='Décrivez votre projet, vos besoins spécifiques, questions...'}">{$smarty.post.message|escape:'html'}</textarea>
        </div>

        {* ACTIONS *}
        <div class="form-actions">
          <button type="submit" class="btn-submit">
            {l s='Envoyer ma demande de devis'}
          </button>
          <button type="reset" class="btn-reset">
            {l s='Réinitialiser'}
          </button>
        </div>

      </form>

      {* MESSAGE DE SUCCÈS *}
      {if isset($success) && $success}
        <div id="successMessage" class="success-message">
          <div class="success-icon">✓</div>
          <h3>{l s='Demande envoyée avec succès !'}</h3>
          <p>
            {l s='Nous avons bien reçu votre demande de devis. Notre équipe vous contactera dans les 24-48 heures.'}
          </p>
          <a href="{$link->getPageLink('index', true)}" class="btn-primary">
            {l s='Faire une nouvelle demande'}
          </a>
        </div>
      {/if}

    </div>

  </main>

</section>
