/* Enterprise websites
 * (c) 087 057-1581
 */
    firebase.auth().onAuthStateChanged((user) => {
        const menu = Handlebars.compile(document.getElementById('main-menu').innerHTML)
        if (user) {
            const menuItemsActive = {
                userMenu: [
                    { url: "/", label: "Home" },
                    { url: "dashboard.aspx", label: "Dashboard" },
                    { url: "#", label: user.email }
                ]
            }
            document.querySelector('.inner-main-menu').innerHTML = menu(menuItemsActive)
        } else {
            const menuItems = {
                userMenu: [
                    { url: "/", label: "Home" },
                    { url: "website-features.aspx", label: "Features" },
                    { url: "small-business-website.aspx", label: "Services" },
                    { url: "website-pricing.aspx", label: "Pricing" },
                    { url: "about.aspx", label: "About" },
                    { url: "careers.aspx", label: "Careers", styles: "btn btn-success shadow-sm rounded btn-lg ml-1" },
                    { url: "login.aspx", label: "Track My Application", styles: "btn btn-warning shadow-sm rounded btn-lg ml-1" }
                ]
            }
            document.querySelector('.inner-main-menu').innerHTML = menu(menuItems)
        }
    })


firebase.auth().onAuthStateChanged((user) => {
    if (user) {
        
    } else {
        let contentPlaceholder = document.getElementById('contact-placeholder')
        let contentView = Handlebars.compile(document.getElementById('contact-view').innerHTML)
        contentPlaceholder.innerHTML = contentView()
    }
})