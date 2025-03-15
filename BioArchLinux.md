# BioArchLinux Biyoinformatik Kurulum Rehberi

## GPG Anahtar Kurulumu

### 1. Root Yetkisiyle GPG Anahtarı Kurulumu
```bash
# Anahtarı al
sudo pacman-key --recv-keys B1F96021DB62254D

# Anahtar parmak izini kontrol et
sudo pacman-key --finger B1F96021DB62254D

# Anahtarı yerel olarak imzala
sudo pacman-key --lsign-key B1F96021DB62254D
```

### 2. Alternatif Sunucu Kullanımı
```bash
# Ubuntu sunucusu üzerinden
sudo pacman-key --keyserver keyserver.ubuntu.com --recv-keys B1F96021DB62254D

# veya GnuPG sunucusu üzerinden
sudo pacman-key --keyserver keys.gnupg.net --recv-keys B1F96021DB62254D
```

## BioArchLinux Deposu Ekleme
`/etc/pacman.conf` dosyasına ekleyin:
```bash
[bioarchlinux]
Server = https://repo.bioarchlinux.org/$arch
```

## Temel Biyoinformatik Yazılımları

### Dizi Hizalama ve Analiz
```bash
sudo pacman -S clustalw mafft muscle blast+ bowtie2 bwa samtools bcftools
```

### Filogenetik Analiz
```bash
sudo pacman -S mega mrbayes raxml beast2 iqtree
```

### RNA Analizi
```bash
sudo pacman -S hisat2 stringtie salmon kallisto trinity
```

### Görselleştirme Araçları
```bash
sudo pacman -S igv jalview ugene pymol
```

### Veri İşleme ve İstatistik
```bash
sudo pacman -S R rstudio-desktop
sudo pacman -S bioconductor-deseq2 bioconductor-edger
```

### Genomik Analiz
```bash
sudo pacman -S bedtools vcftools gatk picard-tools fastqc trimmomatic
```

### Proteomik
```bash
sudo pacman -S openbabel autodock-vina
```

### Genel Araçlar
```bash
sudo pacman -S seqkit emboss primer3 sra-tools
```

### Toplu Kurulum
```bash
sudo pacman -S clustalw mafft muscle blast+ bowtie2 bwa samtools bcftools mega mrbayes raxml hisat2 stringtie salmon kallisto igv jalview R bedtools vcftools fastqc trimmomatic seqkit emboss primer3 sra-tools
```

### Python Biyoinformatik Paketleri
```bash
pip install biopython pandas numpy scipy matplotlib seaborn scikit-learn
```

## Sorun Giderme

### GPG Anahtar Hatası Durumunda
```bash
# Anahtarları temizle ve yeniden başlat
sudo rm -rf /etc/pacman.d/gnupg/*
sudo pacman-key --init
sudo pacman-key --populate archlinux

# BioArchLinux anahtarını ekle
sudo pacman-key --recv-keys 73CAE17F0E5136DC
sudo pacman-key --lsign-key 73CAE17F0E5136DC

# Paket önbelleğini temizle
sudo pacman -Scc

# Sistemi güncelle
sudo pacman -Syy
```

---
**Not:** Bu rehber sürekli güncellenmektedir. Katkıda bulunmak için pull request gönderebilirsiniz.
