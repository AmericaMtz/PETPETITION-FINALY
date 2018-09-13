$(document).ready(function(){

	$("#banner").css({"height":$(window).height() + "px"});

	var flag = false;
	var scroll;

	$(window).scroll(function(){
		scroll = $(window).scrollTop();

		if(scroll > 150){
			if(!flag){
				$("#logo").css({"margin-top": "-5px", "width": "60px","height":"60px"});

				$("header").css({"background-color": "#7F3FBF"});
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
        var uluru = {lat: 19.450772, lng: -99.1794951};
        var uluru2 = {lat: 19.4458022, lng: -99.1755334};
        var uluru3 = {lat: 19.4485172, lng: -99.1762226};
        var uluru4 = {lat: 19.452208, lng: -99.1791101};
        var uluru5 = {lat: 19.4524349, lng: -99.1840525};
        var uluru6 = {lat: 19.4522079, lng: -99.1819398};
        var uluru7 = {lat: 19.4583781, lng: -99.1948986};
        var uluru8 = {lat: 19.4529782, lng: -99.1840958};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru,
          styles: [
            {elementType: 'geometry', stylers: [{color: '#ccffff'}]},
            {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.fill', stylers: [{color: '#cc9900'}]},
            {
              featureType: 'administrative.locality',
              elementType: 'labels.text.fill',
              stylers: [{color: '#cc9900'}]
            },
            {
              featureType: 'poi',
              elementType: 'labels.text.fill',
              stylers: [{color: '#cc9900'}]
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
              stylers: [{color: '#38414e'}]
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