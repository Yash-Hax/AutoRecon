#! /bin/bash

welcome=$(whoami)

if [ $welcome == root ] ;
  then
    echo "                                Welcome To Heaven"
    echo "                            Script Wrriten By Yash Hax"
    echo "                            https://github.com/yash-hax"
    echo "                             https://twitter/yash-hax"   

else 
  echo "                                Kindly root this device"
  echo "           If you getting any kind of trouble then please get in touch with yash"
  echo "                            https://github.com/yash-hax"
  echo "                             https://twitter/yash-hax"    

fi
    
if [ $welcome == root ] ;
  then read -p "Do you want to do domain enumaration yes/no ? " ASK
    
    if [ $ASK == yes ];
      then
        read -p "website ? " website
        echo $website
    elif [ $ASK == no ];
      then
        read -p "What kind of service do you want ? " service
        echo $service
        
    else
      echo "                               ABORT 'WRONG INPUT'"
    fi
    
     if [ $ASK == yes ];
       then 
        echo | subfinder -d $website |  httpx -status-code -o subdomains.txt
        echo | nmap -sV -sS $website -oS nmap.txt
        echo | dirsearch -u $website -o dir.txt
        echo  "                     Github Dorking

                           '$website' password
               '$website' password_credentials
               '$website' secret
               '$website' credentials
               '$website' token
               '$website' api
               '$website' config
               '$website' key
               '$website' pass
               '$website' private
               '$website' login
               '$website' ftp
               '$website' pwd
               '$website' ajira
               '$website' security_credentials
               '$website' connectionstring
               '$website' JDBC
               '$website' ssh2_auth_password
               '$website' send_keys
               '$website' send
               '$website' keys
               '$website' ldap
               '$website' docker
               '$website' db_host
               '$website' db_user
               '$website' db_password
               '$website' passwd
               '$website' smtp
               '$website' vsphere_password
               '$website' vsphere
               '$website' dbpassword
               '$website' dbuser
               '$website' access_key
               '$website' aws
               '$website' sftp
               '$website' proxy
               '$website' vpn
               '$website' internal
               '$website' siem
               '$website' firewall
               '$website' jenkins
               '$website' secret_access_key
               '$website' bucket_password
               '$website' redis_password
               '$website' root_password" >githubdork.txt

        echo "                     Google Dorking
        
              site:*.$website 
              site:$website intext:credentials 
              site:$website filetype:pdf
              site:$website filetype:xls            
              site:$website filetype:doc                     
              site:$website filetype:docx                         
              site:$website inurl:admin                        
              site:$website intext:password                           
              site:$website inurl:php                         
              site:$website inurl:jsp                                 
              site:$website inurl:html                                     
              site:$website inurl:xhtml                           
              site:$website inurl:shtml                       
              site:$website inurl:htm                     
              site:$website intext:phone
              site:$website intext:address
              site:$website inurl:/proc/self/cwd
              site:$website inurl:ftp
              site:$website inurl:admin/login
              site:$website intext:private
              site:$website intext:API KEY
              site:$website inurl:php?q=
              site:$website inurl:login.jsp
              site:$website inurl:users/password/new
              site:$website intext:your password is              
              site:$website intext:disallow                                           
               "       >googledork.txt
    
     elif [ $ASK == no ];
      then
        echo "($website) This service is not available yet, Please come back soon"
    
     else echo "come back again"
     fi       

else echo $(sudo su)
fi    