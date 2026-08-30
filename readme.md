# Zapret2 & ZeroВlock Manаger

![Platform](https://img.shields.io/badge/Platform-OpenWrt-orange)
![Architecture](https://img.shields.io/badge/Architecture-aarch64-yellow)
![Script](https://img.shields.io/badge/Script-sh-informational)
[![Views](https://views.whatilearened.today/views/github/StressOzz/Z2R-Manager.svg)](https://github.com/StressOzz/Z2R-Manager)

<p align="center">
  <a href="https://t.me/stressozz_manager">💬 Telegram Community</a>
</p>


Скрипт для установки **Zapret2** и **ZeroВlock** от **Routerich**

---

### **StressKVN** - умный VPN для стабильного доступа в любых условиях

- ✅ Работает даже при жёсткой фильтрации и в условиях белых списков
- 🌍 Умная маршрутизация: иностранные ресурсы через VPN, российский трафик напрямую
- ▶️ YouTube без рекламы
- ⚡ Высокая скорость и безлимитный трафик
- 📶 Можно использовать прямо на роутере
- 🎁 Бесплатный тест — 3 дня без оплаты

Подробнее: **https://github.com/StressOzz/StressKVN**

---

> [!IMPORTANT]
> ### Только для архитектуры _aarch64_cortex-a53_ !!!

> [!IMPORTANT]
> При возникновении проблем с запуском скрипта или его функций выполните в **SSH** следующую команду:
> ```
> git="githubusercontent.com"; grep -q "raw.$git" /etc/hosts || { printf "#$git\n185.199.109.133 raw.$git release-assets.$git\n185.199.108.133 private-user-images.$git\n" >> /etc/hosts; /etc/init.d/dnsmasq restart 2>/dev/null; }; echo -e "\033[0;32mOK\033[0m"
> ```

---

- Установка для _OpenWRT_ версии _24_ и  _25_
```
sh <(wget -O - https://raw.githubusercontent.com/StressOzz/Z2R-Manager/main/Z2R-Manager-24-25.sh)
```

- Установка ТОЛЬКО для _OpenWRT 24_
```
sh <(wget -O - https://raw.githubusercontent.com/StressOzz/Z2R-Manager/main/Z2R-Manager.sh)
```


-  Интегрировать **VPN** подписку в **Zeroblock**

   Вставьте ссылку на свою подписку.
   Можете воспользоваться [**StressKVN**](https://github.com/StressOzz/StressKVN)

---

<table>
  <tr>
    <td>
      <a href="https://github.com/StressOzz#-поддержать-проект">
        <img width="280" height="130" src="https://github.com/user-attachments/assets/2999757b-fbf3-4149-bf6c-48bf3e241529">
      </a>
    </td>
    <td>
      <a href="https://github.com/StressOzz/StressKVN">
        <img width="280" height="130" alt="image" src="https://github.com/user-attachments/assets/519a126e-bd39-4f46-8a09-3f0d6e1dd8af">
      </a>
    </td>
  </tr>
</table>

---

# Благодарности
- Спасибо [**Routerich**](https://t.me/routerich)
- Спасибо [**Slava-Shchipunov**](https://github.com/Slava-Shchipunov)
