echo "you've inputed:"
echo "$0" "$1"


if [ "$1" = "-u" ];
then
    echo "unmounting Windows drives..."
    sudo umount /media/d
    sudo umount /media/e
    sudo umount /media/f
    echo "unmounting done!"
else
    echo "mounting Windows drives..."
    
    sudo mkdir -p /media/d
    sudo mkdir -p /media/e
    sudo mkdir -p /media/f
 
    echo "mounting D: ----> /media/d"
    sudo mount -t ntfs -o nls=utf8,umask-0222 /dev/sda5 /media/d

    echo "mounting E: ----> /media/e"
    sudo mount -t ntfs -o nls=utf8,umask-0222 /dev/sda6 /media/e
   
    echo "mounting F: ----> /media/f"
    sudo mount -t ntfs -o nls=utf8,umask-0222 /dev/sda7 /media/f

    echo "mounting done!"
fi
