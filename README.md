# GMT
# Plotting 2D Koordinat (Easting , Northing) pada GMT 6.0.O
Sebelum menggunakan script ini perlu dipastikan bahwa file - file koordinat easting northing sudah terdapat dalam 1 folder yang sama dengan file .sh #
File yang bisa dipanggil dan digunakan dalam script ini haruslah ber-ekstensi .dat #
Sedikit Penjelasan yang digunakan dalam Script ini adalah sebagai berikut =
  gmt begin > memulai script gmt
  gmset > untuk mengatur tampilan yang kita inginkan
  grdimage > gradasi warna yang akan digunakan pada Plotinggan kita
  pscoast > Plotingan Coastline
  basemap > menentukan peta dasar yang akan kita gunakan
  psxy > untuk menginput koordinat yang akan kita Plot 
  text > untuk menambahkan text
  pslegend > untuk menambakan legenda yang kita ingin tampilkan 
  psvelo > plottingan Velocity

