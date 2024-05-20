$( function(){

    fetch( 'html/menu.html' ).then(response => response.text()).then(html => {
            document.getElementById('menu').innerHTML = html;
    });

    fetch( 'html/footer.html' ).then(response => response.text()).then(html => {
        document.getElementById('footer').innerHTML = html;
    });
});