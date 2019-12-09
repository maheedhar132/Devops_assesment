#find tomcat
var=$(sudo find / -name "version.sh")
if [[ -z "$var" ]];then
sudo mkdir /home/ec2-user/apache
sudo cd /home/ec2-user/apache
#download tomcat
sudo yum install java



#downloading tomcat
wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.49.tar.gz



#unzipping tar file 
tar -xvzf apache-tomcat-8.5.49.tar.gz

#delete tar file
rm -rf apache-tomcat-8.5.49.tar.gz

#copy to apache dir
sudo cp -avr $WORKSPACE/apache-tomcat-8.5.49 /home/ec2-user/apache
sudo rm -rf $WORKSPACE/apache-tomcat-8.5.49/



#changing the port for tomcat
sudo sed -i "s/port=\"8080\"/port=\"8888\"/" home/ec2-user/apache/apache-tomcat-8.5.49/conf/server.xml


#tomcat-users
sudo sed -i 's\</tomcat-users>\<!-- -->\g' home/ec2-user/apache/apache-tomcat-8.5.49/conf/tomcat-users.xml
sudo echo '<role rolename="manager-gui" />' >> home/ec2-user/apache/apache-tomcat-8.5.49/conf/tomcat-users.xml
sudo echo '<user username="admin" password="admin" roles="manager-gui" />' >> home/ec2-user/apache/apache-tomcat-8.5.49/conf/tomcat-users.xml
sudo echo '<role rolename="manager-script" />' >> home/ec2-user/apache/apache-tomcat-8.5.49/conf/tomcat-users.xml
sudo echo '<user username="script" password="script" roles="manager-script" />' >> home/ec2-user/apache/apache-tomcat-8.5.49/conf/tomcat-users.xml
sudo echo '</tomcat-users>' >> home/ec2-user/apache/apache-tomcat-8.5.49/conf/tomcat-users.xml


#setting valve in comments

sudo sed -i 's/<Valve /<!-- <Valve /' home/ec2-user/apache/apache-tomcat-8.5.49/webapps/manager/META-INF/context.xml

sudo sed -i 's\:1" />\:1" /> -->\g' home/ec2-user/apache/apache-tomcat-8.5.49/webapps/manager/META-INF/context.xml

#running tomcat
sudo home/ec2-user/apache/apache-tomcat-8.5.49/bin/./startup.sh




sudo cp /$WORKSPACE/target/*.war /home/ec2-user/apache/apache-tomcat-8.5.49/webapps/

fi