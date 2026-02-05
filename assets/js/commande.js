        // Interaction pour les thumbnails
        document.addEventListener('DOMContentLoaded', function() {
            const thumbs = document.querySelectorAll('.thumb');
            const mainImage = document.getElementById('mainImage');
            
            thumbs.forEach(thumb => {
                thumb.addEventListener('click', function() {
                    // Retirer la classe active de toutes les thumbnails
                    thumbs.forEach(t => t.classList.remove('active'));
                    
                    // Ajouter la classe active à la thumbnail cliquée
                    this.classList.add('active');
                    
                    // Changer l'image principale (simulation)
                    mainImage.src = this.src;
                    mainImage.alt = this.alt;
                });
            });
            
            // Interaction pour le choix de matériau
            const materialOptions = document.querySelectorAll('.material-option'); 
            
            materialOptions.forEach(option => {
                option.addEventListener('click', function() {
                    // Retirer la classe active de toutes les options
                    materialOptions.forEach(opt => opt.classList.remove('active'));
                    
                    // Ajouter la classe active à l'option cliquée
                    this.classList.add('active');
                    
                    // Cocher le radio button correspondant
                    const radioInput = this.querySelector('input[type="radio"]');
                    if (radioInput) {
                        radioInput.checked = true;
                    }
                });
            });
            
            // Interaction pour le sélecteur de quantité
            const decreaseBtn = document.getElementById('decreaseQty');
            const increaseBtn = document.getElementById('increaseQty');
            const quantityInput = document.getElementById('quantity');
            
            decreaseBtn.addEventListener('click', function() {
                let currentValue = parseInt(quantityInput.value);
                if (currentValue > 1) {
                    quantityInput.value = currentValue - 1;
                }
            });
            
            increaseBtn.addEventListener('click', function() {
                let currentValue = parseInt(quantityInput.value);
                quantityInput.value = currentValue + 1;
            });
            
            // Interaction pour le bouton d'achat
            const purchaseBtn = document.querySelector('.btn-purchase');
            
            purchaseBtn.addEventListener('click', function() {
                const selectedMaterial = document.querySelector('.material-option.active').getAttribute('data-material');
                const quantity = quantityInput.value;
                
                alert(`Commande effectuée :\nMatière : ${selectedMaterial.toUpperCase()}\nQuantité : ${quantity}\n\nMerci pour votre achat !`);
            });
        });
