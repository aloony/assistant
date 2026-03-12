{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  # https://devenv.sh/packages/
  packages = with pkgs; [
    portaudio
  ];

  dotenv.enable = true;

  languages.python = {
    enable = true;
    uv.enable = true;
    venv.enable = true;
    venv.requirements = builtins.readFile ./requirements.txt;
  };
}
