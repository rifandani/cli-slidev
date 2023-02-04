---
theme: seriph
title: Sharing Session
titleTemplate: '%s - CLI'
info: |
  ## Sharing Session

  Date: Friday, 10 February 2023

  Topics: Command Line Interface (CLI)

  - [Source code](https://github.com/rifandani/cli-slidev)
presenter: 'dev'
download: true
exportFilename: 'sharing-session-cli'
highlighter: shiki
lineNumbers: true
background: https://source.unsplash.com/collection/94734566/1920x1080
class: text-center
transition: fade-out
css: unocss
drawings:
  persist: false
---

# Sharing Session

Command Line Interface (CLI)

<!--
Sore semuanya.
Pada kesempatan sharing session kali ini, kita akan membahas tentang CLI ya.
BTW, kalau ada yang mau ngeliat langsung slide nya seperti apa, bisa diakses di ...

Kalo mau navigasi slide nya bisa pake keyboard atas bawah kiri kanan.
Atau lebih lengkapnya bisa dicoba di hover mouse nya ke arah kiri bawah biar bisa diotak-atik slide nya.
-->

---
transition: slide-left
---

<h1>Table of Contents</h1>

<Toc :style="{ columnCount: 2, columnGap: '10rem', height: '100%' }" />

<!--
Sebelum masuk ke materi utama ada baiknya kita tau isi dari materi pembahasan kita untuk hari ini.
Untuk isi materi bisa kita liat di table of contents:
-->

---
transition: slide-left
---

# Introduction

Setiap *Operating System (OS)* pada dasarnya adalah antarmuka yang hadir antara *user* dan *hardware*.

Beberapa OS (khususnya Linux distributions) hanya menyediakan *Command Line Interface (CLI)* kepada penggunanya, sementara beberapa menawarkan CLI dan *Graphical User Interface (GUI)*.

Dengan kata lain, *user* dapat berinteraksi dengan *widget/menu* saat menggunakan GUI tetapi harus memasukkan *command* tertentu untuk melakukan tugas tertentu menggunakan CLI.

Secara garis besar, GUI relatif lebih mudah penggunaannya dibandingkan dengan CLI, tetapi kecepatan eksekusi jauh lebih tinggi dalam kasus CLI.

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }
</style>

<!--
.....
-->

---
transition: slide-up
---

# What is CLI

CLI pada dasarnya adalah media, di mana pengguna menulis perintah untuk menjawab *text prompt* dan kemudian menerima respons dari sistem/perangkat.

```bash {all|1|2-3|4|5|6|7|8|all}
$ npm init
This utility will walk you through creating a package.json file.
package name: ...
$ cli-slide
version: ...
$ 1.0.0
Is this OK?: ...
$ yes
```

CLI lebih cocok digunakan untuk perintah/komputasi yang spesifik *(e.g. programming)* dan rumit *(e.g. maintenance remote server)*.

```bash {all|1|2-3|all}
$ node --trace-gc app.js
[19278:0x5408db0]  44 ms: Scavenge 2.3 (3.0) -> 1.9 (4.0) MB, 1.2 / 0.0 ms  (average mu = 1.000, current mu = 1.000) allocation failure
[23521:0x10268b000]  120 ms: Mark-sweep 100.7 (122.7) -> 100.6 (122.7) MB, 0.15 / 0.0 ms  (average mu = 0.132, current mu = 0.137) deserialize GC in old space requested
```

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }
</style>

<!--
.....
-->

---
transition: slide-up
preload: false
---

# What is GUI

GUI memungkinkan pengguna menggunakan grafik untuk berinteraksi dengan OS/sistem.

Dalam GUI, pengguna mendapatkan berbagai *widget/menu* untuk mempermudah penggunaan/interaksinya, seperti *button*, *table*, *tabs*, *carousel*, *scrollbar*, dll.

Informasi yang diakses pengguna melalui GUI akan ditampilkan dalam bentuk gambar, teks, video, gif, chart, dll sehingga sangat intuitif dan mudah digunakan, bahkan untuk pemula.

<img
  v-click
  class="h-70 shadow rounded"
  src="/gitlab.png"
/>

<arrow v-click x1="250" y1="420" x2="150" y2="330" color="#0052CC" width="3" arrowSize="1" />
<arrow v-click x1="650" y1="450" x2="650" y2="280" color="#0052CC" width="3" arrowSize="1" />

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }
</style>

<!--
Contoh misalnya di Gitlab GUI disini kita bisa akses Merge Request (MR), issues, CI/CD, settings, dll lewat sidebar atau topbar.
-->

---
transition: slide-left
---

