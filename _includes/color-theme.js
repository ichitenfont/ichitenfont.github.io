var changeColorMode = function (mode) {
    // Sets the custom html attribute
    document.documentElement.setAttribute("color-mode", mode);
    // Sets the user's preference in local storage
    localStorage.setItem("color-mode", mode);
    // Global broadcast to all elements
    document.dispatchEvent(new CustomEvent("color-mode-change"));
};

var toggleColorMode = function (e) {
    if (e.currentTarget.classList.contains("light--hidden")) {
        // Switch to Light Mode
        changeColorMode("light");
    } else {
        // Switch to Dark Mode
        changeColorMode("dark");
    }
}; // Get the buttons in the DOM

if (window.CSS && CSS.supports("color", "var(--background-colour)")) {
    var toggleColorButtons = document.querySelectorAll(".color-mode__btn"); // Set up event listeners

    toggleColorButtons.forEach(function (btn) {
        btn.addEventListener("click", toggleColorMode);
    });
} else {
    // If the feature isn't supported, then we hide the toggle buttons
    var btnContainer = document.querySelectorAll(".color-mode__btn");
    btnContainer.forEach((btn) => {
        btn.style.display = "none";
    });
}

// This code assumes a Light Mode default
if (
    /* This condition checks whether the user has set a site preference for dark mode OR a OS-level preference for Dark Mode AND no site preference */
    localStorage.getItem("color-mode") === "dark" ||
    (window.matchMedia("(prefers-color-scheme: dark)").matches &&
        !localStorage.getItem("color-mode"))
) {
    // if true, set the site to Dark Mode
    changeColorMode("dark");
}
