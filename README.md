# FriendlyDNSReporter
> *Because it is always DNS. Or not. But mostly yes.*

[![Bash](https://img.shields.io/badge/Language-Bash-4EAA25.svg)](https://gnu.org/software/bash/)
[![Status](https://img.shields.io/badge/Status-It_Works_(Probably)-green.svg)]()
[![License](https://img.shields.io/badge/License-MIT-blue.svg)]()

Does your boss ask for "evidence" that the DNS is broken? 
Do you enjoy typing `dig` 5,000 times a day? 
Do you like staring at raw text output until your eyes bleed?

**No?** Then `FriendlyDNSReporter` is for you.

This script runs a battery of automated tests (Consistency, Latency, Security, RFC Compliance) against your DNS infrastructure and generates a **colorful HTML report** that makes you look like you worked really hard.

## 🚀 Features (Buzzwords)

*   **Automated Diagnostics**: Pings, Traces, TCP checks, and thousands of queries while you get coffee.
*   **HTML Dashboard**: A fancy report with charts and "Health Scores" to impress management.
*   **Security Audits**: Checks if you are leaking your BIND version or allowing open recursion (shame on you).
*   **Modern Standards**: Validates DoH, DoT, IPv6, and other things you probably haven't deployed yet.
*   **Sarcastic Output**: The terminal logs tell you the bitter truth.

## 📦 Installation

Clone this thing. You know how.
```bash
git clone https://github.com/flashbsb/FriendlyDNSReporter.git
cd FriendlyDNSReporter
chmod +x FriendlyDNSReporter.sh
```

## 🎮 Usage

You can just run it, and it will hold your hand:
```bash
./FriendlyDNSReporter.sh
```

Or, if you are a "Power User" (antisocial):
```bash
./FriendlyDNSReporter.sh -y -n domains_tests.csv -g dns_groups.csv
```

### Flags for the Impatient

| Flag | Description |
|------|-------------|
| `-n` | **Domains CSV**. The victims. |
| `-g` | **Groups CSV**. The suspects. |
| `-y` | **Yes Mode**. Don't ask me questions, just do it. |
| `-l` | **Text Log**. Create a forensic trail (`logs/*.log`). |
| `-j` | **JSON**. If you like parsing curly braces. |
| `-v` | **Verbose**. Spam my terminal. |
| `-h` | **Help**. Read the manual (it's sarcastic too). |

## ⚙️ Configuration

There is a file called `FriendlyDNSReporter.conf`. **Read it.**
Inside, you can tweak:
*   `TIMEOUT`: How long to wait before declaring a server dead.
*   `SLEEP`: How polite you want to be to the target firewall.
*   `HTML_REPORT_LANG`: Supports `en` (English) and `pt` (Portuguese).

## 📄 Input Files (Don't break the format)

### `dns_groups.csv`
Must have **5 columns**. Separated by **semicolons (;)**.
```csv
# NAME;DESCRIPTION;TYPE;TIMEOUT;SERVERS
GOOGLE;Public Google;recursive;2;8.8.8.8,8.8.4.4
INTERNAL;Local AD;authoritative;5;192.168.1.10
```

### `domains_tests.csv`
Must have **5 columns**. Separated by **semicolons (;)**.
```csv
# DOMAIN;GROUPS;STRATEGY;RECORDS;EXTRA_HOSTS
google.com;GOOGLE;recursive;a,aaaa,txt;www,mail
mycompany.local;INTERNAL;authoritative;a,soa;
```

## 🤝 Contributing

Found a bug? Implemented a cool feature?
Please open a Pull Request. We need all the help we can get to maintain this spaghetti code.

## 📜 License

MIT. Do whatever you want, just don't blame us if you break your DNS.
