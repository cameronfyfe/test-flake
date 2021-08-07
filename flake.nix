{
  description = "test";

  outputs = { self }: {

    builders.gtest = { pkgs }:
      pkgs.runCommand "abc" {} ''
        mkdir $out
        echo "ABC" > $out/abc.txt
      '';
  };
}
