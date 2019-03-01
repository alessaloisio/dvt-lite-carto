@admin-boundaries: #aaaaaa;
@bounds-color: #b3b3b0;

@admin-simplify: 4;
@admin-simplify-algorithm: visvalingam-whyatt;


/* For performance reasons, the admin border layers are split into three groups
for low, middle and high zoom levels.
For each zoomlevel, all borders come from a single attachment, to handle
overlapping borders correctly.
*/

#admin-low-zoom[zoom < 11],
#admin-mid-zoom[zoom >= 11][zoom < 13],
#admin-high-zoom[zoom >= 13] {

  [admin_level = '2'] {
    [zoom >= 4] {
      line-color: @bounds-color;
      line-width: 0.4;
    }
    [zoom >= 5] {
      line-width: 0.5;
    }
    [zoom >= 6] {
      line-width: 0.6;
    }
    [zoom >= 7] {
      line-width: 1;
    }
    [zoom >= 9] {
      line-width: 1.8;
    }
    [zoom >= 10] {
      line-width: 2.5;
    }
    [zoom >= 12] {
      line-width: 3;
    }
  }

  [admin_level = '4'] {

    [zoom >= 7] {
      line-color: @bounds-color;
      line-width: 1;
      line-dasharray: 4,2;
      line-clip: false;
    }
    [zoom >= 9] {
      line-width: 1.8;
    }
    
  }

  /*[admin_level = '3'] {
    [zoom >= 4] {
      line-color: @admin-boundaries;
      line-width: 0.6;
    }
    [zoom >= 7] {
      line-width: 1.2;
    }
    [zoom >= 10] {
      line-width: 4;
    }
  }*/

  

}



#admin-text[zoom >= 11][way_pixels >= 48000] {
  [admin_level = '1'][way_pixels >= 360000],
  [admin_level = '2'][way_pixels >= 360000],
  [admin_level = '3'][way_pixels >= 196000],
  [admin_level = '4'][way_pixels >= 196000],
  [zoom >= 12][admin_level = '5'],
  [zoom >= 13][admin_level = '6'],
  [zoom >= 14][admin_level = '7'],
  [zoom >= 15][admin_level = '8'],
  [zoom >= 16] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-fill: @admin-boundaries;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-largest-bbox-only: false;
    text-placement: line;
    text-spacing: 750;
    text-repeat-distance: 250;
    text-margin: 10;
    text-clip: true;
    text-vertical-alignment: middle;
    text-dy: -10;
  }
}




@protected-fill: #92c4a8;
@protected-line: #6e947f;

#protected-areas-text[zoom >= 13][way_pixels > 192000] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: green;
  [boundary='aboriginal_lands'],
  [boundary='protected_area'][protect_class='24'] {
    text-fill: @aboriginal;
  }
  text-halo-radius: @standard-halo-radius;
  text-halo-fill: @standard-halo-fill;
  text-largest-bbox-only: false;
  text-placement: line;
  text-spacing: 750;
  text-repeat-distance: 250;
  text-margin: 10;
  text-clip: true;
  text-vertical-alignment: middle;
  text-dy: -10;
}

#protected-areas {
  [way_pixels > 750] {
    [zoom >= 8][zoom < 10] {
      ::fill {
        opacity: 0.05;
        polygon-fill: @protected-fill;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
          polygon-fill: @aboriginal;
        }
      }
      ::outline {
        opacity: 0.25;
        line-width: 0.6;
        line-color: @protected-line;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
          line-color: @aboriginal;
        }
        [zoom >= 9] {
          line-width: 1.5;
        }
      }
    }
    [zoom >= 10] {
      ::wideline {
        opacity: 0.15;
        line-width: 1.8;
        line-offset: -0.9;
        line-color: @protected-line;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
          line-color: @aboriginal;
        }
        line-join: round;
        line-cap: round;
        [zoom >= 12] {
          line-width: 2;
          line-offset: -1;
        }
        [zoom >= 14] {
          line-width: 3;
          line-offset: -2;
        }
      }
      ::narrowline {
        opacity: 0.15;
        line-width: 0.9;
        line-color: @protected-line;
        [boundary='aboriginal_lands'],
        [boundary='protected_area'][protect_class='24'] {
          line-color: @aboriginal;
        }
        line-join: round;
        line-cap: round;
        [zoom >= 12] {
            line-width: 1;
        }
      }
    }
  }
}

