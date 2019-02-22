a=1

for gambar in /home/insane/Downloads/nature/*.jpg
do

base64 -d $gambar | xxd -r > /home/insane/Downloads/nature/$a.jpg
a=$((a+1))
done
