function simulateDragAndDrop(selectorDrag, selectorDrop) {
    var drag = document.querySelector(selectorDrag);
    var drop = document.querySelector(selectorDrop);
    var dragEvent = new MouseEvent('mousedown', {bubbles: true, cancelable: true});
    var dropEvent = new MouseEvent('mouseup', {bubbles: true, cancelable: true});
    drag.dispatchEvent(dragEvent);
    drop.dispatchEvent(dropEvent);
}
simulateDragAndDrop(arguments[0], arguments[1]);
