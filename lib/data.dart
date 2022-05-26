class Place {
  String name;
  String location;
  String imageAsset;
  String description;

  Place({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.description,
  });
}

var placeList = [
  Place(
      name: 'Pulau Weh',
      location: 'Sumatera Utara',
      imageAsset: 'images/pulau-weh.png',
      description:
          'Pulau Weh (atau We) atau dikenal juga dengan Pulau Sabang adalah pulau vulkanik kecil yang terletak di barat laut Pulau Sumatra. Pulau ini pernah terhubung dengan Pulau Sumatra, namun kemudian terpisah oleh laut setelah meletusnya gunung berapi terakhir kali pada zaman Pleistosen. Pulau ini terletak di Laut Andaman. Kota terbesar di Pulau Weh, Sabang, adalah kota yang terletak paling barat di Indonesia. Pulau ini terkenal dengan ekosistemnya. Pemerintah Indonesia telah menetapkan wilayah sejauh 60 km² dari tepi pulau baik ke dalam maupun ke luar sebagai suaka alam. Hiu bermulut besar dapat ditemukan di pantai pulau ini. Selain itu, pulau ini merupakan satu-satunya habitat katak yang statusnya terancam, Bufo valhallae (genus Bufo). Terumbu karang di sekitar pulau diketahui sebagai habitat berbagai spesies ikan.'),
  Place(
      name: 'Bunaken',
      location: 'Sulawesi Utara',
      imageAsset: 'images/bunaken.png',
      description:
          'Bunaken adalah sebuah pulau seluas 8,08 km² di Teluk Manado, yang terletak di utara pulau Sulawesi, Indonesia. Pulau ini merupakan bagian dari kota Manado, ibu kota provinsi Sulawesi Utara, Indonesia. Pulau Bunaken dapat di tempuh dengan kapal cepat (speed boat) atau kapal sewaan dengan perjalanan sekitar 30 menit dari pelabuhan kota Manado. Di sekitar pulau Bunaken terdapat taman laut Bunaken yang merupakan bagian dari Taman Nasional Bunaken. Taman laut ini memiliki biodiversitas kelautan salah satu yang tertinggi di dunia. Selam scuba menarik banyak pengunjung ke pulau ini. Secara keseluruhan taman laut Bunaken meliputi area seluas 75.265 hektare dengan lima pulau yang berada di dalamnya, yakni Pulau Manado Tua (Manarauw), Pulau Bunaken, Pulau Siladen, Pulau Mantehage berikut beberapa anak pulaunya, dan Pulau Naen. Meskipun meliputi area 75.265 hektare, lokasi penyelaman (diving) hanya terbatas di masing-masing pantai yang mengelilingi kelima pulau itu.'),
  Place(
      name: 'Mentawai',
      location: 'Sumatera Barat',
      imageAsset: 'images/mentawai.png',
      description:
          'Kepulauan Mentawai terdiri dari empat pulau besar yaitu Pulau Sipora, Pulau Siberut, Pulau Pagai Selatan dan Pulau Pagai Utara beserta ratusan pulau kecil di sekitarnya. Semuanya menyimpan berbagai obyek wisata alam dan budaya yang menarik.'),
  Place(
      name: "Danau Toba",
      location: "Sumatera Utara",
      imageAsset: "images/danau-toba.png",
      description:
          "Danau Toba (Aksara Batak Toba : ᯖᯀᯬᯖᯬᯅ, translit. Tao Toba) adalah danau alami berukuran besar di Indonesia yang berada di kaldera Gunung Supervulkan. Danau ini memiliki panjang 100 kilometer (62 mil), lebar 30 kilometer (19 mi), dan kedalaman 505 meter (1.657 ft). Danau ini terletak di tengah pulau Sumatra bagian utara dengan ketinggian permukaan sekitar 900 meter (2.953 ft). Danau ini membentang dari 2.88°N 98.52°E sampai 2.35°N 99.1°E. Ini adalah danau terbesar di Indonesia dan danau vulkanik terbesar di dunia."),
  Place(
      name: 'Raja Ampat',
      location: 'Papua',
      imageAsset: 'images/raja-ampat.png',
      description:
          'Raja Ampat merupakan sebuah kabupaten di Provinsi Papu Barat. Kabupaten ini memiliki empat pulau besar yaitu Pulau Waigeo, Batanta, Salawati, dan Misool. Selain itu ada juga 1.847 pulau kecil yang ada di Raja Ampat. Menurut penjelasan dalam indonesia.travel, nama Raja Ampat berasal dari legenda masyarakat setempat. Dahulu diyakini ada seorang wanita yang menemukan tujuh telur. Empat telur diantaranya menetas dan menjadi raja yang berkuasa di empat pulau besar. Sedangkan tiga lainnya menetas menjadi batu, satu menjadi wanita, dan satu lagi menjadi makhluk gaib. Terlepas dari legenda yang berkembang, Raja Ampat memang menyimpan berjuta pesona yang menarik untuk diulas.'),
];

