alias verk="cd ~/verk/"
alias sub="sublime_text"
alias dev2fs="sshfs max@dev2.datacratic.com:/home/max/ ~/dev2mount"
alias ag2fs="sshfs max@ag2.datacratic.com:/home/max/ ~/ag2mount"
alias dev="ssh -XA max@dev.datacratic.com"
alias dev2="ssh -XA max@dev2.datacratic.com"
alias jc="javac -d classes *.java"
alias jr="java -cp classes"
alias ag2="ssh -XA max@ag2.datacratic.com"
alias sss="ssh -XA max@207.198.119.21"
alias ssfs="sshfs max@207.198.119.21:/home/max ~/ssmount"
alias ssc="ssh -XA ec2-50-17-0-100.compute-1.amazonaws.com"
alias sscfs="sshfs max@ec2-50-17-0-100.compute-1.amazonaws.com:/home/max ~/sscmount"
alias train_ss="nice makerun experiment_runner sitescout_test campaigns/configFUTURE.json -kj16 evalRoc probabilizers fullStatsTable featInfluence datasetAnalysis vxsim"
alias ssec2="ssh -XA training.sitescout.datacratic.com"
alias ssec2fs="sshfs training.sitescout.datacratic.com:/home/max ~/ssec2mount"
alias vis_train="python ../../tools/feature_graph.py vm_dataset_click.txt.gz vm_dataset_click.txt.gz_featName.gz --interactive"
alias vis_test="python ../../tools/feature_graph.py vm_dataset_test_click.txt.gz vm_dataset_test_click.txt.gz_featName.gz --interactive"
alias sscloud="ssh -XA indexer.bloom.datacratic.com"
alias cloudfs="sshfs indexer.bloom.datacratic.com:/home/max ~/cloudmount"
alias micfs="sshfs machink7@machineintelligencecup.com: temp"
alias dev4="ssh -XA 192.168.168.223"
alias tmux-kill="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}"
alias make_ipython="PYTHONPATH=build/x86_64/bin ~/anaconda/bin/ipython"
alias cloud_tunnel="ssh indexer.bloom.datacratic.com -L 5000:127.0.0.1:8888"
alias gostar="qrsh -now no -V -cwd"
alias ssnode="ssh -XA max@ec2-107-20-23-36.compute-1.amazonaws.com"
alias fsnode="sshfs max@ec2-107-20-23-36.compute-1.amazonaws.com:/home/max ~/nodemount"
alias ssblue="ssh -XA max@bluekai.ec2.datacratic.com"
alias fsblue="sshfs max@bluekai.ec2.datacratic.com: ~/bluemount"