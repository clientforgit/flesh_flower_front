var opened_hidden_header = false;

function open_hidden_header() {
    var hidden_header = document.getElementById("hidden_header");
    if (opened_hidden_header) {
        hidden_header.style.maxHeight = "0";
        opened_hidden_header = false;
    } else {
        hidden_header.style.maxHeight = "271px";
        opened_hidden_header = true;
    }
}

var opened_section = {
    category: false,
    flower_type: false,
    price: false,
    material: false,
    size: false,
    color: false
}
function opensection(section_name) {
    var section = document.getElementById(section_name);
    if (opened_section[section_name]) {
        section.style.maxHeight = "0";
        section.style.paddingBottom = "0";
        opened_section[section_name] = false;
        setPlus(section_name+"_img")
    } else {
        section.style.maxHeight = "117px";
        section.style.paddingBottom = "20px";
        opened_section[section_name] = true;
        setMinus(section_name+"_img")
    }
}

function setPlus(img_name) {
    var img = document.getElementById(img_name);
    img.src = "/images/plus.svg";
}

function setMinus(img_name) {
    var img = document.getElementById(img_name);
    img.src = "/images/minus.svg";
}

const checkboxNames =
    {'card': document.getElementById('card'),
        'google_pay': document.getElementById('google_pay'),
        'liqpay': document.getElementById('liqpay')};

function setCheckbox(checkboxName) {
    var payment_grid = document.getElementById("payment_grid")
    if (checkboxName === 'card') {
        payment_grid.style.display = "grid";
    } else {
        payment_grid.style.display = "none";
    }

    for (const name in checkboxNames) {
        if (name.localeCompare(checkboxName) === 0) {
            checkboxNames[checkboxName].src = "/images/selected_checkbox.svg";
        } else {
            var checkboxImg = document.getElementById(name);
            checkboxNames[name].src = "/images/deselected_checkbox.svg";
        }
    }
}

function scrollToTop() {
    window.scrollTo({top: 0, behavior: 'smooth'});
}