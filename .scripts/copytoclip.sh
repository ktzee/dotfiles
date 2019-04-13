MIMETYPE=$(mimetype $1 | awk '{print $(NF-0)}')
echo $MIMETYPE

copyq write $MIMETYPE - < $1 && copyq select 0