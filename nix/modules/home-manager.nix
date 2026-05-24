# nix/modules/home-manager.nix — auto-generated from nom.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.nom; in {
  options.programs.nom = {
    enable = lib.mkEnableOption "nom";
    package = lib.mkOption { type = lib.types.package; default = pkgs.nom or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
