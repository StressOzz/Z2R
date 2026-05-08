# Zapret2 & ZeroВlock Manаger

![Platform](https://img.shields.io/badge/Platform-OpenWrt-orange)
![Architecture](https://img.shields.io/badge/Architecture-aarch64-yellow)
![Script](https://img.shields.io/badge/Script-sh-informational)
![Status](https://img.shields.io/badge/Status-Active-success)
![Community](https://img.shields.io/badge/Community-Enabled-green)
[![Views](https://views.whatilearened.today/views/github/StressOzz/Z2R-Manager.svg)](https://github.com/StressOzz/Z2R-Manager)
![GitHub last commit](https://img.shields.io/github/last-commit/StressOzz/Zapret-Manager)
![Downloads](https://img.shields.io/github/downloads/StressOzz/Zapret-Manager/total)

Скрипт для установки **Zapret2** и **ZeroВlock** от **Routerich**

> [!IMPORTANT]
> ### Только для архитектуры _aarch64_cortex-a53_ !!!

> [!IMPORTANT]
> При возникновении проблем с запуском скрипта или его функций выполните в **SSH** следующую команду:
> ```
> git="githubusercontent.com"; grep -q "raw.$git" /etc/hosts || { printf "#$git\n185.199.109.133 raw.$git release-assets.$git\n185.199.108.133 private-user-images.$git\n" >> /etc/hosts; /etc/init.d/dnsmasq restart 2>/dev/null; }; echo -e "\033[0;32mOK\033[0m"
> ```

---

- Установка ТОЛЬКО для _OpenWRT 24_
```
sh <(wget -O - https://raw.githubusercontent.com/StressOzz/Z2R-Manager/main/Z2R-Manager.sh)
```

- Установка для _OpenWRT 24_ и для _25_ (тест)
```
sh <(wget -O - https://raw.githubusercontent.com/StressOzz/Test/main/Z2R_25O.sh)
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
        <img width="270" height="80" src="https://github.com/user-attachments/assets/7dbb964b-bb79-461a-9f47-9ca73323ebac">
      </a>
    </td>
  </tr>
</table>

---

# Благодарности
- Спасибо [**Routerich**](https://t.me/routerich)
- Спасибо [**Slava-Shchipunov**](https://github.com/Slava-Shchipunov)
