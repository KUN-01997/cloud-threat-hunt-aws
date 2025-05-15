# MITRE Technique Detection Findings

## Agent Info
- Hostname: ubuntu-agent
- OS: Ubuntu 22.04
- Wazuh Agent Version: 4.12
- Log Sources: /var/log/syslog, /var/log/auth.log

---

## 🔹 T1016 - Network Configuration Discovery

- **Command:** `ip addr`
- **Detection:** ✅
- **Rule ID:** 100030
- **Log Source:** /var/log/syslog
- **Severity:** Medium
- **Mapped Technique:** T1016

---

## 🔹 T1057 - Process Discovery

- **Command:** `ps aux`
- **Detection:** ✅
- **Rule ID:** 100031
- **Log Source:** /var/log/syslog
- **Severity:** Medium
- **Mapped Technique:** T1057

---

## 🔹 T1003.008 - /etc/shadow Access

- **Command:** `sudo cat /etc/shadow`
- **Detection:** ✅
- **Rule ID:** 100032
- **Log Source:** /var/log/auth.log
- **Severity:** High
- **Mapped Technique:** T1003.008

---

## 🔹 T1083 - File and Directory Discovery

- **Command:** `find /etc -type f -name '*.conf'`
- **Detection:** ✅
- **Rule ID:** 100033
- **Log Source:** /var/log/syslog
- **Severity:** Medium
- **Mapped Technique:** T1083

---

## 🔹 T1053.003 - Scheduled Task (Cron)

- **Command:** `echo '* * * * * root echo hello' | sudo tee /etc/cron.d/atomic-test`
- **Detection:** ✅
- **Rule ID:** 100034
- **Log Source:** /var/log/syslog
- **Severity:** High
- **Mapped Technique:** T1053.003

---
