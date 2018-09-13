$(document).ready(function(){

	$("#banner").css({"height":$(window).height() + "px"});

	var flag = false;
	var scroll;

	$(window).scroll(function(){
		scroll = $(window).scrollTop();

		if(scroll > 150){
			if(!flag){
				$("#logo").css({"margin-top": "-5px", "width": "60px","height":"60px"});

				$("header").css({"background-color": "#ff0000"});
				flag = true;
			}
		}else{
			if(flag){
				$("#logo").css({"margin-top": "120px", "width": "250px","height":"250px"});

				$("header").css({"background-color": "transparent"});
				flag = false;
			}
		}


	});

});


      function initMap() {
        var uluru = {lat: 19.4529782, lng: -99.1840958};
        var uluru2 = {lat:19.4686896, lng: -99.2060176};
        var uluru3 = {lat: 19.4529782, lng: -99.1762226};
        var uluru4 = {lat: 19.462307, lng: -99.1833};
        var uluru5 = {lat: 19.4651715, lng: -99.1791885};
        var uluru6 = {lat: 19.465395, lng: -99.1673427};
        var uluru7 = {lat: 19.4480671, lng:-99.1779766};
        var uluru8 = {lat: 19.4529782, lng: -99.1840958};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru3,
          styles: [
            {elementType: 'geometry', stylers: [{color: 'blanchedalmond'}]},
            {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.fill', stylers: [{color: 'azure'}]},
            {
              featureType: 'administrative.locality',
              elementType: 'labels.text.fill',
              stylers: [{color: 'azure'}]
            },
            {
              featureType: 'poi',
              elementType: 'labels.text.fill',
              stylers: [{color: 'azure'}]
            },
            {
              featureType: 'poi.park',
              elementType: 'geometry',
              stylers: [{color: '#263c3f'}]
            },
            {
              featureType: 'poi.park',
              elementType: 'labels.text.fill',
              stylers: [{color: '#6b9a76'}]
            },
            {
              featureType: 'road',
              elementType: 'geometry',
              stylers: [{color: '#996600'}]
            },
            {
              featureType: 'road',
              elementType: 'geometry.stroke',
              stylers: [{color: '#212a37'}]
            },
            {
              featureType: 'road',
              elementType: 'labels.text.fill',
              stylers: [{color: '#9ca5b3'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'geometry',
              stylers: [{color: '#746855'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'geometry.stroke',
              stylers: [{color: '#1f2835'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'labels.text.fill',
              stylers: [{color: '#f3d19c'}]
            },
            {
              featureType: 'transit',
              elementType: 'geometry',
              stylers: [{color: '#2f3948'}]
            },
            {
              featureType: 'transit.station',
              elementType: 'labels.text.fill',
              stylers: [{color: '#d59563'}]
            },
            {
              featureType: 'water',
              elementType: 'geometry',
              stylers: [{color: '#17263c'}]
            },
            {
              featureType: 'water',
              elementType: 'labels.text.fill',
              stylers: [{color: '#515c6d'}]
            },
            {
              featureType: 'water',
              elementType: 'labels.text.stroke',
              stylers: [{color: '#17263c'}]
            }
          ]
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
        var marker2 = new google.maps.Marker({
          position: uluru2,
          map: map
        });
    var marker3 = new google.maps.Marker({
          position: uluru3,
          map: map
        });
    var marker4 = new google.maps.Marker({
          position: uluru4,
          map: map
        });
    var marker5 = new google.maps.Marker({
          position: uluru5,
          map: map
        });
    var marker6 = new google.maps.Marker({
          position: uluru6,
          map: map
        });
        var marker7 = new google.maps.Marker({
          position: uluru7,
          map: map
        });
        var marker8 = new google.maps.Marker({
          position: uluru8,
          map: map
        });
      }