# 🔍 MITRE ATT&CK–Driven Cloud Based Threat Detection Using Wazuh

This repository contains a cloud-hosted threat detection lab built using Wazuh 4.12, designed to emulate real-world attacker behaviors in a controlled environment. The lab simulates adversarial techniques based on the MITRE ATT&CK framework, enabling hands-on experience with threat detection, rule customization, and alert analysis.

The project leverages AWS EC2 instances—one acting as the Wazuh manager and another as the monitored endpoint running the Wazuh agent. Simulated attacks are executed using lightweight Atomic Red Team–style scripts, which trigger custom Wazuh detection rules mapped directly to specific MITRE techniques.


--


## 🎯 Lab Objectives

This cloud-hosted detection lab is designed to build practical SOC analyst skills by simulating adversary behaviors and detecting them using the Wazuh SIEM platform. The key objectives of the lab include:

- ✅ **Deploy a Cloud-Based Detection Environment**  
  Set up Wazuh 4.12 on AWS EC2 instances to simulate a real-world security operations center (SOC).

- 🔍 **Simulate MITRE ATT&CK Techniques**  
  Use Atomic Red Team tests to simulate tactics and techniques from the MITRE ATT&CK framework across categories like Execution, Privilege Escalation, and Discovery.

- 🛡️ **Write Custom Detection Rules**  
  Develop Wazuh local rules to detect Atomic tests in log sources such as `/var/log/syslog`, `auth.log`, and `journald`.

- 🚨 **Trigger and Validate Alerts**  
  Ensure each simulated attack triggers a corresponding alert in the Wazuh dashboard, verifying detection coverage.

- 📈 **Build Detection Engineering Workflow**  
  Gain hands-on experience with detection tuning, alert validation, and rule mapping in a cloud-hosted lab that mirrors enterprise SOC processes.

- 📚 **Document Detection Coverage**  
  Track which MITRE techniques were tested and detected, and identify gaps to improve rule logic.


--


## 🧰 Tooling

| Category            | Tools Used                            |
|---------------------|----------------------------------------|
| Simulation Engine   | Atomic Red Team (manual execution)     |
| Detection Rules     | Local YAML Rules                       |
| Log Collection      | auditd, /var/log/auth.log              |
| Analysis            | Wazuh 4.12                             |
| Visualization       | Wazuh 4.12 MITRE ATT&CK                |


--


## ⚙️ Lab Architecture

- **Wazuh Manager (Ubuntu 22.04)**: Self-hosted, runs the Wazuh server, indexer, and dashboard
- **Wazuh Agent (Ubuntu 22.04)**: Logs real terminal commands, forwards syslog/auth.log entries
- **Custom Rules**: Local rules matching simulated MITRE techniques with `<mitre>` tags
- **Dashboard**: Accessible via HTTPS on port 443 with full MITRE mapping


--


## 🧪 Simulated Techniques

| MITRE ID     | Technique                      | Example Command                                 |
|--------------|--------------------------------|--------------------------------------------------|
| T1016        | Network Configuration Discovery | `ip addr`                                       |
| T1057        | Process Discovery              | `ps aux`                                        |
| T1003.008    | /etc/shadow Access             | `sudo cat /etc/shadow`                          |
| T1083        | File and Directory Discovery   | `find /etc -type f -name '*.conf'`              |
| T1053.003    | Scheduled Task via Cron        | `echo '* * * * * root echo hello' > /etc/cron.d`|


--


## 📊 Detection Workflow
1. Terminal commands executed on the agent (Ubuntu)
2. Log entries created in `syslog` and `auth.log`
3. Wazuh Agent forwards logs to the Manager
4. Custom rules match on key fields and tag them with MITRE IDs
5. Alerts are shown in:
   - Security Events view
   - MITRE ATT&CK matrix (tactic → technique)


--


## 📁 Repo Contents

```
wazuh-threat-hunting-lab/
├── atomic_tests.sh
├── local_rules.xml
├── findings.md
├── README.md
├── screenshots/
```


--


## 📸 Screenshots

| File                    | Description                                      |
|-------------------------|--------------------------------------------------|
| `agent-list.png`        | Shows agent connection and hostname              |
| `security-events.png`   | Displays triggered alerts                        |
| `event-details.png`     | Detailed alert with MITRE technique, rule ID     |
| `mitre-matrix.png`      | Highlighted MITRE techniques based on detections |

--


## ✅ Requirements

- AWS EC2 (Ubuntu 22.04 for both manager and agent)
- Ports open: 1514/tcp, 55000/tcp, 443/tcp, 22/tcp
- `logger` utility available on the agent
- Dashboard accessible from your IP


--


## 🧠 Skills Demonstrated
- Wazuh rule writing & MITRE ATT&CK mapping
- Log-based detection engineering
- Cloud SIEM simulation
- Threat Hunt via syslog & rule analysis
