#!/bin/sh

# ==========================================
# ZeroBlock — зависимости
# ==========================================

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m'

clear
echo -e "          ${GREEN}ZeroBlock${NC}"
echo -e "     ${YELLOW}Dependencies Installer${NC}\n"

BASE_URL="https://downloads.openwrt.org/snapshots/packages/aarch64_cortex-a53"
TMP_DIR="/tmp/zb-libs"

PACKAGES="
libubox20260721-2026.07.21~e7608b69-r1.apk|base
libblobmsg-json20260721-2026.07.21~e7608b69-r1.apk|base
libubus20260628-2026.06.28~24864e78-r1.apk|base
libyaml-0.2.5-r2.apk|packages
"

# Проверка apk
if ! command -v apk >/dev/null 2>&1; then
    echo -e "${RED}Ошибка: apk не найден${NC}"
    exit 1
fi

# Проверка архитектуры
ARCH="$(awk -F= '/^DISTRIB_ARCH=/{gsub(/'\''/, "", $2); print $2}' /etc/openwrt_release)"

if [ "$ARCH" != "aarch64_cortex-a53" ]; then
    echo -e "${RED}Ошибка: неподдерживаемая архитектура: ${YELLOW}$ARCH${NC}"
    exit 1
fi

echo -e "${CYAN}Архитектура:${NC} ${GREEN}$ARCH${NC}"

# Создаём временный каталог
rm -rf "$TMP_DIR"
mkdir -p "$TMP_DIR" || {
    echo -e "${RED}Ошибка создания $TMP_DIR${NC}"
    exit 1
}

# Загрузка пакетов
for ITEM in $PACKAGES; do
    FILE="${ITEM%%|*}"
    REPO="${ITEM#*|}"
    URL="$BASE_URL/$REPO/$FILE"

    echo -e "${CYAN}Скачиваем:${NC} ${YELLOW}$FILE${NC}"

    wget -q "$URL" -O "$TMP_DIR/$FILE" || {
        echo -e "${RED}Ошибка загрузки:${NC} $FILE"
        rm -rf "$TMP_DIR"
        exit 1
    }

    [ -s "$TMP_DIR/$FILE" ] || {
        echo -e "${RED}Ошибка: файл пустой:${NC} $FILE"
        rm -rf "$TMP_DIR"
        exit 1
    }

    echo -e "${GREEN}[ OK ]${NC} $FILE"
done

echo
echo -e "${MAGENTA}Устанавливаем зависимости...${NC}"

apk add --allow-untrusted \
    "$TMP_DIR/libubox20260721-2026.07.21~e7608b69-r1.apk" \
    "$TMP_DIR/libblobmsg-json20260721-2026.07.21~e7608b69-r1.apk" \
    "$TMP_DIR/libubus20260628-2026.06.28~24864e78-r1.apk" \
    "$TMP_DIR/libyaml-0.2.5-r2.apk" || {
    echo
    echo -e "${RED}Ошибка установки зависимостей${NC}"
    rm -rf "$TMP_DIR"
    exit 1
}

echo
echo -e "${MAGENTA}Проверяем установленные пакеты...${NC}"

if apk list --installed | grep -q '^libubox20260721-'; then
    echo -e "${GREEN}[ OK ]${NC} libubox20260721"
else
    echo -e "${RED}[FAIL]${NC} libubox20260721"
    exit 1
fi

if apk list --installed | grep -q '^libblobmsg-json20260721-'; then
    echo -e "${GREEN}[ OK ]${NC} libblobmsg-json20260721"
else
    echo -e "${RED}[FAIL]${NC} libblobmsg-json20260721"
    exit 1
fi

if apk list --installed | grep -q '^libubus20260628-'; then
    echo -e "${GREEN}[ OK ]${NC} libubus20260628"
else
    echo -e "${RED}[FAIL]${NC} libubus20260628"
    exit 1
fi

if apk list --installed | grep -q '^libyaml-0.2.5-'; then
    echo -e "${GREEN}[ OK ]${NC} libyaml-0.2.5"
else
    echo -e "${RED}[FAIL]${NC} libyaml-0.2.5"
    exit 1
fi

rm -rf "$TMP_DIR"

echo
echo -e "${GREEN}Все зависимости успешно установлены!${NC}"
