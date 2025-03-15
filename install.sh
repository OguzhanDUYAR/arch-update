#!/bin/bash

# GitHub'dan Arch Linux güncelleme betiğini indirme ve kurma betiği

echo "Arch Linux Update-All Kurulum Betiği"
echo "===================================="

# Bağımlılıkları kontrol et
echo "Bağımlılıklar kontrol ediliyor..."
if ! command -v fish &> /dev/null; then
    echo "Fish shell bulunamadı. Yükleniyor..."
    sudo pacman -S --noconfirm fish
fi

if ! command -v curl &> /dev/null; then
    echo "curl bulunamadı. Yükleniyor..."
    sudo pacman -S --noconfirm curl
fi

# Dizin oluştur
mkdir -p ~/.local/bin

# Betiği indir
echo "Güncelleme betiği indiriliyor..."
curl -o ~/.local/bin/update-all https://raw.githubusercontent.com/OguzhanDUYAR/arch-update/main/update-all-fish

# Çalıştırma iznini ver
chmod +x ~/.local/bin/update-all

# PATH kontrolü 
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "~/.local/bin dizini PATH'e ekleniyor..."
    
    # İlgili shell yapılandırma dosyasını belirle ve güncelle
    if [[ -f ~/.bashrc ]]; then
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
        echo "~/.bashrc dosyası güncellendi."
    fi
    
    if [[ -f ~/.zshrc ]]; then
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
        echo "~/.zshrc dosyası güncellendi."
    fi
    
    if [[ -f ~/.config/fish/config.fish ]]; then
        echo 'set -x PATH $HOME/.local/bin $PATH' >> ~/.config/fish/config.fish
        echo "~/.config/fish/config.fish dosyası güncellendi."
    fi
    
    echo "Lütfen değişikliklerin uygulanması için terminalinizi yeniden başlatın veya kaynak dosyalarını yeniden yükleyin."
fi

# Diğer bağımlılıklar için öneriler
echo ""
echo "Kurulum tamamlandı! update-all komutu artık kullanılabilir."
echo ""
echo "Önerilen ek araçları kurmak ister misiniz? (Reflector, TimeShift, RKHunter, lm_sensors) [E/h]"
read -r install_extras

if [[ $install_extras =~ ^[Ee]$ ]] || [[ -z $install_extras ]]; then
    echo "Ek araçlar yükleniyor..."
    sudo pacman -S --noconfirm reflector timeshift rkhunter lm_sensors
fi

echo ""
echo "Kurulum tamamlandı!"
echo "Arch Linux sistem bakımını başlatmak için 'update-all' komutunu kullanabilirsiniz."
echo ""
echo "Kullanılabilir seçenekler:"
echo "  update-all --help    : Yardım bilgisini görüntüler"
echo "  update-all --full    : Tam sistem bakımı (yedekleme ve güvenlik taraması dahil)"
echo "  update-all --backup  : Sistem yedeklemesi ile güncelleştirme"
echo "  update-all --security: Güvenlik taraması ile güncelleştirme"
echo "  update-all --health  : Sadece sistem sağlık raporunu görüntüle"
echo ""
echo "Daha fazla bilgi için: https://github.com/OguzhanDUYAR/arch-update"
