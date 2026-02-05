{* Izystands - commande content (COMMANDE) *}

<section class="page-container">

    <!-- MAIN CONTENT -->
    <main class="main-content">

        <header class="page-header">
            <h1>COMMANDER</h1>
        </header>

        <h2 class="product-title">IZY STAND (OUTDOOR)</h2>

        <div class="product-section">

            {* LEFT: Thumbnails *}
            <div class="thumbnails">
                <img src="{$urls.theme_assets}img/statique-img/CONFIG 4.jpg" alt="Vue 1" class="thumb active">
                <img src="{$urls.theme_assets}img/statique-img/CONFIG 3.jpg" alt="Vue 2" class="thumb">
                <img src="{$urls.theme_assets}img/statique-img/CONFIG 2.jpg" alt="Vue 3" class="thumb">
                <img src="{$urls.theme_assets}img/statique-img/_MG_3532.jpg" alt="Vue 4" class="thumb">
            </div>

            {* CENTER: Main Product Image *}
            <div class="product-image">
                <img src="{$urls.theme_assets}img/statique-img/config-1.jpg" alt="IZY STAND" id="mainImage">
            </div>

            {* RIGHT: Options and Purchase *}
            <div class="product-options">

                <div class="material-choice">
                    <h3>Choix Matière :</h3>

                    <label class="material-option active" data-material="okoume">
                        <input type="radio" name="material" value="okoume" checked>
                        <span class="material-box"></span>
                        <span class="material-label">OKOUME (Extérieur)</span>
                    </label>

                    <label class="material-option" data-material="epicea">
                        <input type="radio" name="material" value="epicea">
                        <span class="material-box"></span>
                        <span class="material-label">EPICEA (Intérieur)</span>
                    </label>
                </div>

                <p class="stock-status">En stock</p>

                <div class="quantity-selector">
                    <button class="qty-btn" id="decreaseQty">-</button>
                    <input type="number" id="quantity" value="1" min="1" readonly>
                    <button class="qty-btn" id="increaseQty">+</button>
                </div>

                {* Exemple lien vers page commande *}
                <a href="{$link->getPageLink('order')}" class="btn-purchase">
                    Acheter
                </a>

                <div class="delivery-info">
                    <h4>Livraison GRATUITE</h4>
                    <p>Livraison en 59000. Recevez-le dès demain</p>
                </div>

            </div>
        </div>

        {* DETAILS SECTION *}
        <section class="details-section">

            <div class="details-column">
                <h4>Recommandations :</h4>
                <ul class="details-list">
                    <li>Ne pas stocker dans une pièce trop humide.</li>
                    <li>Une couche de vernis peut être nécessaire pour protéger des taches alimentaires.</li>
                    <li>Version OKOUME pour usage EXTERIEUR !</li>
                    <li>Version EPICEA pour usage INTERIEUR !</li>
                </ul>

                <h4 class="specs-title">Caractéristiques clés</h4>
                <ul class="specs-list">
                    <li><strong>Plan de travail :</strong> 150 × 60 cm</li>
                    <li><strong>Hauteur :</strong> 110 cm | Totale 240 cm | Replié 15 cm</li>
                    <li><strong>Poids :</strong> 23.8 kg</li>
                    <li><strong>Roulettes :</strong> 6</li>
                    <li><strong>Vis :</strong> 24</li>
                    <li><strong>Sangle :</strong> 1</li>
                    <li><strong>Nombre de pièces :</strong> 12 (jusqu’à 18)</li>
                </ul>
            </div>

            <div class="details-column">
                <h4>Caractéristiques et Détails :</h4>

                <div class="feature-block">
                    <p class="feature-title">✓ RAPIDE</p>
                    <ul class="feature-list">
                        <li>Montage en 4 min seul / 2 min 30 à deux</li>
                        <li>Sans vis ni outils (hors roulettes)</li>
                        <li>Prêt à l’emploi</li>
                    </ul>
                </div>

                <div class="feature-block">
                    <p class="feature-title">✓ FACILE</p>
                    <ul class="feature-list">
                        <li>Assemblage intuitif</li>
                        <li>Modulable</li>
                        <li>Multi-usage</li>
                    </ul>
                </div>

                <div class="feature-block">
                    <p class="feature-title">✓ COMPACT</p>
                    <ul class="feature-list">
                        <li>Se replie en caisson</li>
                        <li>15 cm d’épaisseur</li>
                        <li>Transport optimisé</li>
                    </ul>
                </div>
            </div>

        </section>

        {* BENEFITS *}
        <section class="benefits-section">
            <div class="benefit-box">
                <h4>Sécurité et confidentialité</h4>
                <p>Paiement 100% sécurisé</p>
                <p>Données protégées</p>
            </div>

            <div class="benefit-box">
                <h4>Retours GRATUITS</h4>
                <p>Sous 30 jours</p>
                <p>Colis perdus ou endommagés remboursés</p>
            </div>

            <div class="benefit-box">
                <h4>Service professionnel</h4>
                <p>Garantie 12 mois</p>
                <p>Service client dédié</p>
            </div>
        </section>

    </main>
</section>

<script src="{$urls.theme_assets}js/commande.js"></script>
