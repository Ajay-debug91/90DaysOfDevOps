**Linux Practice Note: Service & Process Management**

**1. Process Checks**

**First, we verify if the SSH daemon is actually running in the background.**

<img width="520" height="47" alt="image" src="https://github.com/user-attachments/assets/0e6fff72-d3a0-4d98-a2cd-649cfa9ac3b9" />

<img width="1145" height="64" alt="image" src="https://github.com/user-attachments/assets/a80d1808-d9bf-4282-bf8e-ea6a6f3893ee" />


**2. Service Checks**

<img width="994" height="384" alt="image" src="https://github.com/user-attachments/assets/7df2a7c1-ace7-4de5-b8e7-1855e54a8935" />

<img width="902" height="48" alt="image" src="https://github.com/user-attachments/assets/ca86dff6-d661-43f6-aacd-2a531195c509" />

**3. Log Checks**

<img width="902" height="110" alt="image" src="https://github.com/user-attachments/assets/cb2a739a-05fb-4ba5-9529-c4f7b10cdb45" />

<img width="1256" height="69" alt="image" src="https://github.com/user-attachments/assets/65d6e3f8-7f2d-4fad-af1a-0119b15f14c8" />



**4. Mini Troubleshooting Steps**

If you find that SSH is down or behaving poorly, follow this "Quick-Fix" flow:

Check for Syntax Errors: If you recently edited /etc/ssh/sshd_config, run: sshd -t (No output means it's valid).

Restart the Service: Apply changes or kickstart a hung process. sudo systemctl restart ssh

Verify Port Listening: Ensure the OS is actually listening on port 22. ss -tulpn | grep :22

When troubleshooting, always check journalctl -f -u <service> in one terminal window while you attempt to start the service in another. It gives you a real-time "heartbeat" 

of what’s failing.





