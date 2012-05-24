#!/usr/bin/perl

# Stack & its operations 

open (D_FILE, ">>output_datastructures.txt");

print D_FILE "Create / Initialize a stack \n\n";

@stack = qw( Integer variables );						# Quote word used to generate a list of words.

print D_FILE "Stack before pushing any value :\n  @stack \n";

push (@stack, "1: Perl was originally named Pearl. \n");

print D_FILE "Stack content after Item is pushed:\n  @stack \n";

$var = "2: Perl is a general-purpose programming language originally developed for text manipulation. \n";

push (@stack, $var);

print D_FILE "Push item on stack:\n  @stack \n";

$top = pop @stack;

print D_FILE "Top of stack, popped:  $top\n";

print D_FILE "What is left of the stack:\n  @stack \n\n";

exit(0);