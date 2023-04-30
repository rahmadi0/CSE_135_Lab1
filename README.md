# Team Members

## Roman Ahmadi

## Adam Alemi

## Domain

<https://thechmods.com>

## Details of Github auto deploy setup

Our code base is in github, so when we push or commit anything, it automatically gets deployed in the website. we use github inside the apache webserver which will allow us to clone our repository and copy all the files into the host directory. so live updates are automatically deployed when we make any changes in our local machine. we simply git add, git commit, and git push so once the changes apear in the github repo. we can go back to the apache web server and go to our file directoy and we make a sudo git pull request so the automatic deployment takes affect.

<https://youtu.be/KLI3Fgqvno0>


## Summary of changes to HTML file in DevTools after compression

Once we have enabled compression with mod_gzip, we saw a significant reduction in the size of the transferred content for HTML, CSS, and JS files in devtools. This resulted in faster page load times and reduced bandwidth usage.
In the DevTools, we saw that the size of the transferred content was significantly smaller than the actual size of the HTML file on the server. we also noticed that the "Content-Encoding" header was set to "gzip", indicating that the content has been compressed. we expanded the "Content" section, we could view the compressed content in its raw form.

## Summary of removing 'server' header

We needed to go and change the configuration of the headmods and turn of the default server name and add a custom server name. we also had to change it in secuirity mods as it was also changing the server name. We Installed libapache2-mod-security2 and a2enmod security2. We changed the ServerToken OS to FUll and added SecServerSignature “CSE135 Server” in the /etc/apache2/apache2.conf file and finally restarted the apache2 to see the HTTP server changes we made.

## Screenshots

![initial-index](https://user-images.githubusercontent.com/65462752/232345308-21ce4c2b-8c0d-4b10-beab-1bedd1cbf4b1.jpg)

![modified-index](https://user-images.githubusercontent.com/65462752/232345384-3c397ccf-8fb4-4400-ad26-879bcac0b55a.jpg)

![validator-initial](https://user-images.githubusercontent.com/65462752/232345417-a7d65a2a-8df9-4d8d-9315-753e90f64380.jpg)

![vhosts-verify](https://user-images.githubusercontent.com/65462752/232345438-df7f8f87-537f-43da-8a6e-fc03285b26ed.jpg)

![SSL-verify jpg](https://user-images.githubusercontent.com/98855534/232701320-7f55200c-dc85-453d-9c8e-366e68262844.png)

![header-verify](https://user-images.githubusercontent.com/98855534/233258439-a6a031af-a127-4da4-a4ec-6bb48fb8353c.png)

![php-verification](https://user-images.githubusercontent.com/65462752/232345675-2e76f2f4-bdaf-4e14-89a1-fdb39612519c.jpg)

![compression-verify1](https://user-images.githubusercontent.com/65462752/232345819-7cf4398a-5688-41ad-8516-019eb3b27f9a.jpg)

![compression-verify2](https://user-images.githubusercontent.com/65462752/232345837-2eec771b-1544-4afe-8ff7-3495b7c2a52b.jpg)

![compression-vereify3](https://user-images.githubusercontent.com/65462752/232345898-fa4ab1c9-df44-43ef-93b7-56b4b096d132.jpg)

![error-page](https://user-images.githubusercontent.com/65462752/232351911-e7014925-55e0-4da9-a279-29f9629d7422.jpg)

![log-verification](https://user-images.githubusercontent.com/98855534/232692533-16a51694-56d8-4573-a98c-5b579ef7edd7.jpg)


![report-verification](https://user-images.githubusercontent.com/65462752/232356457-9d829420-1ac1-473f-bfdc-b120c8b18d67.jpg)
