var menu = document.getElementById("MENU")
var buttons = document.getElementsByClassName("buttons")[0]
menu.style.display = "none"

var menuList = new Array()
var menuListName = new Array()


window.addEventListener('message', function(event){
    if(event.data.type == "OpenResto"){
        var restoType = event.data.resto
        menu.style.display = "block"
        document.getElementById('TXT').innerHTML = event.data.restoname
        loadMenu(restoType)
    }

    menuList.push(event.data.menu + "<br>" + " €" + event.data.price)
    menuListName.push(event.data.menu)

})


function closeMenu(){
    menu.style.display = "none"
    $.post('http://esx_mn-resto/ClosingMenu', JSON.stringify({}))

    for(i = 0; i < menuListName.length; i++){
        var button = document.getElementById(menuListName[i])
        if (button != null){
            button.remove()
        }
    }
    menuList = []
}

function loadMenu(restoType){
    var i
    for (i = 0; i < menuList.length; i++){
        //console.log(menuList[i])
        var button = document.createElement("button")
        button.setAttribute("id", menuListName[i])
        button.setAttribute("value", menuList[i])
        button.setAttribute("onclick", "Clicked(this.id)")
        var picturename = menuListName[i].replace(/\s/g, '') 
        button.style.background = "url('img/" +  picturename + ".png') 100% no-repeat" 
        button.style.backgroundColor = "rgba(255,255,255,0.7)"
        button.innerHTML = menuList[i]
        buttons.appendChild(button)
    }
}

function Clicked(knop){
    //console.log(knop)
    $.post('http://esx_mn-resto/StartFood', JSON.stringify({
        button: knop,
    }))

    closeMenu()
}
