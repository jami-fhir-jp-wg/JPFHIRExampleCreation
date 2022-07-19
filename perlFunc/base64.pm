
package Base64Encoding;
# BEGIN { print "---BEGIN---\n"; }

use MIME::Base64 qw/encode_base64 decode_base64/;
use Cwd 'getcwd';
use File::Basename 'basename', 'dirname';

sub encodeFile2Base64{
    my $path = $_[0];       ### このファイルが起動されたディレクトリファイル相対パス
    $file = $_[1];          
    my $binary;
    my $curdir = getcwd;
    $\ = "\n";
#    print "curdir=" . $curdir;
#    print "path=" . $path;
    my $dirname = dirname ( $curdir . "/" . $path) ;
    chdir $dirname  or die "指定ディレクトリがありません $dirname: $!";
    my $filesize = -s $file; 
    open $IN, '<', $file or die qq(ファイル $file がありません。$!);
    
    binmode $IN;
    read $IN, $binary, $filesize;
    close $IN;
    my $base64 = encode_base64($binary, '');
    chdir $curdir  or die "指定ディレクトリに移動できません $curdir: $!";;
    return $base64;
}

sub encodeString2Base64{
    ($mydata) = @_;
    my $base64 = encode_base64($mydata, '');
    return $base64;
}


# END { print "---END---\n"; }
1;