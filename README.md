# integration-basics
This repo contains the very basic topics required for proceeding with Integration.

# HTTP
Now HTTP stands for Hypertext Transfer Protocol.
Now this is  probably the most widely used protocol in the  world today. 
HTTP is the protocol that is used  for viewing web pages on the internet. 
So when you type in a web address, like google.com, you'll  notice that HTTP is automatically added at the  
beginning of the web address .
And this indicates  that you are now using HTTP to retrieve this web  page. 
Now in standard HTTP, all the information  is sent in clear text. 
So all the information that  is exchanged between your computer and that web  server, which includes any text that you type on that website, that information is transferred over  the public internet. 
And because it's transferred in clear text, it's vulnerable to anybody  who wants it, such as hackers. 
Now normally  this would not be a big deal if you were just  browsing regular websites and no sensitive data  such as passwords or credit card information are  being used. 
But if you were to type in personal  sensitive data, like your name, address, phone  number, passwords, or credit card information,  that sensitive data goes from your computer and  then it has to travel across the public internet  to get to that web server. 
And this makes your  data vulnerable because a hacker that somewhere  on the internet can listen in as that data is  being transferred and steal your information.  
So as you can see this hacker is stealing personal  information as it's traveling over the internet. So  he has a name, phone numbers, address, credit card  numbers, and so on. So this is a problem as far as  
security. 
And this is why HTTPS was developed. 

# HTTPS
HTTPS stands for Secure Hypertext Transfer Protocol.
And this is HTTP with a security feature. Secure HTTP  encrypts the data that being retrieved by HTTP.
It  HTTPS SECURE HYPERTEXT TRANSFER PROTOCOL ensures that all the data that's being transferred  over the internet between computers and servers,  is secure by making the data impossible to read. 
And it does this by using encryption algorithms  to scramble the data that's being transferred.  
So for example if you were to go to a website  that requires you to enter personal information,  such as passwords or credit card numbers, you  will notice that an 'S' will be added to the HTTP  in the web address. 
And this 'S' indicates that  you are now using secure HTTP and have entered a  secure website where sensitive data is going to be  passed and that data is going to be protected. 
And  in addition to the 'S' being added, a lot of web  browsers will also show a padlock symbol in the  address bar to indicate that secure HTTP is being  used. 
So by using secure HTTP, all the data which  includes anything that you type, is no longer sent  in clear text. 
It's scrambled in an unreadable  form as it travels across the internet. 
So if a  hacker were to try and steal your information he  would get a bunch of meaningless data because the  data is encrypted and the hacker would not be able  to crack the encryption to unscramble the data.
Now secure HTTP protects the data by using one  of two protocols. 
And one of these protocols is  SSL. 

# SSL
SSL or Secure Sockets Layer, is a protocol  that's used to ensure security on the internet.  
SSL is a security protocol. Protocols describe how algorithm should be used.
SSL certificates create a foundation of trust by establishing a secure connection.
It uses public key encryption to secure data. 

**An SSL server certificate serves two primary purposes:**

1. It affirms the identity of the server before authenticating it.
2. It establishes an encrypted channel for communication between the server (the website) and the client (the end user’s browser that connects to it).
   
So basically this is how SSL works. 

Step 1 : Browser connects to a web server secured with (https)SSL. Browser request that the server identify itself.
Step 2 : Server sends a copy of its SSL certificate, inclusing the server public key.
Step 3: Browser checks the certificate root against a list of CA's and that the certificate is unexpired, unrevoked and that its common name is valid for the website that it is connecting to. If the browser trust the certificate, it creates , encrypts and sends back a symmetric session key using servers public key.
Step 4: Server decrypts the symmetric session key using its prvate key and sends back an acknowledgement encrypted with the session key to start the encrypted session.
Step 5: Server and Browser now encrypt all transmitted data with the session key.

An SSL certificate is a digital file that consists of a public and private key pair. The private key is stored on the server, whereas the public key is bundled together with the certificate and is shared with the client during the SSL handshake. Once the certificate is installed on the webserver, it switches the protocol to HTTPS, and the secure padlock symbol appears on the site.  Web server certificates help to maintain data confidentiality and data integrity.
And the other protocol that secure  HTTP can use is called TLS.

# TLS
TLS or transport  layer security is the latest industry standard  cryptographic protocol.
It is the successor to SSL TLS TRANSPORT LAYER SECURITYand it's based on the same specifications. 
TLS is actually just a more recent version of SSL. It fixes some security vulnerabilities in the earlier SSL protocols.
And  like SSL, it also authenticates the server,  client, and encrypts the data. 
It's also important  to point out, that a lot of websites are now using  secure HTTP by default on their websites  regardless if sensitive data is going to be  exchanged or not. 
And a lot of this has to do with  Google.
Because Google is now flagging websites as  not secure if they are not protected with SSL.
And if a website is not SSL protected,  Google will penalize that website in their search  rankings.
So that's why now if you go to any major  website you'll notice that secure HTTP is being  used rather than standard HTTP. 

