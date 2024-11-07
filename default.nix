{
  stdenv,
  cmake,
  extra-cmake-modules,
  pkg-config,
  gettext,
  zstd,
  fcitx5,
  librime,
}:
stdenv.mkDerivation {
  pname = "fcitx5-rime";
  version = "dev";
  src = ./.;
  cmakeFlags = [
    "-DRIME_DATA_DIR=${placeholder "out"}/share/rime-data"
  ];
  buildInputs = [
    fcitx5
    librime
  ];
  nativeBuildInputs = [
    cmake
    extra-cmake-modules
    pkg-config
    gettext
    zstd
  ];
}