# CLI vs GUI

| **Parameter** | **CLI** | **GUI** |
| --- | --- | --- |
| UI/UX Friendly | <mdi-star class="text-yellow-400" /> | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> |
| Ease of Use | <mdi-star class="text-yellow-400" /> | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> |
| Modification of Appearance | <mdi-star class="text-yellow-400" /> | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> |
| Graphics / Menus / Charts | <mdi-star class="text-yellow-400" /> | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> |
| Speed | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> |
| Flexibility & Precision | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> | <mdi-star class="text-yellow-400" /> <mdi-star class="text-yellow-400" /> |
| Access | <mdi-keyboard class="text-yellow-400" /> | <mdi-keyboard class="text-yellow-400" /> <mdi-mouse class="text-yellow-400" /> |
| Memory Consumption | <mdi-thermometer-low class="text-green-400" /> | <mdi-thermometer-high class="text-red-400" /> |

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }
</style>

<!--
GUI memungkinkan user berinteraksi dengan perangkat/sistem dengan bantuan elemen grafis, misalnya kayak window, menu, icon, dll.
CLI, di sisi lain, memungkinkan user berinteraksi dengan perangkat/sistem mereka dengan bantuan berbagai command dalam bentuk teks.
-->

---
transition: slide-left
---

# CLI Conventions

Ketika membuat program CLI, ada baiknya kita mengikuti *standard guidelines*, *principles*, *design philosophy* dan *best practices*.

Kita tidak perlu *reinvent the wheel* untuk membuat *crowd-pleasing experience*. Sudah ada banyak *conventions* dan *guidelines* yang dapat kita ikuti ketika kita ingin membuat program CLI yang baik dan benar.

Dengan mengikuti *conventions* yang sudah ada dan yang sudah dikenal oleh banyak developers, harapannya kita bisa membuat program yang dapat dengan mudah diadopsi/dipakai oleh banyak kalangan developer *(developer-friendly)*.

<div v-click>

