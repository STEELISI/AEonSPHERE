while IFS=' ' read -r user pass m; do
    echo $user $pass $m
    mrg login $user -p $pass
    mrg deploy model GPU.model --xdc xdc.$user -e artifact$m -p gpumlusers &
    sleep 60
done < $1
