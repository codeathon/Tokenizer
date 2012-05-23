#!/usr/bin/perl

## Simple Data Structures

# A Stack 

print "Create / Initialize a stack \n\n";

@stack = qw( Integer variables );						# Quote word used to generate a list of words.

print "Stack before pushing any value :\n  @stack \n";

push (@stack, "1: Perl was originally named Pearl. \n");

print "Stack content after Item is pushed:\n  @stack \n";

$var = "2: Perl is a general-purpose programming language originally developed for text manipulation. \n";

push (@stack, $var);

print "Push item on stack:\n  @stack \n";

$top = pop @stack;

print "Top of stack, popped:  $top\n";

print "What is left of the stack:\n  @stack \n\n";

exit(0);