while IFS=' ' read -r user pass m a; do
    #echo $user $pass $m $a
    echo "mrg login $user -p $pass"
    echo "mrg xdc ssh -x xdc.$user node"    
done < $1
