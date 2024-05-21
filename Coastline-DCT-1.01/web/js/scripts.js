
// Scripts


// Grab elements
const selectElement = selector => {
    const element = document.querySelector(selector);
    if (element) return element;
    throw new Error(`Something went wrong, make sure that ${selector} exists or is typed correctly.`);
};

// Function to toggle menu state and handle animation
const toggleMenu = () => {
    const menu = selectElement('#navbarResponsive');
    const menuCloseIcon = selectElement('.menu-close');
    const menuToggleIcon = selectElement('#menu-toggle-icon');

    if (menustate === 0) {
        // Open menu animation
        menuCloseIcon.querySelector('.bar1').style.width = "5%";
        menuCloseIcon.querySelector('.bar3').style.width = "5%";
        menuCloseIcon.querySelector('.bar2').style.width = "5%";
        menuCloseIcon.querySelector('.bar2').style.left = "47.5%";
        setTimeout(() => {
            menuCloseIcon.querySelector('.bar1').style.transform = "rotateZ(45deg)";
            menuCloseIcon.querySelector('.bar3').style.transform = "rotateZ(45deg)";
            menuCloseIcon.querySelector('.bar2').style.transform = "rotateZ(135deg)";
            setTimeout(() => {
                menuCloseIcon.querySelector('.bar3').style.top = "50%";
                menuCloseIcon.querySelector('.bar1').style.top = "50%";
                menuCloseIcon.querySelector('.bar1').style.width = "100%";
                menuCloseIcon.querySelector('.bar3').style.width = "100%";
                menuCloseIcon.querySelector('.bar2').style.left = "0px";
                menuCloseIcon.querySelector('.bar2').style.width = "100%";
            }, 50);
        }, 100);
        menustate = 1; // Update menu state
    } else {
        // Close menu animation
        menuCloseIcon.querySelector('.bar1').style.top = "5%";
        menuCloseIcon.querySelector('.bar3').style.top = "85%";
        menuCloseIcon.querySelector('.bar1').style.width = "5%";
        menuCloseIcon.querySelector('.bar3').style.width = "5%";
        menuCloseIcon.querySelector('.bar2').style.left = "47.5%";
        menuCloseIcon.querySelector('.bar2').style.width = "5%";
        setTimeout(() => {
            menuCloseIcon.querySelector('.bar1').style.transform = "rotateZ(0deg)";
            menuCloseIcon.querySelector('.bar3').style.transform = "rotateZ(0deg)";
            menuCloseIcon.querySelector('.bar2').style.transform = "rotateZ(0deg)";
            setTimeout(() => {
                menuCloseIcon.querySelector('.bar1').style.width = "100%";
                menuCloseIcon.querySelector('.bar3').style.width = "100%";
                menuCloseIcon.querySelector('.bar2').style.width = "100%";
                menuCloseIcon.querySelector('.bar2').style.left = "0%";
            }, 50);
        }, 100);
        menustate = 0; // Update menu state
    }

    // Toggle menu visibility
    menu.classList.toggle('activated');
    menuToggleIcon.classList.toggle('activated');
};

// Initialize menu state
let menustate = 0;

// Add event listener to menu toggle icon
document.addEventListener('DOMContentLoaded', () => {
    const menuToggleIcon = selectElement('#menu-toggle-icon');
    menuToggleIcon.addEventListener('click', toggleMenu);
});






//Switch theme/add to local storage NOT IMPLEMENTED
const bodyElement = document.body;
const themeToggleBtn = selectElement('#theme-toggle-btn');
const currentTheme = localStorage.getItem('currentTheme');

//checks if the constant for currentTheme is set to the light theme style 
//this is not working, the loalStorage does not keep the constant
if(currentTheme){
    bodyElement.classList.add('lightTheme');
}

themeToggleBtn.addEventListener('click', () => {
    bodyElement.classList.toggle('light-theme');
    if(bodyElement.classList.contains('light-theme')){
        localStorage.setItem('currentTheme', 'themeActive');
    }else{
        localStorage.removeItem('currentTheme');
    }
});



//search button redirect

document.addEventListener('DOMContentLoaded', function() {
        document.getElementById('search').addEventListener('keypress', function(event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                
                // Redirect to the desired link (card-lookup.jsp) by submitting the form
                document.getElementById('submitButton').click();
            }
        });
    });

    // shrink the navbar 

window.addEventListener('DOMContentLoaded', event => {

    // Navbar shrink function
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };

    navbarShrink();

    // Shrink the navbar when page is scrolled
    document.addEventListener('scroll', navbarShrink);

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 72,
        });
    };

    // collapse responsive navbar when toggler is visible
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });

});


