{ system ? builtins.currentSystem # TODO: Get rid of this system cruft
, iosSdkVersion ? "10.2"
}:
with import ./.obelisk/impl { inherit system iosSdkVersion; };
project ./. ({ hackGet, ... }: {
  packages = {
    echarts-jsdom = hackGet ./echarts-jsdom;
    reflex-dom-echarts = ../.;
  };
})
