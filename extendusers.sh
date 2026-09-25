while IFS=' ' read -r user pass id; do
    mrg update id emailvalidity $user true
    mrg update user demoexp $user 30d
done < $1
