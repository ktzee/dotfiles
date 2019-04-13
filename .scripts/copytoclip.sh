MIMETYPE=$(mimetype $1 | awk '{print $(NF-0)}')
copyq write $MIMETYPE - < $1 && copyq select 0