- [POSIX Conventions](https://www.gnu.org/software/libc/manual/html_node/Argument-Syntax.html)
- [Heroku CLI Style Guide](https://devcenter.heroku.com/articles/cli-style-guide)
- [Microsoft Style Guide](https://learn.microsoft.com/en-us/style-guide/welcome/)
- [Google Document CLI Syntax](https://developers.google.com/style/code-syntax)
- [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html)

</div>

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }
</style>

<!--
Ini contoh-contoh standard guidelines yang dimiliki oleh perusahaan besar, sperti heroku, google, dan microsoft.
-->

---
transition: slide-up
---

# CLI Philosophy

Dari semua *conventions* yang telah disebutkan sebelumnya, banyak yang mengikuti *common design principles / philosophy* seperti:

<div v-click>

## *1st Philosophy: Human-first design*

Secara tradisional, perintah UNIX ditulis dengan asumsi mereka akan digunakan oleh program lain. Mereka memiliki lebih banyak kesamaan dengan fungsi dalam bahasa pemrograman daripada dengan aplikasi grafis.

Saat ini, meskipun banyak program CLI digunakan terutama (atau bahkan secara eksklusif) oleh manusia, banyak desain interaksinya masih membawa beban masa lalu dimana CLI masa lalu itu masih berorientasi *machine-first*.

Jika sebuah perintah akan digunakan terutama oleh manusia, perintah itu harus dirancang untuk manusia terlebih dahulu.

</div>

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }

  h2 {
    color: lightskyblue
  }
</style>

---
transition: slide-up
---

## *2nd Philosophy: Simple parts that work together*

Prinsip inti dari [original UNIX philosophy](https://en.wikipedia.org/wiki/Unix_philosophy) adalah gagasan bahwa program kecil dan sederhana dengan *clean interfaces* dapat digabungkan untuk membangun sistem yang lebih besar.

Daripada memasukkan lebih banyak fitur ke dalam program tersebut, kita membuat program yang modular untuk digabungkan kembali sesuai kebutuhan.

Di masa lalu, *pipes* dan *shell script* memainkan peran penting dalam proses *composing* program. Peran mereka mungkin telah berkurang dengan munculnya *general-purpose interpreted languages*. Selain itu, otomatisasi skala besar—dalam bentuk CI/CD, *orchestrations*, dan *configuration management* telah berkembang. Sampai sekarang pun membuat program yang *composable* itu sangat penting.

Untungnya, *conventions* dari *UNIX environment* yang sudah lama ada, masih membantu kita sampai hari ini. *Standard in/out/err, signals, exit codes*, dan mekanisme lainnya memastikan bahwa program yang berbeda bekerja sama dengan baik. *JSON (Javascript Object Notations)*, penemuan yang jauh lebih baru, memberikan kita fleksibiltas untuk mengatur struktur data, dan memungkinkan kita mengintegrasikan *command line tools* dengan web menjadi lebih mudah.

Software apapun yang kita buat, kita harus tau bahwa orang lain dapat menggunakannya dengan cara yang tidak kita duga-duga dan software kita akan menjadi bagian dalam sistem yang lebih besar.

<style>
  h2 {
    color: lightskyblue
  }
</style>

---
transition: slide-up
---

## *3rd Philosophy: Consistency across programs*

*The terminal’s conventions are hardwired into our fingers.*

Yang berarti kita harus siap mempelajari hal baru tentang *command line syntax, flags, environment variables*, dan sebagainya, tetapi itu semua akan terbayar dalam efisiensi jangka panjang… selama program tersebut konsisten.

Jika memungkinkan, CLI harus mengikuti *conventions* yang sudah ada. Itulah yang membuat CLI intuitif dan *predictable*.

Meskipun demikian, terkadang konsistensi bertentangan dengan kemudahan penggunaan. Misalnya, banyak perintah UNIX yang sudah lama tidak menghasilkan banyak output informasi secara default, yang dapat menyebabkan kebingungan bagi orang yang kurang terbiasa dengan *command line*.

Ketika mengikuti *conventions* akan membahayakan *usability* program, mungkin sudah waktunya untuk menghentikannya — tetapi keputusan seperti itu harus dibuat dengan hati-hati.

<style>
  h2 {
    color: lightskyblue
  }
</style>

---
transition: slide-left
layout: image-right
image: https://source.unsplash.com/collection/94734566/1920x1080
---

# More on Philosophy

Sebenarnya masih ada banyak lagi *philosophy of good CLI design*, seperti: [^1]

- *Ease of Discovery*
- *Conversation as a Norm*
- *Robustness*
- *Empathy*
- *Chaos*

[^1]: [Learn More CLI Philosophy](https://clig.dev/#philosophy)

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }

  .footnotes-sep {
    @apply mt-20 opacity-10;
  }
  .footnotes {
    @apply text-sm opacity-75;
  }
  .footnote-backref {
    display: none;
  }
</style>

<!--
Cuma untuk menghemat waktu, jadi disini kutaro aja link referensinya disini ya
biar kalo ada yang mau liat detail lengkapnya bisa diklik aja itu linknya
-->

---
transition: slide-up
---

# CLI Guidelines

Ada beberapa aturan dasar yang perlu kita ikuti. Lakukan kesalahan ini, program kita akan menjadi sulit untuk digunakan, atau lebih parah lagi rusak total.

## *1st Guide: The Basics*

Sebisa mungkin gunakan *command-line argument parsing library*. *Library* ini biasanya akan menangani *arguments, flag parsing, help text*, dan bahkan *spelling suggestions* atau *auto completion*. Contohnya:

<div v-click>

1. Multi-platform: [docopt](http://docopt.org/)
2. Bash: [argbash](https://argbash.io/)
3. Go: [Cobra](https://github.com/spf13/cobra), [cli](https://github.com/urfave/cli)
4. Java: [picocli](https://picocli.info/)
5. Node: [oclif](https://oclif.io/)
6. Deno: [flags](https://deno.land/std/flags)
8. Python: [argparse](https://docs.python.org/3/library/argparse.html), [Click](https://click.palletsprojects.com/), [Typer](https://github.com/tiangolo/typer)

</div>

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }

  h2 {
    color: lightskyblue
  }
</style>

---
transition: slide-up
lineNumbers: true
---

## *2nd Guide: Help*

Menampilkan *help text* ketika *di-passing options*, `-h` flag, atau `--help` flag.

```bash {all|1|2-22|all}
$ nregen component --help
Usage: nregen component|c [options] <name...>

Creates a new, generic component definition in the given or default project.

Arguments:
  name                       list of component name to be generated

Options:
  -p, --path <path>          The path where the component will be generated (default: "src/components")
  -t, --type <type>          The "component" key/type that you have configured in your config file (default: "default")
  -d, --describe <describe>  The description of the component you want to generate (e.g. Create a counter component that increments
                             by one when I click on the increment button)
  --usesTwinMacro            Generate the component using Twin Macro (default: true)
  -f, --flat                 Generate the files in the mentioned path insted of creating new folder for it
  -dr, --dry-run             Show what will be generated without writing to disk
  -D, --debug                Output extra debugging data
  --withStyle <withStyle>    With corresponding Style file. (default: "none")
  --withTest <withTest>      With corresponding Test file. (default: true)
  --withStory <withStory>    With corresponding Story file. (default: false)
  --withLazy <withLazy>      With corresponding Lazy file. (default: false)
  -h, --help                 display help for command
```

<style>
  h2 {
    color: lightskyblue
  }
</style>

<!--
dijelaskan gimana cara baca *help text* nya
-->

---
transition: slide-up
lineNumbers: true
---

## *3rd Guide: Arguments and Flags*

Utamakan `flags` daripada `args`.

Mungkin user akan jadi lebih banyak *typing* nya, tapi ini akan membuat *command/perintah* menjadi lebih *clear* apa yang dilakukan. Selain itu, `flags` juga akan membuat program lebih mudah untuk *di-refactor* di masa depannya.

```bash {all|1|2-6|all}
$ nregen component Button Checkbox -p src/components/atoms --usesTwinMacro
✔ "Button.tsx" was successfully created at "src/components/atoms/Button/Button.tsx"
✔ "Button.test.tsx" was successfully created at "src/components/atoms/Button/Button.test.tsx"

✔ "Checkbox.tsx" was successfully created at "src/components/atoms/Checkbox/Checkbox.tsx"
✔ "Checkbox.test.tsx" was successfully created at "src/components/atoms/Checkbox/Checkbox.test.tsx"
```

<style>
  h2 {
    color: lightskyblue
  }
</style>

<!--
contohnya disini path dari generated component nya kita passing lewat `flag` `-p` atau `--path` instead of passing nya lewat arguments
karena arguments nya lebih cocok dipakai sebagai list nama component yang mau dibuat
contoh nya kita passing `Button` & `Checkbox`, atau passing `Button` doang juga bisa, atau lebih dari 2 juga bisa

argument yang bisa dipassing banyak input ini biasanya disebut variadic arguments
kalau di programming biasanya ada di function namanya variadic function, dimana input parameter function nya ga terbatas / bisa sebanyak2nya
-->

---
transition: slide-left
layout: image-right
image: https://source.unsplash.com/collection/94734566/1920x1080
---
# More on Guidelines

Sebenarnya masih ada banyak lagi *CLI guidelines* yang bisa kita ikuti, seperti: [^1]

- *Output*
- *Errors*
- *Interactivity*
- *Subcommands*
- *Future-proofing*
- *Signals*
- *Configuration*
- *Environment variables*

[^1]: [Learn More CLI Guidelines](https://clig.dev/#guidelines)

<style>
  h1 {
    background-color: #0052CC;
    background-image: linear-gradient(45deg, #0052CC 10%, #FC00FF 20%);
    background-size: 100%;
    -webkit-background-clip: text;
    -moz-background-clip: text;
    -webkit-text-fill-color: transparent;
    -moz-text-fill-color: transparent;
  }

  .footnotes-sep {
    @apply mt-20 opacity-10;
  }
  .footnotes {
    @apply text-sm opacity-75;
  }
  .footnote-backref {
    display: none;
  }
</style>

<!--
Untuk link referensinya bisa diakses di footnote nya
biar kalo ada yang mau liat detail lengkapnya bisa langsung diklik aja.
-->

---
transition: slide-left
layout: cover
background: https://source.unsplash.com/collection/94734566/1920x1080
---

# Let's build one

Using Git Bash

<style>
  h1 {
    color: white;
  }
</style>

<!--
Biar kita bisa lebih paham gimana cara kerjanya,
Kita lanjut coba buat simple CLI program pake Git Bash

*buka `demo` folder*
-->

---
transition: slide-left
layout: cover
background: https://source.unsplash.com/collection/94734566/1920x1080
---

# Use-case

Published javascript library in Gitlab Private Registry

<style>
  h1 {
    color: white;
  }
</style>

<!--
Selanjutnya kita juga ada use-case program CLI dibuat khusus untuk tim frontend.
source code nya ada di Gitlab dan sudah di published juga di Gitlab Private Registry

*buka project `library/cli`*
jadi disini aku sudah install package nya globally, jadi bisa langsung dipake aja
-->

<!--

-->

---
layout: center
class: text-center
---

# Thank You 🙏

<div class="abs-br m-6 flex gap-2">
  <a href="https://cli-slidev.vercel.app" target="_blank" alt="GitHub"
    class="text-xl icon-btn !border-none !hover:text-white">
    <mdi-globe />
  </a>
  <a href="https://github.com/rifandani/cli-slidev" target="_blank" alt="GitHub"
    class="text-xl icon-btn !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<style>
  h1 {
    color: white;
  }
</style>