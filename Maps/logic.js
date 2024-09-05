// Creating the map object
let myMap = L.map("map", {
    center: [30.3077, -97.8343],
    zoom: 8
});

// Adding the tile layer
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(myMap);

//Use this link to get the GeoJSON data
//let link = "https://services.arcgis.com/KTcxiTD9dsQw4r7Z/arcgis/rest/services/Texas_County_Boundaries/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson"
let link = "https://raw.githubusercontent.com/OpenDataDE/State-zip-code-GeoJSON/master/tx_texas_zip_codes_geo.min.json"




d3.json(link).then(function(data) {
    L.geoJson(data, {
        //Passing in the style
        style: function(feature) {
            return{
                color: "black",
                fillColor: "white",
                fillOpacity: 0,
                weight: 1
            };
        },
    //This is called on each feature
    onEachFeature: function(feature, layer) {
        layer.on({
            mouseover: function(event) {
                layer = event.target;
                layer.setStyle({
                    fillOpacity: 0.9
                });
            },
            mouseout: function(event) {
                layer = event.target;
                layer.setStyle({
                    fillOpacity: 0.2
                });
            },
        });
        layer.bindPopup("<h1>" + "Zip Code: " +feature.properties.ZCTA5CE10 + "</h1>");
    }
}).addTo(myMap);
});

