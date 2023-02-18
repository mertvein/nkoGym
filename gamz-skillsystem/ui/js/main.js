window.addEventListener('message', (event) => {
    if (event.data.type === 'update') {
        document.getElementById(event.data.skill).innerHTML = "&nbsp;"+(event.data.skillValue+1)+"%"
    } else if (event.data.type === 'close') {
        document.getElementById("main").style.display = "none";
    } else if (event.data.type === 'open') {
        document.getElementById("main").style.display = "block";
    }
});