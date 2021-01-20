function zupdate (){
 plugins_path=~/.oh-my-zsh/custom/plugins/;

 if ([[ $1 == 'ls' ]]); then
        echo $(ls $plugins_path);
        return;
 fi

 if ([[ $1 == '' ]]); then
        list=$(ls $plugins_path);

        for plugin in $plugins_path*/;
        do
         result=$(cd $plugin && git pull);
         echo $plugin $result;
        done
        return;
 fi

 result=$(cd $plugins_path/$1 && git pull);
 echo $1 $result;
}
