gmt begin lpgititik
#gmt gmtset MAP_GRID_CROSS_SIZE_PRIMARY=0.1i
#gmt gmtset PS_MEDIA=a3
	#gmt gmtdefaults -D
	gmt gmtset MAP_FRAME_TYPE fancy
	gmt gmtset MAP_GRID_CROSS_SIZE_PRIMARY=0.1i
	map='-R103.15/107.00/-6.525/-4.32 -JM24/30c'
        gmt grdimage gebco_ind.nc $map -Ccpt.cpt -Igebco_indi.nc

	#gmt pscoast -W0.01c,black -Df
  

	gmt psxy listkoordSS.dat $map -Sc0.2 -G250/0/0 -W0.04c
        #gmt text listkoordSSname.dat -F+f12,TimesNewRoman,black+j -Gwhite -D0/0.1i
	awk '{print $1-0.03, $2+0.05, $4}' listkoordSSname.dat | gmt text -F+f16,NewCenturySchlbk-BoldItalic=~4,white --FONT_ANNOT_PRIMARY=16p,red

	
	#gmt text -F+f12,TimesNewRoman-BoldItalic=~6,white <<- END
	103.6 -5.90 2 cm/tahun
	END
	
	gmt text -F+f16,TimesNewRoman-BoldItalic=~6,white <<- END
	104.5 -4.50 Pulau Sumatra
        106.5 -6.23 Pulau Jawa
	END

	gmt text $map -F+f26,NewCenturySchlbk-BoldItalic=~3,white --FONT_ANNOT_PRIMARY=12p,Times-Bold  <<- END
	105.3 -5.4 Bandar Lampung
	END

	gmt pslegend $map -Dx0.7c/0.01c+w2.0i+o0.45i -F+gwhite+pthicker,black --FONT_ANNOT_PRIMARY=12p <<- END
	S 0.1i c 0.1i red - 0.25i CORS BIG
	S 0.1i c 0.1i red - 0.25i Geodesi Unila
	G0.45i
	END


	gmt basemap -B0.5dg0.5d -BNESW -Lfx4.0c/1.75c/0/50+l -Tx26c/15c/2.5c --FONT_ANNOT_PRIMARY=10p --FONT_LABEL=12p --FONT_TITLE=10p


	#gmt psvelo titik.dat -Se45/5.5/0 -W2p,blue -A12p+e -Gred
	#gmt psvelo velo.dat -Sx1.9 -W5/47/23/56 -A/0.5/0.25/0.10


gmt end
