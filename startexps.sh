while IFS=' ' read -r user pass m; do
    echo $user $pass $m
    mrg login $user -p $pass
    if [ -e $m.model ] ; then 
	mrg deploy model $m.model --xdc xdc.$user -e artifact$m &
    else
	mrg deploy model A.model --xdc xdc.$user -e artifact$m &
    fi
    sleep 60
done < $1
