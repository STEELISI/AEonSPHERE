while IFS=' ' read -r user pass id; do
    mrg login $user -p $pass
    mrg new xdc xdc.$user --type personal
    mrg update xdc expiration xdc.$user 30d
    sleep 10
done < $1

