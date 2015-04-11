#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <main.h>

#include "const-c.inc"

MODULE = Main		PACKAGE = Main		

INCLUDE: const-xs.inc
