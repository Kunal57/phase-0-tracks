# Research Web Servers

### What are some of the key design philosophies of the Linux operating system?

- A free operating system that was developed through open source collaboration. This means that it is freely available for anyone to download, modify, and redistribute.

- The traditional Unix system is developed with a rigorous policy of qualify assurance, source and revision control systems, documentation, and bug reporting and resolution. On the other hand, Linux is primarily developed as a group effort by volunteers on the Internet and there is no single organization responsible for developing the system. Linux is a hacker's (dedicated programmers) operating system.

- The system itself is designed with a very open-ended, feature-rich approach. Linux is for developers, more than anyone else.


### In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

- A VPS is basically a whole new computer accessed via your original computer. The new virtual machine has similar functionality and privacy as a normal computer and each can run its own operating system. A VPS doesn't have a physical form but is instead accessed through another physically present computer.

## Advantages

- More stability and reliability for basic web hosting needs

- More control compared to shared hosting

- Easy scalability when needed

- Cost effective solutions for small websites

### Why is it considered a bad idea to run programs as the root user of a Linux system?

- You are much more prone to mistakes or software bugs. For example, imagine you accidentally download a program that contains a bug which deletes files from your computer. If you ran the program as a limited user, at most the bug will damage stuff in your home directory. On the other hand, if ran as root, the bug has the freedom to delete everything on the system.

- Can't undo human errors in root. If you accidentally ran 'rm -rf' by mistake, a limited user would be stopped by the lack of permissions, but as root, the mistake wouldn't be stopped.

- Every hacker & virus knows the importance of a root account. If they are planning to attack your system, it is a known point of entry, and a likely target. This is why root accounts should have logins disabled.

- There is only one root account. As a result, if everyone uses it, it's difficult to find out who did what to the system. 