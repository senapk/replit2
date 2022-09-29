{ pkgs }: {
  deps = [
    pkgs.wget
    pkgs.python38Full
    pkgs.vim
    pkgs.clang_12
    pkgs.ccls
    pkgs.gdb
    pkgs.gnumake
    pkgs.adoptopenjdk-bin
    pkgs.esbuild
    pkgs.nodejs-16_x
    pkgs.nodePackages.typescript
    pkgs.nodePackages.typescript-language-server
  ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      # Needed for pandas / numpy
      pkgs.stdenv.cc.cc.lib
      pkgs.zlib
      # Needed for pygame
      pkgs.glib
      # Needed for matplotlib
      pkgs.xorg.libX11
    ];
    PYTHONBIN = "${pkgs.python38Full}/bin/python3.8";
    LANG = "en_US.UTF-8";
  };
}
