if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/filmotainment/yoonseri.git /yoonseri
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /yoonseri
fi
cd /yoonseri
pip3 install -U -r requirements.txt
echo "Starting YoonSeriBot...."
python3 bot.py
