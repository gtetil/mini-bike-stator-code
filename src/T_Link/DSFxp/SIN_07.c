/******************************************************************************
*
* FILE:
*   SIN_07.c         2002/11/19
*
*  Copyright (c) 2000 dSPACE GmbH, GERMANY
*
*  $Workfile: SIN_07.c $ $Revision: 3 $ $Date: 28.10.03 14:34 $ $Author: Dagmara $
******************************************************************************/

#include "dsfxp.h"

/******************************************************************************
*
* FUNCTION:
*   F__I32SINI32_LE7(v)
*
* DESCRIPTION:
*   Calculates sine using series approach. Last term is x^7/7! 
*
* PARAMETERS:
*   Int32   v      input value
*
* RETURNS:
*
* NOTE:
*
*
******************************************************************************/
Int32 F__I32SINI32_LE7(Int32 v)
{
    Int16 n;

	v += 0x20000000;
	n = (Int16)(v >> 30);
	n &= 0x03;
    v &= 0x3fffffff;
	v -= 0x20000000;	
	 
	switch(n)
	{
	    case 0: return F__I32SINI32_4TERMS(v);
		case 1: return F__I32COSI32_4TERMS(v);
		case 2: return -F__I32SINI32_4TERMS(v);
		case 3: return -F__I32COSI32_4TERMS(v);
	}
	return 0;
}
/* END F__I32SINI32_LE7() */
