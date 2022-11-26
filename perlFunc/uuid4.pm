
package UUIDV4generator;
# BEGIN { print "---BEGIN---\n"; }

use UUID::Tiny  ':std';

sub genUUID4{
    my $v4_rand_UUID       = uuid_to_string(create_uuid(UUID_V4));
    my $headstr = 'urn:uuid:' ;
    return $headstr . $v4_rand_UUID;
}


# END { print "---END---\n"; }
1;