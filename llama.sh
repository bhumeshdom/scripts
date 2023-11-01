# install git
sudo apt install git-all

# clone koboldcpp repo
git clone https://github.com/LostRuins/koboldcpp.git

# download model
wget https://huggingface.co/TheBloke/CodeLlama-34B-Instruct-GGUF/resolve/main/codellama-34b-instruct.Q6_K.gguf

# move model to folder
mv codellama-34b-instruct.Q6_K.gguf koboldcpp/codellama-34b-instruct.Q6_K.gguf

# install make
sudo apt-get -y install build-essential


# build the project
make


# install lsof
sudo apt-get install lsof

# kill any existing process on port 80
sudo kill -9 $(sudo lsof -t -i:80)

# run the model on port 80
sudo ./koboldcpp.py codellama-34b-instruct.Q6_K.gguf 80
