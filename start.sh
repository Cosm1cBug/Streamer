echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Cosmic-Bug/Streamer /Streamer
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Cosmic-Bug/Streamer -b $BRANCH /Streamer
fi
cd /Streamer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
