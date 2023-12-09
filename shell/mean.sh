# !/bin/bash

function get_mean(){
    ans=0
    n=$#
    echo "the mean of "$*":"

    # while + "space" + [ condition ]
    # that space was so fucking annoying
    while [ $# != 0 ] 
    do
        ans=$(($ans+$1))
        shift
    done

        ans=$(($ans/n))
        echo $ans
}
get_mean 1 6 10 32