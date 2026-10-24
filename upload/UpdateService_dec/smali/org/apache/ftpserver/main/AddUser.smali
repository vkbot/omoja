.class public Lorg/apache/ftpserver/main/AddUser;
.super Lorg/apache/ftpserver/main/CommandLine;
.source "AddUser.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/ftpserver/main/CommandLine;-><init>()V

    .line 50
    return-void
.end method

.method private static askForBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .locals 2
    .param p0, "in"    # Ljava/io/BufferedReader;
    .param p1, "question"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "boolValue":Ljava/lang/String;
    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I
    .locals 2
    .param p0, "in"    # Ljava/io/BufferedReader;
    .param p1, "question"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "intValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static askForString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/BufferedReader;
    .param p1, "question"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static askForString(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/BufferedReader;
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "mandatoryMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ftpserver/main/AddUser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_0
    return-object v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 164
    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;

    .line 60
    new-instance v0, Lorg/apache/ftpserver/main/AddUser;

    invoke-direct {v0}, Lorg/apache/ftpserver/main/AddUser;-><init>()V

    move-object v1, v0

    .line 65
    .local v1, "addUser":Lorg/apache/ftpserver/main/AddUser;
    move-object/from16 v2, p0

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/main/AddUser;->getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    .line 66
    .local v0, "server":Lorg/apache/ftpserver/FtpServer;
    if-nez v0, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v3, "in":Ljava/io/BufferedReader;
    move-object v4, v0

    check-cast v4, Lorg/apache/ftpserver/impl/DefaultFtpServer;

    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v4

    .line 74
    .local v4, "um":Lorg/apache/ftpserver/ftplet/UserManager;
    new-instance v5, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v5}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    .line 76
    .local v5, "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Asking for details of the new user"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 79
    const-string v6, "User name:"

    const-string v7, "User name is mandatory"

    invoke-static {v3, v6, v7}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "userName":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 81
    return-void

    .line 83
    :cond_1
    invoke-virtual {v5, v6}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    .line 85
    const-string v7, "Password:"

    invoke-static {v3, v7}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    .line 87
    const-string v7, "Home directory:"

    const-string v8, "Home directory is mandatory"

    invoke-static {v3, v7, v8}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "home":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 89
    return-void

    .line 91
    :cond_2
    invoke-virtual {v5, v7}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    .line 93
    const-string v8, "Enabled (Y/N):"

    invoke-static {v3, v8}, Lorg/apache/ftpserver/main/AddUser;->askForBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    .line 95
    const-string v8, "Max idle time in seconds (0 for none):"

    invoke-static {v3, v8}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v8, "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    const-string v9, "Write permission (Y/N):"

    invoke-static {v3, v9}, Lorg/apache/ftpserver/main/AddUser;->askForBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 100
    new-instance v9, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v9}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    const-string v9, "Maximum number of concurrent logins (0 for no restriction)"

    invoke-static {v3, v9}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v9

    .line 104
    .local v9, "maxLogins":I
    const-string v10, "Maximum number of concurrent logins per IP (0 for no restriction)"

    invoke-static {v3, v10}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v10

    .line 106
    .local v10, "maxLoginsPerIp":I
    new-instance v11, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    invoke-direct {v11, v9, v10}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v11, "Maximum download rate (0 for no restriction)"

    invoke-static {v3, v11}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v11

    .line 109
    .local v11, "downloadRate":I
    const-string v12, "Maximum upload rate (0 for no restriction)"

    invoke-static {v3, v12}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v12

    .line 111
    .local v12, "uploadRate":I
    new-instance v13, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    invoke-direct {v13, v11, v12}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v5, v8}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    .line 115
    invoke-interface {v4, v5}, Lorg/apache/ftpserver/ftplet/UserManager;->save(Lorg/apache/ftpserver/ftplet/User;)V

    .line 117
    instance-of v13, v4, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    if-eqz v13, :cond_5

    .line 118
    move-object v13, v4

    check-cast v13, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    invoke-virtual {v13}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getFile()Ljava/io/File;

    move-result-object v13

    .line 120
    .local v13, "file":Ljava/io/File;
    if-eqz v13, :cond_4

    .line 121
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "server":Lorg/apache/ftpserver/FtpServer;
    .local v16, "server":Lorg/apache/ftpserver/FtpServer;
    const-string v0, "User saved to file: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v16    # "server":Lorg/apache/ftpserver/FtpServer;
    .restart local v0    # "server":Lorg/apache/ftpserver/FtpServer;
    :cond_4
    move-object/from16 v16, v0

    .end local v0    # "server":Lorg/apache/ftpserver/FtpServer;
    .restart local v16    # "server":Lorg/apache/ftpserver/FtpServer;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "User manager does not have a file configured, will not save user to file"

    invoke-virtual {v0, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    .end local v13    # "file":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 126
    .end local v16    # "server":Lorg/apache/ftpserver/FtpServer;
    .restart local v0    # "server":Lorg/apache/ftpserver/FtpServer;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "server":Lorg/apache/ftpserver/FtpServer;
    .restart local v16    # "server":Lorg/apache/ftpserver/FtpServer;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "User saved"

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "um":Lorg/apache/ftpserver/ftplet/UserManager;
    .end local v5    # "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    .end local v6    # "userName":Ljava/lang/String;
    .end local v7    # "home":Ljava/lang/String;
    .end local v8    # "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    .end local v9    # "maxLogins":I
    .end local v10    # "maxLoginsPerIp":I
    .end local v11    # "downloadRate":I
    .end local v12    # "uploadRate":I
    .end local v16    # "server":Lorg/apache/ftpserver/FtpServer;
    :goto_1
    goto :goto_2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method protected usage()V
    .locals 3

    .line 175
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/apache/ftpserver/main/AddUser;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [OPTION] [CONFIGFILE]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 177
    const-string v1, "Starts the user management application, asking for user settings"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 180
    const-string v1, "      --default              use the default configuration, "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 182
    const-string v1, "                             also used if no command line argument is given "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -?, --help                 print this message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method
