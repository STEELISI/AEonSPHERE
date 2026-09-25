while IFS=' ' read -r user pass m; do
    mrg login $user -p $pass
    mrg show xdc xdc.$user
    mrg update realization expiration real.artifact$m.$user 30d
done < $1


