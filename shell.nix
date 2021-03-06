let                                
   pkgs = import (builtins.fetchTarball {                                
      name = "nixos-20.09";                                
      url = "https://github.com/NixOS/nixpkgs/archive/20.09.tar.gz";                                
      sha256 = "1wg61h4gndm3vcprdcg7rc4s1v3jkm5xd7lw8r2f67w502y94gcy";                                
    }) {};                                
  in                                
  pkgs.mkShell {                                
    buildInputs = with pkgs;                                
       [ 
         pkgs.hugo
     ];                                
  }      


