@marina-text: #576ddf; // also swimming_pool
@wetland-text: darken(#4aa5fa, 25%); /* Also for marsh and mud */
@shop-icon: #ac39ac;
@shop-text: #939;
@transportation-icon: #0092da;
@transportation-text: #0066ff;
@accommodation-icon: @transportation-icon;
@accommodation-text: @transportation-text;
@airtransport: #8461C4; //also ferry_terminal
@health-color: #BF0000;
@amenity-brown: #734a08;
@gastronomy-icon: #C77400;
@gastronomy-text: darken(@gastronomy-icon, 5%);
@memorials: @amenity-brown;
@culture: @amenity-brown;
@public-service: @amenity-brown;
@office: #4863A0;
@man-made-icon: #666666;
@advertising-grey: @man-made-icon;
@barrier-icon: #3f3f3f;
@landform-color: #d08f55;
@leisure-green: darken(@park, 60%);
@aboriginal: #82643a;
@religious-icon: #000000;

@landcover-font-size: 10;
@landcover-wrap-width-size: 30; // 3 em
@landcover-line-spacing-size: -1.5; // -0.15 em
@landcover-font-size-big: 12;
@landcover-wrap-width-size-big: 36; // 3 em
@landcover-line-spacing-size-big: -1.8; // -0.15 em
@landcover-font-size-bigger: 15;
@landcover-wrap-width-size-bigger: 45; // 3 em
@landcover-line-spacing-size-bigger: -2.25; // -0.15 em
@landcover-face-name: @oblique-fonts;

@standard-font-size: 10;
@standard-wrap-width: 30; // 3 em
@standard-line-spacing-size: -1.5; // -0.15 em
@standard-font: @book-fonts;


/* Note that .text is also used in water.mss */
.text-low-zoom[zoom < 10],
.text[zoom >= 10] {
  [feature = 'natural_cape'][zoom >= 4][way_pixels > 3000][way_pixels < 800000],
  [feature = 'natural_cape'][zoom >= 16][way_pixels < 800000],
  [feature = 'place_island'][zoom >= 4][way_pixels > 3000][way_pixels < 800000],
  [feature = 'place_island'][zoom >= 16][way_pixels < 800000],
  [feature = 'place_islet'][zoom >= 11][way_pixels > 3000][way_pixels < 800000],
  [feature = 'place_islet'][zoom >= 17][way_pixels < 800000] {
    text-name: "[name]";
    text-fill: #000;
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    [way_pixels > 12000] {
      text-size: @landcover-font-size-big;
      text-wrap-width: @landcover-wrap-width-size-big;
      text-line-spacing: @landcover-line-spacing-size-big;
    }
    [way_pixels > 48000] {
      text-size: @landcover-font-size-bigger;
      text-wrap-width: @landcover-wrap-width-size-bigger;
      text-line-spacing: @landcover-line-spacing-size-bigger;
    }
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_pub'][zoom >= 18],
  [feature = 'amenity_restaurant'][zoom >= 18],
  [feature = 'amenity_food_court'][zoom >= 17],
  [feature = 'amenity_cafe'][zoom >= 18],
  [feature = 'amenity_fast_food'][zoom >= 18],
  [feature = 'amenity_biergarten'][zoom >= 18],
  [feature = 'amenity_bar'][zoom >= 18],
  [feature = 'amenity_ice_cream'][zoom >= 18] {
    text-name: "[name]";
    text-fill: @gastronomy-text;
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [feature = 'amenity_bar'] {
      text-dy: 13;
    }
  }

  [feature = 'amenity_library'],
  [feature = 'tourism_museum'],
  [feature = 'amenity_theatre'],
  [feature = 'amenity_cinema'],
  [feature = 'amenity_arts_centre'],
  [feature = 'amenity_community_centre'],
  [feature = 'historic_archaeological_site'],
  [feature = 'amenity_nightclub'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @culture;
      text-dy: 11;
      [feature = 'amenity_community_centre'] { text-dy: 10; }
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'amenity_nightclub']{
        text-dy: 12;
      }
    }
  }

  [feature = 'amenity_public_bath'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'leisure_sauna'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @leisure-green;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_car_rental'][zoom >= 17],
  [feature = 'amenity_bicycle_rental'][zoom >= 17],
  [feature = 'amenity_boat_rental'][zoom >= 17],
  [feature = 'barrier_toll_booth'][zoom >= 17],
  [feature = 'leisure_slipway'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @transportation-text;
    [feature = 'amenity_car_rental']     { text-dy: 10; }
    [feature = 'amenity_bicycle_rental'] { text-dy: 10; }
    [feature = 'amenity_boat_rental']    { text-dy: 13; }
    [feature = 'barrier_toll_booth']     { text-dy: 13; }
    [feature = 'leisure_slipway']        { text-dy: 13; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_parking'][zoom >= 10][way_pixels > 900],
  [feature = 'amenity_bicycle_parking'][zoom >= 10][way_pixels > 900],
  [feature = 'amenity_motorcycle_parking'][zoom >= 10][way_pixels > 900],
  [feature = 'amenity_parking_entrance'][zoom >= 18] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @transportation-text;
    text-dy: 9;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [access != ''][access != 'permissive'][access != 'yes'] {
      text-opacity: 0.33;
      text-halo-radius: 0;
    }
    [feature = 'amenity_bicycle_parking'],
    [feature = 'amenity_motorcycle_parking'] {
      text-dy: 12;
    }
  }

  [feature = 'amenity_courthouse'][zoom >= 17],
  [feature = 'amenity_townhall'][zoom >= 17],
  [feature = 'amenity_police'][zoom >= 17],
  [feature = 'amenity_social_facility'][zoom >= 17],
  [feature = 'amenity_fire_station'][zoom >= 17],
  [feature = 'amenity_post_office'][zoom >= 17],
  [feature = 'amenity_prison'][zoom >= 17],
  [feature = 'amenity_embassy'][zoom >= 17],
  [feature = 'amenity_bank'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @public-service;
    text-dy: 11;
    [feature = 'amenity_courthouse'] { text-dy: 13; }
    [feature = 'amenity_townhall'] { text-dy: 13; }
    [feature = 'amenity_prison'] { text-dy: 12; }
    [feature = 'amenity_embassy'] { text-dy: 10; }
    [feature = 'amenity_bank'] { text-dy: 9; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_vehicle_inspection'][zoom >= 17],
  [feature = 'amenity_car_wash'][zoom >= 17],
  [feature = 'amenity_internet_cafe'][zoom >= 17],
  [feature = 'leisure_bowling_alley'][zoom >= 17],
  [feature = 'leisure_beach_resort'][zoom >= 17],
  [feature = 'leisure_bird_hide'][zoom >= 17],
  [feature = 'leisure_amusement_arcade'][zoom >= 17],
  [feature = 'leisure_outdoor_seating'][zoom >= 19],
  [feature = 'leisure_fishing'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    [feature = 'leisure_outdoor_seating'],
    [feature = 'leisure_fishing'],
    [feature = 'leisure_bowling_alley'],
    [feature = 'leisure_bird_hide'],
    [feature = 'leisure_amusement_arcade'],
    [feature = 'leisure_beach_resort'] {
      text-fill: @leisure-green;
    }
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_bbq'][zoom >= 17],
  [feature = 'amenity_bicycle_repair_station'][zoom >= 19],
  [feature = 'amenity_drinking_water'][zoom >= 17],
  [feature = 'amenity_shower'][zoom >= 18],
  [feature = 'tourism_picnic_site'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    [feature = 'tourism_picnic_site'] {
      text-fill: @leisure-green;
    }
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [access != ''][access != 'permissive'][access != 'yes'] {
      text-opacity: 0.33;
      text-halo-radius: 0;
    }
  }

  [feature = 'amenity_place_of_worship'][zoom >= 16][way_pixels > 3000],
  [feature = 'amenity_place_of_worship'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: #000033;
    text-dy: 12;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_marketplace'][zoom >= 16][way_pixels > 3000],
  [feature = 'amenity_marketplace'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 12;
    text-fill: @shop-text;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: rgba(255, 255, 255, 0.6);
    text-placement: interior;
  }

  [feature = 'natural_peak'][zoom >= 13],
  [feature = 'natural_volcano'][zoom >= 13],
  [feature = 'natural_saddle'][zoom >= 15],
  [feature = 'tourism_viewpoint'][zoom >= 16] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@landform-color, 30%);
    [feature = 'natural_volcano'] { text-fill: #d40000; }
    text-dy: 7;
    [feature = 'tourism_viewpoint'] { text-dy: 11; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'natural_cape'][zoom >= 14] {
    text-name: "[name]";
    text-fill: #000;
    text-size: @landcover-font-size;
    text-wrap-width: @landcover-wrap-width-size;
    text-line-spacing: @landcover-line-spacing-size;
    text-size: @landcover-font-size-big;
    text-wrap-width: @landcover-wrap-width-size-big;
    text-line-spacing: @landcover-line-spacing-size-big;
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'tourism_information'][zoom >= 19],
  [feature = 'tourism_information']["information"='office'][zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: darken(black, 30%);
      [information = 'office'] { text-fill: @amenity-brown; }
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      text-dy: 11;
  }

  [feature = 'waterway_waterfall'] {
    [zoom >= 13][height > 20],
    [zoom >= 14][height > 10],
    [zoom >= 15][name != null],
    [zoom >= 16] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @water-text;
      text-dy: 10;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'man_made_cross'][zoom >= 17],
  [feature = 'power_generator'][location != 'rooftop'][location != 'roof'][zoom >= 17],
  [feature = 'power_generator'][location = null][zoom >= 17],
  [feature = 'power_generator'][zoom >= 19],
  [feature = 'historic_wayside_cross'][zoom >= 17],
  [feature = 'historic_wayside_shrine'][zoom >= 17],
  [feature = 'historic_city_gate'][zoom >= 17],
  [feature = 'natural_cave_entrance'][zoom >= 15],
  [feature = 'man_made_mast'][zoom >= 18],
  [feature = 'man_made_tower'][zoom >= 17],
  [feature = 'man_made_storage_tank'][zoom >= 18],
  [feature = 'man_made_silo'][zoom >= 18],
  [feature = 'man_made_communications_tower'][zoom >= 17],
  [feature = 'man_made_telescope']["telescope:type" != 'optical']["telescope:type" != null][zoom >= 16],
  [feature = 'man_made_telescope'][zoom >= 17],
  [feature = 'man_made_water_tower'][zoom >= 17],
  [feature = 'man_made_chimney'][zoom >= 17],
  [feature = 'man_made_crane'][zoom >= 17],
  [feature = 'man_made_waste_water_plant'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@man-made-icon, 20%);
    [feature = 'man_made_cross'],
    [feature = 'historic_wayside_cross'] {
      text-dy: 6;
    }
    [feature = 'power_generator'],
    [feature = 'historic_city_gate'],
    [feature = 'man_made_mast'],
    [feature = 'man_made_tower'],
    [feature = 'man_made_communications_tower'],
    [feature = 'man_made_telescope'],
    [feature = 'man_made_water_tower'],
    [feature = 'man_made_storage_tank'],
    [feature = 'man_made_silo'],
    [feature = 'man_made_chimney'],
    [feature = 'man_made_crane'] {
      text-dy: 10;
    }
    [feature = 'natural_cave_entrance'] {
      text-dy: 11;
    }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'tourism_artwork'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = null][zoom >= 17],
  [feature = 'historic_memorial'][memorial != null][memorial != 'blue_plaque'][memorial != 'bust'][memorial != 'plaque'][memorial != 'stele'][memorial != 'stone'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = 'statue'][zoom >= 17],
  [feature = 'historic_memorial'][memorial = 'bust'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'stele'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'stone'][zoom >= 18],
  [feature = 'historic_memorial'][memorial = 'blue_plaque'][zoom >= 19],
  [feature = 'historic_memorial'][memorial = 'plaque'][zoom >= 19],
  [feature = 'man_made_obelisk'][zoom >= 17],
  [feature = 'historic_monument'][zoom >= 16],
  [feature = 'historic_fort'][zoom >= 16],
  [feature = 'historic_castle'][zoom >= 16],
  [feature = 'historic_manor'][zoom >= 16] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @memorials;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'military_bunker'][zoom >= 17],
  [feature = 'historic_wayside_shrine'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@man-made-icon, 20%);
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'leisure_miniature_golf'][zoom >= 17],
  [feature = 'leisure_golf_course'][zoom >= 15] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @leisure-green;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    text-dy: 13;
  }

  [feature = 'leisure_water_park'],
  [feature = 'leisure_sports_centre'][sport = 'swimming'],
  [feature = 'leisure_swimming_area'] {
    [way_area >= 150000][zoom >= 14],
    [way_area >= 80000][zoom >= 15],
    [way_area >= 20000][zoom >= 16],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @leisure-green;
      text-dy: 11;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'leisure_swimming_pool'][is_building = 'no'] {
    [zoom >= 14][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'leisure_playground'],
  [feature = 'leisure_dog_park'],
  [feature = 'leisure_fitness_centre'],
  [feature = 'leisure_fitness_station'] {
    [way_area >= 150000][zoom >= 14],
    [way_area >= 80000][zoom >= 15],
    [way_area >= 20000][zoom >= 16],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 13;
      text-fill: @leisure-green;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [access != ''][access != 'permissive'][access != 'yes'] {
        text-fill: darken(@park, 50%);
      }
    }
  }

  [feature = 'landuse_military'],
  [feature = 'natural_wood'],
  [feature = 'landuse_forest'],
  [feature = 'boundary_national_park'],
  [feature = 'leisure_nature_reserve'],
  [feature = 'boundary_aboriginal_lands'],
  [feature = 'boundary_protected_area'] {
    [zoom >= 8][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'landuse_military'] {
        text-fill: darken(@military, 40%);
      }
      [feature = 'boundary_aboriginal_lands'] {
        text-fill: @aboriginal;
      }
      [feature = 'natural_wood'],
      [feature = 'landuse_forest'] {
        text-fill: darken(@forest, 50%);
      }
      [feature = 'boundary_national_park'],
      [feature = 'leisure_nature_reserve'],
      [feature = 'boundary_protected_area'] {
        text-fill: darken(@forest, 60%);
      }
    }
  }

  [feature = 'military_danger_area'][is_building = 'no'] {
    [zoom >= 9][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@military, 20%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'landuse_garages'][is_building = 'no'] {
    [zoom >= 13][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@garages, 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'natural_wetland'],
  [feature = 'natural_marsh'],
  [feature = 'natural_mud'],
  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'],
  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_village_green'],
  [feature = 'leisure_garden'],
  [feature = 'landuse_quarry'],
  [feature = 'landuse_vineyard'],
  [feature = 'landuse_orchard'],
  [feature = 'landuse_plant_nursery'],
  [feature = 'landuse_cemetery'],
  [feature = 'amenity_grave_yard'],
  [feature = 'landuse_residential'],
  [feature = 'landuse_meadow'],
  [feature = 'natural_grassland'],
  [feature = 'landuse_grass'],
  [feature = 'landuse_allotments'],
  [feature = 'landuse_farmyard'],
  [feature = 'landuse_farmland'],
  [feature = 'landuse_greenhouse_horticulture'],
  [feature = 'shop_mall'],
  [feature = 'landuse_retail'],
  [feature = 'landuse_industrial'],
  [feature = 'landuse_railway'],
  [feature = 'man_made_works'],
  [feature = 'man_made_water_works'],
  [feature = 'man_made_wastewater_plant'],
  [feature = 'landuse_commercial'],
  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_construction'],
  [feature = 'tourism_theme_park'],
  [feature = 'tourism_zoo'],
  [feature = 'amenity_kindergarten'],
  [feature = 'amenity_school'],
  [feature = 'amenity_college'],
  [feature = 'amenity_university'],
  [feature = 'landuse_religious'],
  [feature = 'natural_heath'],
  [feature = 'natural_scrub'],
  [feature = 'natural_beach'],
  [feature = 'natural_shoal'],
  [feature = 'natural_reef'],
  [feature = 'leisure_fitness_centre'],
  [feature = 'leisure_fitness_station'],
  [feature = 'leisure_sports_centre'],
  [feature = 'leisure_stadium'],
  [feature = 'leisure_track'],
  [feature = 'leisure_dog_park'],
  [feature = 'leisure_ice_rink'],
  [feature = 'leisure_pitch'] {
    [zoom >= 10][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'],
    [zoom >= 10][way_pixels > 3000][feature = 'shop_mall'],
    [zoom >= 17][feature = 'shop_mall'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'natural_reef'],
      [feature = 'natural_wetland'],
      [feature = 'natural_marsh'],
      [feature = 'natural_mud'] {
        text-fill: @wetland-text;
      }
      [feature = 'leisure_park'],
      [feature = 'leisure_recreation_ground'],
      [feature = 'landuse_recreation_ground'],
      [feature = 'landuse_village_green'],
      [feature = 'leisure_garden'] {
        text-fill: @leisure-green;
      }
      [feature = 'landuse_quarry'] {
        text-fill: darken(@quarry, 60%);
      }
      [feature = 'landuse_vineyard'],
      [feature = 'landuse_orchard'],
      [feature = 'landuse_plant_nursery'] {
        text-fill: darken(@orchard, 50%);
      }
      [feature = 'landuse_cemetery'],
      [feature = 'amenity_grave_yard'] {
        text-fill: darken(@cemetery, 50%);
        text-halo-radius: @standard-halo-radius * 1.5; /* extra halo needed to overpower the cemetery polygon pattern */
      }
      [feature = 'landuse_residential'] {
        text-fill: darken(@residential, 50%);
      }
      [feature = 'landuse_meadow'],
      [feature = 'natural_grassland'],
      [feature = 'landuse_grass'] {
        text-fill: darken(@grass, 50%);
      }
      [feature = 'landuse_allotments'] {
        text-fill: darken(@allotments, 50%);
      }
      [feature = 'landuse_farmyard'] {
        text-fill: darken(@farmyard, 50%);
      }
      [feature = 'landuse_farm'],
      [feature = 'landuse_farmland'],
      [feature = 'landuse_greenhouse_horticulture'] {
        text-fill: darken(@farmland, 50%);
      }
      [feature = 'shop_mall'],
      [feature = 'landuse_retail'] {
        text-fill: darken(@retail, 50%);
      }
      [feature = 'landuse_industrial'],
      [feature = 'landuse_railway'],
      [feature = 'man_made_wastewater_plant'],
      [feature = 'man_made_water_works'],
      [feature = 'man_made_works'] {
        text-fill: darken(@industrial, 60%);
      }
      [feature = 'landuse_commercial'] {
        text-fill: darken(@commercial, 60%);
      }
      [feature = 'landuse_brownfield'],
      [feature = 'landuse_landfill'],
      [feature = 'landuse_construction'] {
        text-fill: darken(@construction, 50%);
      }
      [feature = 'tourism_caravan_site'] {
        text-fill: darken(@campsite, 50%);
        text-dy: 15;
      }
      [feature = 'tourism_theme_park'],
      [feature = 'tourism_zoo'] {
        text-fill: @tourism;
        text-face-name: @bold-fonts; /*rendered bold to improve visibility since theme parks tend to have crowded backgrounds*/
      }
      [feature = 'amenity_kindergarten'],
      [feature = 'amenity_school'],
      [feature = 'amenity_college'],
      [feature = 'amenity_university'] {
        text-fill: darken(@societal_amenities, 80%);
      }
      [feature = 'landuse_religious'] {
        text-fill: darken(@place_of_worship, 50%);
      }
      [feature = 'natural_heath'] {
        text-fill: darken(@heath, 40%);
      }
      [feature = 'natural_scrub'] {
        text-fill: darken(@scrub, 60%);
      }
      [feature = 'natural_beach'],
      [feature = 'natural_shoal'] {
        text-fill: darken(@beach, 60%);
      }
      [feature = 'leisure_sports_centre'],
      [feature = 'leisure_stadium'] {
        text-fill: darken(@stadium, 70%);
      }
      [feature = 'leisure_fitness_centre'],
      [feature = 'leisure_fitness_station'] {
        text-fill: @leisure-green;
        [access != ''][access != 'permissive'][access != 'yes'] {
          text-opacity: 0.33;
          text-halo-radius: 0;
        }
      }
      [feature = 'leisure_dog_park'] {
        text-fill: @leisure-green;
        text-halo-radius: @standard-halo-radius * 1.5; /* Extra halo needed to stand out from paw pattern. */
        text-halo-fill: @standard-halo-fill;
      }
      [feature = 'leisure_track'] {
        text-fill: darken(@track, 40%);
      }
      [feature = 'leisure_ice_rink'],
      [feature = 'leisure_pitch'] {
        text-fill: darken(@pitch, 40%);
      }
    }
  }

  [feature = 'natural_bay'][zoom >= 14],
  [feature = 'natural_spring'][zoom >= 16] {
    text-name: "[name]";
    text-size: 10;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @water-text;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [feature = 'natural_spring'] {
      text-dy: 6;
    }
  }

  [feature = 'amenity_atm'][zoom >= 19],
  [feature = 'amenity_vending_machine'][zoom >= 19] {
    text-name: "[operator]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-fill: @amenity-brown;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    text-face-name: @standard-font;
  }

  [feature = 'amenity_bureau_de_change'][zoom >= 17],
  [feature = 'amenity_public_bookcase'][zoom >= 19],
  [feature = 'tourism_gallery'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-fill: @amenity-brown;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    text-face-name: @standard-font;
  }

  [feature = 'tourism_alpine_hut'][zoom >= 14],
  [feature = 'amenity_shelter'][zoom >= 17],
  [feature = 'leisure_picnic_table'][zoom >= 17],
  [feature = 'tourism_hotel'][zoom >= 17],
  [feature = 'tourism_motel'][zoom >= 17],
  [feature = 'tourism_hostel'][zoom >= 17],
  [feature = 'tourism_chalet'][zoom >= 17],
  [feature = 'tourism_guest_house'][zoom >= 17],
  [feature = 'tourism_apartment'][zoom >= 18],
  [feature = 'tourism_wilderness_hut'][zoom >= 14],
  [feature = 'tourism_camp_site'][zoom >= 17],
  [feature = 'tourism_caravan_site'][zoom >= 17], {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @accommodation-text;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [feature = 'tourism_motel'] {
      text-dy: 13;
    }
    [feature = 'tourism_camp_site'],
    [feature = 'tourism_caravan_site'] {
      text-dy: 15;
    }
    [feature = 'leisure_picnic_table'][zoom >= 17],
    [feature = 'amenity_shelter'] {
      text-fill: @man-made-icon;
    }
    [feature = 'tourism_alpine_hut'],
    [feature = 'tourism_wilderness_hut'],
    [feature = 'amenity_shelter'] {
      [access != ''][access != 'permissive'][access != 'yes'] {
        text-opacity: 0.33;
        text-halo-radius: 0;
      }
    }
  }

  [feature = 'amenity_taxi'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @transportation-text;
    text-dy: 11;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'highway_bus_stop'],
  [feature = 'amenity_charging_station'],
  [feature = 'amenity_fuel'],
  [feature = 'amenity_bus_station'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-fill: @transportation-text;
      text-dy: 11;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'highway_bus_stop'] {
        text-dy: 9;
      }
      [access != ''][access != 'permissive'][access != 'yes'] {
        text-opacity: 0.33;
        text-halo-radius: 0;
      }
    }
  }

  [feature = 'leisure_marina'][zoom >= 15] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: @marina-text;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'amenity_fountain'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @marina-text;
    text-dy: 4;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    [zoom >= 18] {
      text-dy: 10;
    }
  }

  [feature = 'man_made_lighthouse'][zoom >= 15],
  [feature = 'man_made_windmill'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@man-made-icon, 20%);
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_recycling'][recycling_type = 'centre'][zoom >= 17],
  [feature = 'amenity_recycling'][zoom >= 19] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @amenity-brown;
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_hospital'][zoom >= 16],
  [feature = 'healthcare_hospital'][zoom >= 16] {
    text-name: "[name]";
    text-fill: @health-color;
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }


  [feature = 'amenity_clinic'],
  [feature = 'amenity_pharmacy'],
  [feature = 'amenity_doctors'],
  [feature = 'amenity_dentist'],
  [feature = 'amenity_veterinary'],
  [feature = 'healthcare_alternative'],
  [feature = 'healthcare_audiologist'],
  [feature = 'healthcare_birthing_center'],
  [feature = 'healthcare_blood_bank'],
  [feature = 'healthcare_blood_donation'],
  [feature = 'healthcare_centre'],
  [feature = 'healthcare_clinic'],
  [feature = 'healthcare_dentist'],
  [feature = 'healthcare_dialysis'],
  [feature = 'healthcare_doctor'],
  [feature = 'healthcare_laboratory'],
  [feature = 'healthcare_midwife'],
  [feature = 'healthcare_occupational_therapist'],
  [feature = 'healthcare_optometrist'],
  [feature = 'healthcare_physiotherapist'],
  [feature = 'healthcare_podiatrist'],
  [feature = 'healthcare_psychotherapist'],
  [feature = 'healthcare_rehabilitation'],
  [feature = 'healthcare_speech_therapist'],
  [feature = 'healthcare_yes'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 12;
      text-fill: @health-color;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'amenity_nursing_home'],
  [feature = 'amenity_childcare'] {
    [zoom >= 18] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      text-dy: 8;
      text-fill: darken(@societal_amenities, 80%);
    }
  }

  [feature = 'amenity_driving_school'] {
    [zoom >= 18] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 8;
      text-fill: @shop-text;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
      text-placement: interior;
    }
  }

  [feature = 'shop_art'],
  [feature = 'shop_bag'],
  [feature = 'shop_bakery'],
  [feature = 'shop_beauty'],
  [feature = 'shop_bed'],
  [feature = 'shop_beverages'],
  [feature = 'shop_bookmaker'],
  [feature = 'shop_books'],
  [feature = 'shop_carpet'],
  [feature = 'shop_charity'],
  [feature = 'shop_clothes'],
  [feature = 'shop_coffee'],
  [feature = 'shop_computer'],
  [feature = 'shop_fashion'],
  [feature = 'shop_convenience'],
  [feature = 'shop_confectionery'],
  [feature = 'shop_pastry'],
  [feature = 'shop_chocolate'],
  [feature = 'shop_copyshop'],
  [feature = 'shop_deli'],
  [feature = 'shop_doityourself'],
  [feature = 'shop_dry_cleaning'],
  [feature = 'shop_hardware'],
  [feature = 'shop_hairdresser'],
  [feature = 'shop_hifi'],
  [feature = 'shop_houseware'],
  [feature = 'shop_ice_cream'],
  [feature = 'shop_interior_decoration'],
  [feature = 'shop_butcher'],
  [feature = 'shop_car'],
  [feature = 'shop_car_repair'],
  [feature = 'shop_car_parts'],
  [feature = 'shop_cosmetics'],
  [feature = 'shop_dairy'],
  [feature = 'shop_bicycle'],
  [feature = 'shop_fabric'],
  [feature = 'shop_farm'],
  [feature = 'shop_fishmonger'],
  [feature = 'shop_florist'],
  [feature = 'shop_garden_centre'],
  [feature = 'shop_greengrocer'],
  [feature = 'shop_pet'],
  [feature = 'shop_photo'],
  [feature = 'shop_photo_studio'],
  [feature = 'shop_photography'],
  [feature = 'shop_shoes'],
  [feature = 'shop_gift'],
  [feature = 'shop_electronics'],
  [feature = 'shop_alcohol'],
  [feature = 'shop_optician'],
  [feature = 'shop_outdoor'],
  [feature = 'shop_perfumery'],
  [feature = 'shop_furniture'],
  [feature = 'shop_kiosk'],
  [feature = 'shop_massage'],
  [feature = 'shop_medical_supply'],
  [feature = 'shop_mobile_phone'],
  [feature = 'shop_motorcycle'],
  [feature = 'shop_music'],
  [feature = 'shop_musical_instrument'],
  [feature = 'shop_newsagent'],
  [feature = 'shop_jewelry'],
  [feature = 'shop_jewellery'],
  [feature = 'shop_laundry'],
  [feature = 'shop_chemist'],
  [feature = 'shop_paint'],
  [feature = 'shop_toys'],
  [feature = 'shop_travel_agency'],
  [feature = 'shop_seafood'],
  [feature = 'shop_second_hand'],
  [feature = 'shop_sports'],
  [feature = 'shop_stationery'],
  [feature = 'shop_tobacco'],
  [feature = 'shop_tea'],
  [feature = 'shop_ticket'],
  [feature = 'shop_trade'],
  [feature = 'shop_tyres'],
  [feature = 'shop_variety_store'],
  [feature = 'shop_video'],
  [feature = 'shop_video_games'],
  [feature = 'shop_wholesale'],
  [feature = 'shop_wine'],
  [feature = 'shop_other'] {
    [way_pixels > 3000][zoom >= 17],
    [zoom >= 18] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 12;
      text-fill: @shop-text;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
      text-placement: interior;
      [feature = 'shop_car_repair'] {
        text-fill: @amenity-brown;
      }
      [feature = 'shop_massage'] {
        text-fill: @leisure-green;
      }
    }
  }

  [feature = 'office'] {
    // potentially larger offices
    [zoom >= 17] {
      [office = 'administrative'],
      [office = 'adoption_agency'],
      [office = 'educational_institution'],
      [office = 'employment_agency'],
      [office = 'energy_supplier'],
      [office = 'financial'],
      [office = 'government'],
      [office = 'newspaper'],
      [office = 'ngo'],
      [office = 'political_party'],
      [office = 'quango'],
      [office = 'religion'],
      [office = 'research'],
      [office = 'tax'],
      [office = 'telecommunication'],
      [office = 'water_utility'],
      {
        text-name: "[name]";
        text-size: @standard-font-size;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-dy: 8;
        text-fill: @office;
        text-face-name: @standard-font;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: rgba(255, 255, 255, 0.6);
        text-placement: interior;
      }
    }

    // other documented office types
    [zoom >= 18] {
      [office = 'accountant'],
      [office = 'advertising_agency'],
      [office = 'architect'],
      [office = 'association'],
      [office = 'charity'],
      [office = 'company'],
      [office = 'estate_agent'],
      [office = 'forestry'],
      [office = 'foundation'],
      [office = 'guide'],
      [office = 'insurance'],
      [office = 'it'],
      [office = 'lawyer'],
      [office = 'logistics'],
      [office = 'moving_company'],
      [office = 'notary'],
      [office = 'physician'],
      [office = 'private_investigator'],
      [office = 'property_management'],
      [office = 'surveyor'],
      [office = 'tax_advisor'],
      [office = 'therapist'],
      [office = 'travel_agent'] {
        text-name: "[name]";
        text-size: @standard-font-size;
        text-wrap-width: @standard-wrap-width;
        text-line-spacing: @standard-line-spacing-size;
        text-dy: 8;
        text-fill: @office;
        text-face-name: @standard-font;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: rgba(255, 255, 255, 0.6);
        text-placement: interior;
      }
    }

    // all other offices
    [zoom >= 19] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 8;
      text-fill: @office;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
      text-placement: interior;
    }
  }

  [feature = 'shop_supermarket'],
  [feature = 'shop_department_store'] {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: @standard-font-size;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-dy: 12;
      text-fill: @shop-text;
      text-face-name: @standard-font;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: rgba(255, 255, 255, 0.6);
      text-placement: interior;
    }
  }

  [feature = 'aeroway_gate'][zoom >= 17] {
    text-name: "[ref]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: black;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'power_plant'][is_building = 'no'][zoom >= 10],
  [feature = 'power_station'][is_building = 'no'][zoom >= 10],
  [feature = 'power_generator'][is_building = 'no']["generator:source" != 'wind'][zoom >= 10],
  [feature = 'power_sub_station'][is_building = 'no'][zoom >= 13],
  [feature = 'power_substation'][is_building = 'no'][zoom >= 13]{
    [way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@power, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'natural_scree'][zoom >= 9],
  [feature = 'natural_shingle'][zoom >= 9],
  [feature = 'natural_bare_rock'],
  [feature = 'natural_sand'] {
    [zoom >= 8][way_pixels > 3000][is_building = 'no'],
    [zoom >= 17][is_building = 'no'] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
      [feature = 'natural_scree'],
      [feature = 'natural_shingle'],
      [feature = 'natural_bare_rock'] {
        text-fill: darken(@bare_ground, 50%);
      }
      [feature = 'natural_sand'] {
        text-fill: darken(@sand, 50%);
      }
    }
  }

  [feature = 'aeroway_apron'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@apron, 60%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'highway_services'][is_building = 'no'],
  [feature = 'highway_rest_area'][is_building = 'no'] {
    [zoom >= 10][way_pixels > 3000],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: darken(@rest_area, 40%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'natural_glacier'][is_building = 'no'] {
    [zoom >= 8][way_pixels > 10000],
    [zoom >= 10][way_pixels > 750],
    [zoom >= 17] {
      text-name: "[name]";
      text-size: @landcover-font-size;
      text-wrap-width: @landcover-wrap-width-size;
      text-line-spacing: @landcover-line-spacing-size;
      [way_pixels > 12000] {
        text-size: @landcover-font-size-big;
        text-wrap-width: @landcover-wrap-width-size-big;
        text-line-spacing: @landcover-line-spacing-size-big;
      }
      [way_pixels > 48000] {
        text-size: @landcover-font-size-bigger;
        text-wrap-width: @landcover-wrap-width-size-bigger;
        text-line-spacing: @landcover-line-spacing-size-bigger;
      }
      text-fill: mix(darken(@glacier, 40%), darken(@glacier-line, 30%), 50%);
      text-face-name: @landcover-face-name;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @airtransport;
    text-dy: -10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'aeroway_aerodrome']['access' != 'private']['icao' != null]['iata' != null][zoom >= 10][zoom < 14],
  [feature = 'aeroway_aerodrome'][zoom >= 11][zoom < 14],
  [feature = 'amenity_ferry_terminal'][zoom >= 15] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: darken(@airtransport, 15%);
    text-dy: 10;
    text-face-name: @oblique-fonts;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_hunting_stand'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-fill: darken(@man-made-icon, 20%);
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'natural_tree'][zoom >= 17] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: green;
    text-dy: 7;
    [zoom >= 18] { text-dy: 8; }
    [zoom >= 19] { text-dy: 11; }
    [zoom >= 20] { text-dy: 18; }
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'amenity_casino'][zoom >= 17] {
    text-name: "[name]";
    text-fill: @amenity-brown;
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-dy: 10;
    text-face-name: @standard-font;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
  }

  [feature = 'tourism_attraction'][zoom >= 17][is_building = 'no'] {
    text-name: "[name]";
    text-size: @standard-font-size;
    text-wrap-width: @standard-wrap-width;
    text-line-spacing: @standard-line-spacing-size;
    text-fill: @tourism;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-placement: interior;
    text-face-name: @standard-font;
  }
}