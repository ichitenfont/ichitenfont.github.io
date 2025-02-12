if (window.CSS && CSS.supports("writing-mode", "vertical-rl")) {
    var toggleWritingDirection = function (e) {
        // Switch to Horizontal Mode
        if (e.currentTarget.classList.contains("hori--hidden")) {
            // Sets the custom html attribute
            document.documentElement.classList.remove("vert"); // Sets the user's preference in local storage

            localStorage.setItem("writing-mode", "horizontal");
            return;
        }
        /* Switch to Vertical Mode
      Sets the custom html attribute */
        document.documentElement.classList.add("vert"); // Sets the user's preference in local storage

        localStorage.setItem("writing-mode", "vertical");
    }; // Get the buttons in the DOM

    var toggleWritingDirectionButtons = document.querySelectorAll(".writing-mode__btn"); // Set up event listeners

    toggleWritingDirectionButtons.forEach(function (btn) {
        btn.addEventListener("click", toggleWritingDirection);
    });
} else {
    // If the feature isn't supported, then we hide the toggle buttons
    var btnContainer = document.querySelectorAll(".writing-mode__btn");
    btnContainer.forEach(btn => {btn.style.display = "none"});
}

// This code assumes a Horizontal Mode default
if (
    /* This condition checks whether the user has set a site preference for vertical mode */
    localStorage.getItem("writing-mode") === "vertical"
) {
    // if true, set the site to Vertical Mode
    document.documentElement.classList.add("vert");
}
