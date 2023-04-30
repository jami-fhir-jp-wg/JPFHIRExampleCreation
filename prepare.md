# 準備
## fileppの導入
    - Ubuntsuの場合:
        sudo apt-get install filepp
    - MacOSなどの場合(Windowsではfileppはない)：
        https://github.com/timbertson/filepp/archive/refs/heads/master.zip
        をダウンロード（https://github.com/timbertson/filepp　参照）
        解凍フォルダ上で
            (bash,sh) :
                PERL=`which perl`
                export PERL
            (csh) :
                setenv PERL /usr/local/bin/perl
            ./configure
            sudo make install
            (https://github.com/timbertson/filepp　のINSTALLを参照)
            
## UUIDを生成するperlライブラリ(UUID::Tiny)を導入
    - Ubuntsuの場合:
        sudo apt-get install libuuid-tiny-perl
    - MacOSなどの場合：
        sudo perl -MCPAN -e shell
        cpan[1]> install UUID::Tiny 
