// LOAD GOOGLE MAP
   google.maps.event.addDomListener(window, 'load', init);
         function init() {
                // Basic options for a simple Google Map
                // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
                var mapOptions = {
                    // How zoomed in you want the map to start at (always required)
                    zoom: 13,

                    // The latitude and longitude to center the map (always required)
                    center: new google.maps.LatLng(48.1141251, -1.6812918), // New York
                    // How you would like to style the map. 
                    // This is where you would paste any style found on Snazzy Maps.
                   styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"lightness":20},{"color":"#000000"}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"administrative.country","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"color":"#ffffff"}]},{"featureType":"administrative.province","elementType":"geometry.fill","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.province","elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"administrative.province","elementType":"labels.text.stroke","stylers":[{"weight":"0.01"},{"invert_lightness":true},{"color":"#f26c4f"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"visibility":"simplified"},{"weight":"0.05"},{"color":"#ffffff"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#E48632"},{"weight":"0.10"},{"invert_lightness":true},{"lightness":29}]},{"featureType":"road.highway","elementType":"labels.text.fill","stylers":[{"color":"#E48632"}]},{"featureType":"road.highway.controlled_access","elementType":"geometry","stylers":[{"weight":"0.30"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
                };

                // Get the HTML DOM element that will contain your map 
                // We are using a div with id="map" seen below in the <body>
                var mapElement = document.getElementById('map-canvas');

                // Create the Google Map using our element and options defined above
                var map = new google.maps.Map(mapElement, mapOptions);

                // Let's also add a marker while we're at it
                // YBO https://www.google.com/maps/place/14+Rue+Saint-Michel,+35000+Rennes/@48.1139409,-1.6835184,17z/data=!3m1!4b1!4m5!3m4!1s0x480ede3140b6a475:0xc68e4cee9eb15aa7!8m2!3d48.1139409!4d-1.6813297
                var image = '/assets/map_marker-714277fd10fc9b6a7427df473c2abe09aaf512a04a3c6bd5bb04324c4d4438e9.png';
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(48.1141251, -1.6812918),
                    map: map,
                    icon: image,
                    title: 'Snazzy!'
                });
            }

            48.1141251,-1.6812918