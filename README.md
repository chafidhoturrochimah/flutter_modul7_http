# flutter_modul7_http

<ul>
  <li><b>Nama    : Chafidhoturrochimah</b></li>
  <li><b>Kelas   : MI-2B</b></li>
  <li><b>NIM     : 1931710013</b></li>  
</ul><br><br>

<b>Berikut ini hasil praktikum pada modul HTTP</b><hr>
1. Pada gambar dibawah ini, sudah berhasil mendapatkan response dari REST Api ke widget text. namun, belum tampil dengan baik karena belum menggunakan listview dan models.<br>
  ![WhatsApp Image 2021-04-13 at 09 47 52](https://user-images.githubusercontent.com/52942668/114492875-a7fc3e00-9c43-11eb-883e-ac6b88c6eb11.jpeg) <br>

2. Pada gambar dibawah ini, sudah berhasil membuat listview dengan membuat model untuk response http dan membuat halaman listview Populer Movie.<br>
  ![WhatsApp Image 2021-04-13 at 09 47 52 (1)](https://user-images.githubusercontent.com/52942668/114493045-ff021300-9c43-11eb-94be-474e441a0f30.jpeg) <br>

3. Challenge : carilah cara menambahkan gambar dari response api ke listview, tambahkan gambar tersebut ke listview.<br>
  Jawab : Caranya yaitu dengan menambahkan leading dengan berisi <br>
  <b>"leading: Image.network('https://image.tmdb.org/t/p/w500/' +  movies[position].posterPath)</b><br>
  pada file movie_list.dart. Maka akan terlihat seperti pada gambar dibawah ini.<br>
  ![WhatsApp Image 2021-04-13 at 09 47 52 (2)](https://user-images.githubusercontent.com/52942668/114493321-8e0f2b00-9c44-11eb-8992-0680d7ebaed3.jpeg) <br>

 4. Pada gambar dibawah ini, sudah berhasil membuat halaman detail popular movie. Yang dimana ketika di tap salah satu list view popular movie, maka akan menuju ke halaman detail movie yang dipilih. Saya tap film Godzilla vs. Kong. dan akan muncul seperti gambar di bawah ini.<br>
  ![WhatsApp Image 2021-04-13 at 09 47 52 (3)](https://user-images.githubusercontent.com/52942668/114493428-c1ea5080-9c44-11eb-8e15-6ae719555eda.jpeg)

5. Challenge : Modifikasilah Tampilan agar terlihat lebih menarik! <hr>
   <justify><b>Disini saya memeodifikasi pada bagian font, warna, perataan teks, dan juga menambhakan beberapa icon seperti kalender, bintang, tanda panah kanan. serta saya juga memodifikasi tampilan pada halaman detail. dengan menambahkan title, rating dan juga button watch trailer. namun, button tersebut belum bisa berfungsi. dikarenakan saya belum bisa menambahkan video.</b></justify><br><br>
   <b>Berikut hasil Video Demo Challenge diatas : </b><hr>
   https://drive.google.com/file/d/1vZknZnR4T8WQc5C-kvL1VV12ND2cHW8V/view?usp=sharing
