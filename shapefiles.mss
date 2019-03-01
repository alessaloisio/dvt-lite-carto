// contour des pays
#necountries {
  [zoom >= 1][zoom < 4] {
    line-width: 0.4;
    line-color: #b3b3b0;
  }
}

// map entière + contour
#world {
  [zoom >= 0][zoom <= 10] {
    polygon-fill: @land-color;
    polygon-simplify: 0.4;

    [zoom <= 10] {
      line-color: #79acdb;
      line-simplify: 0.4;
      line-width: 0.4;
      line-offset: 0.4;
    }
  }
}

#coast-poly {
  [zoom >= 10] {
    polygon-fill: @land-color;
  }
}

#icesheet-poly {
  [zoom >= 5] {
    polygon-fill: @glacier;
  }
}

#icesheet-outlines {
  [zoom >= 5] {
    [ice_edge = 'ice_ocean'],
    [ice_edge = 'ice_land'] {
      line-width: 0.375;
      line-color: @glacier-line;
      [zoom >= 8] {
        line-width: 0.5;
      }
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 0.75;
      }
    }
  }
}
