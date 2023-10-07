if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AglBot/Auto-search /Auto-search
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-search
fi
cd /Auto-search
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
