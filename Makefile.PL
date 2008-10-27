# $Id: Makefile.PL,v 1.4 2004/07/04 17:04:17 comdog Exp $
use ExtUtils::MakeMaker;

require 5.008;

eval "use Test::Manifest 1.22";

WriteMakefile(
	'NAME'	       => 'File::Fingerprint',
	'ABSTRACT'     => 'Collect meta data about a file',
	'VERSION_FROM' => 'lib/Fingerprint.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More'   => '0',
		'Test::Output' => '0.12',
		File::MMagic   => '0',
#		File::MimeInfo => '0',
		Digest::CRC    => '0',
		MD5            => '0',		
		},

	'PM'           => {
		'lib/Fingerprint.pm'         => '$(INST_LIBDIR)/Fingerprint.pm',
		},

	'MAN3PODS'     => {
		'lib/Fingerprint.pm' => '$(INST_MAN3DIR)/File::Fingerprint.3',
		},

	clean  => { FILES    => q|File-Fingerprint-*| },

	);
