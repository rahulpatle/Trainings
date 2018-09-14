Shell Scripting

1)  Every time we use terminal means we are interacting with shell
2)  The kernel is a computer program that is the core of a computer’s
    operating system, with complete control over everything in
    the system.
3)  A shell is special user program which provide an interface to user
    to use operating system services
4)  Shell accept human readable commands from user and convert them into
    something which kernel can understand.
5)  he shell gets started when the user logs in or start the terminal.

Commandline and Graphical Shell

1)  Commandline allows user to store commands in a file and execute
    them together. This way any repetitive task can be easily automated.
    These files are usually called ****batch files ****in Windows and
    ****Shell ****Scripts in Linux/macOS systems.

2)  There are several shells are available for Linux systems like –

-   -    [BASH (Bourne
        Again Shell)](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) –
        It is most widely used shell in Linux systems. It is used as
        default login shell in Linux systems and in macOS. It can also
        be installed on Windows OS.
    -    [CSH (C Shell)](https://en.wikipedia.org/wiki/C_shell) The C
        shell’s syntax and usage are very similar to the C
        programming language.
    -    [KSH (Korn Shell)](https://en.wikipedia.org/wiki/Korn_shell) -
        The Korn Shell also was the base for the POSIX Shell standard
        specifications etc.

        Each shell does the same job but understand different commands
        and provide different built in functions.

Commands :

1)  Sometimes if we not have permission to execute Shell Script then

We have to make it executable by typing following command –

\$ chmod -x path/to/our/file/jump.sh

Learnings :

Commands:

1\) while loop

while \[ "\$name" != "bye" \]

do

echo Enter you text

read name

echo "You have entered: \$name"

done

while read f

do

 case \$f in a) echo a ;;

 b) echo b ;;

 f) echo d ;;

 esac

done &lt; x.txt

2\) Variables and if condition

name=rahul

if \[ \$name = "rahul" \]

then

echo bye

fi

3\) Counting words and character from a file

char=\`wc -m x.txt\`

word=\`wc -w x.txt\`

echo \$word

echo \$char

echo \$NO\_LINES


