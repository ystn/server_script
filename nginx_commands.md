1. View the installed Nginx version on your server.
`sudo nginx -version`
2. Enable the Nginx web server to start automatically at boot time.
`sudo systemctl enable nginx`
3. Start the Nginx service.
`sudo systemctl start nginx`
4. Stop the Nginx service.
`sudo systemctl stop nginx`
5. Restart the Nginx service.
`sudo systemctl restart nginx`
6. View the Nginx service status and verify that it's running.
`sudo systemctl status nginx`
7. Test the Nginx configuration for errors.
`sudo nginx -t`