var menuList = [
  Place(
      name: 'Pulau Karimunjawa',
      location: 'Jawa Tengah',
      imageAsset: 'images/karimunjawa.png',
      description:
          'Karimunjawa adalah kepulauan di Laut Jawa yang termasuk dalam Kabupaten Jepara, Jawa Tengah. Dengan luas daratan ±1.500 hektare dan perairan ±110.000 hektare, Karimunjawa kini dikembangkan menjadi pesona wisata Taman Laut yang mulai banyak digemari wisatawan lokal maupun mancanegara. Menurut legenda lokal, Karimunjawa ditemukan oleh Sunan Nyamplungan. Kala itu, Sunan Muria memerintahkan Amir Hasan ke sebuah pulau yang terlihat kremun-kremun (kabur) dari puncak Gunung Muria untuk mengembangkan ilmu agamanya. Karena terlihat kremun-kremun, akhirnya pulaunya dinamai "Karimunjawa" hingga kini.'),
  Place(
      name: 'Teluk Hijau',
      location: 'Jawa Timur',
      imageAsset: 'images/teluk-hijau.png',
      description:
          'Teluk Hijau Banyuwangi dikenal pula dengan nama teluk ijo ataupun Green Bay Banyuwangi. Sesuai namanya, tempat ini merupakan salah satu tempat wisata di Banyuwangi yang masih perawan. Pantai teluk hijau banyuwangi dikenal dengan keindahannya yang masih alami sekali, dan juga pemandangan pantai dengan balutan pasir yang indah. Pantai teluk hijau atau Green Bay terletak di dalam area Taman nasional Meru Betiri, Sarongan-Pesanggrahan.'),
  Place(
      name: 'Pantai Dreamland',
      location: 'Bali',
      imageAsset: 'images/pantai-dreamland.png',
      description:
          'Pesona Pantai Dreamland tidak terlepas dari kehadiran batu-batu karang besar yang terletak di sekitar. Ditambah dengan tebing-tebing yang terjal di sekeliling pantai, membuatnya punya ciri khas sendiri. Sebagian besar tebing tersebut tertutup oleh tanaman hijau yang menciptakanspotapik untuk mengambil foto. Keberadaan tebing dan batu karang yang berpadu dengan pasir putih bersih dan jernihnya air laut menjadikan komposisi sempurna untuk kamu mengambil foto. Selain itu, posisi pantai yang dikelilingi tebing tinggi memberikan kesan “tersembunyi”. Oleh karena itu, pantai ini cocok untuk kamu yang ingin bersantai dan menenangkan diri.'),
  Place(
      name: 'Taman Nasional Komodo',
      location: 'Nusa Tenggara Timur',
      imageAsset: 'images/taman-nasional-komodo.png',
      description:
          'Taman Nasional Komodo terletak di daerah administrasi Provinsi Nusa Tenggara Timur \nTaman nasional ini terdiri atas tiga pulau besar Pulau Komodo, Pulau Rinca, dan Pulau Padar serta beberapa pulau kecil lainnya. Wilayah darat taman nasional ini 603 km² dan wilayah total adalah 1817 km². Pada tahun 1980, taman nasional ini didirikan untuk melindungi komodo dan habitatnya. Di taman nasional ini terdapat 277 spesies hewan yang merupakan perpaduan hewan yang berasal dari Asia dan Australia, yang terdiri dari 32 spesies mamalia, 128 spesies burung, dan 37 spesies reptilia. Bersama dengan komodo, setidaknya 25 spesies hewan darat dan burung termasuk hewan yang dilindungi, karena jumlahnya yang terbatas atau terbatasnya penyebaran mereka. Selain itu, di kawasan ini terdapat pula terumbu karang. Setidaknya terdapat 253 spesies karang pembentuk terumbu yang ditemukan di sana, dengan sekitar 1.000 spesies ikan. Keindahan terumbu ini menarik minat wisatawan asing untuk berenang atau menyelam di perairan ini.'),
  Place(
      name: 'Taman Nasional Wakatobi',
      location: 'Jawa Tengah',
      imageAsset: 'images/wakatobi.png',
      description:
          'Taman Nasional Laut Wakatobi di Sulawesi Tenggara yang luas areanya mencapai 1.390.000 ha (ditetapkan berdasarkan SK Menteri Kehutanan Nomor 393/Kpts-V/1996) terkenal di dunia karena kekayaan jenis terumbu karangnya.'),
];
