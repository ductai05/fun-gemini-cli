{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
    pkgs.gemini-cli
  ];

  # Tải GEMINI API Key khi vào shell
  shellHook = ''
    echo "Using gemini-cli with nix-shell."
    if [ -f gemini_api_key ]; then
      export GEMINI_API_KEY=$(cat gemini_api_key)
      echo ""
      echo "Gemini API key loaded."
      echo "Please run: gemini -m gemini-2.5-flash"
    else
      echo "Gemini API key file not found."
      echo "Please create it by running: echo \"YOUR_API_KEY_HERE\" > gemini_api_key"
    fi
  '';
}
