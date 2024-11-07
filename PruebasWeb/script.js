document.addEventListener('DOMContentLoaded', function() {
    const menuItems = document.querySelectorAll('.item');
    const cartItems = document.getElementById('cartItems');
    const checkoutBtn = document.getElementById('checkout');
    const totalPriceDisplay = document.getElementById('totalPrice');
    let totalPrice = 0;

    menuItems.forEach(item => {
        item.addEventListener('click', function() {
            const name = this.getAttribute('data-name');
            const price = parseFloat(this.getAttribute('data-price'));

            const listItem = document.createElement('li');
            listItem.textContent = `${name} - $${price.toFixed(2)}`;
            cartItems.appendChild(listItem);

            totalPrice += price;
            totalPriceDisplay.textContent = `Total: $${totalPrice.toFixed(2)}`;
        });
    });

    cartItems.addEventListener('click', function(event) {
        if (event.target.tagName === 'LI') {
            const itemPrice = parseFloat(event.target.textContent.split('-')[1].trim().slice(1));
            totalPrice -= itemPrice;
            totalPriceDisplay.textContent = `Total: $${totalPrice.toFixed(2)}`;
            event.target.remove();
        }
    });

    checkoutBtn.addEventListener('click', function() {
        if (totalPrice > 0) {
            const confirmed = confirm(`¿Deseas finalizar la compra por un total de $${totalPrice.toFixed(2)}?`);
            if (confirmed) {
                alert('¡Gracias por tu compra!');
                cartItems.innerHTML = '';
                totalPrice = 0;
                totalPriceDisplay.textContent = `Total: $${totalPrice.toFixed(2)}`;
            }
        } else {
            alert('El carrito está vacío. Por favor, añade elementos antes de finalizar la compra.');
        }
    });
});
