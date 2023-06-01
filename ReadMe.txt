This repo started life as the cvsroot/modeling/mdt/ocl sub-tree for Eclipse.org www support.

When CVS was superseded by GIT, the unified CVS repo acquired three overlapping identities:
	www.eclipse.org/modeling.git
	www.eclipse.org/modeling/mdt.git
	www.eclipse.org/modeling/mdt/ocl.git
with www.eclipse.org/modeling.git inaccessible to MDT, OCL committers and since www.eclipse.org/modeling/mdt.git contained some relevant filrs such as
extras.ocl and content such as hidden.txt, www.eclipse.org/modeling/mdt/ocl.git was never used.

With the migration to GitHub and the bit rot of the PHP support, the mdt-website at git@github.com:eclipse-mdt/mdt-website.git is deprecated and
the ocl-website at git@github.com:eclipse-ocl/ocl-website.git takes over.