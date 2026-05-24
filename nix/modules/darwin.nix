# nix/modules/darwin.nix — auto-generated from nom.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.nom; in {
  options.services.nom = {
    enable = lib.mkEnableOption "nom";
    package = lib.mkOption { type = lib.types.package; default = pkgs.nom or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
