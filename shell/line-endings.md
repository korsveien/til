To check for line endings in a file:

``cat -E file.txt``

this will display line endings as ``$``

You could also use ``xxd`` in order to dump the file in hex and look for ``0a`` (LF) and ``0d`` (CR)

``xxd infile.txt outfile.txt``

or in vim:

``:%!xxd``
