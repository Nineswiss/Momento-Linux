sudo apt-get install --no-install-recommends \
    asciidoctor \
    cmake \
    dbus-x11 \
    gettext \
    gir1.2-gtk-3.0 \
    gir1.2-pango-1.0 \
    git \
    libdbus-1-dev \
    libgirepository1.0-dev \
    libnotify-bin \
    libpango1.0-dev \
    libstartup-notification0-dev \
    libx11-xcb-dev \
    libxcb-cursor-dev \
    libxcb-icccm4-dev \
    libxcb-keysyms1-dev \
    libxcb-randr0-dev \
    libxcb-shape0-dev \
    libxcb-util0-dev \
    libxcb-xfixes0-dev \
    libxcb-xinerama0-dev \
    libxcb-xkb-dev \
    libxcb-xrm-dev \
    libxcb-xtest0-dev \
    libxdg-basedir-dev \
    libxkbcommon-dev \
    libxkbcommon-x11-dev \
    xutils-dev \
    liblua5.3-dev \
    lua5.3

luarocks install lgi
luarocks install ldoc