function ClickConnect() {
    var iconElement = document.getElementById("toggle-header-button");
    if (iconElement) {
        var clickEvent = new MouseEvent("click", {
            bubbles: true,
            cancelable: true,
            view: window
        });
        iconElement.dispatchEvent(clickEvent);
    }
}
setInterval(ClickConnect, 6000)