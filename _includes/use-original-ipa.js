// For IPA license requirement
if (sessionStorage.getItem("useOriginalIPA") === "Y") {
    // if true, set the site to Vertical Mode
    document
        .querySelector(":root")
        .style.setProperty(
            "--zh-font-family",
            `'IPAmjMincho', 'I.Ming', serif`
        );
    document
        .querySelector(":root")
        .style.setProperty(
            "--en-font-family",
            `'Taviraj', 'IPAmjMincho', 'I.Ming', serif`
        );
}
