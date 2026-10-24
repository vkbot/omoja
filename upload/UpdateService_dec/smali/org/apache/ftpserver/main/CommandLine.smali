.class public Lorg/apache/ftpserver/main/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private addShutdownHook(Lorg/apache/ftpserver/FtpServer;)V
    .locals 3
    .param p1, "engine"    # Lorg/apache/ftpserver/FtpServer;

    .line 78
    new-instance v0, Lorg/apache/ftpserver/main/CommandLine$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ftpserver/main/CommandLine$1;-><init>(Lorg/apache/ftpserver/main/CommandLine;Lorg/apache/ftpserver/FtpServer;)V

    .line 86
    .local v0, "shutdownHook":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 87
    .local v1, "runtime":Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 88
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/apache/ftpserver/main/CommandLine;

    invoke-direct {v0}, Lorg/apache/ftpserver/main/CommandLine;-><init>()V

    .line 56
    .local v0, "cli":Lorg/apache/ftpserver/main/CommandLine;
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/ftpserver/main/CommandLine;->getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v1

    .line 57
    .local v1, "server":Lorg/apache/ftpserver/FtpServer;
    if-nez v1, :cond_0

    .line 58
    return-void

    .line 62
    :cond_0
    invoke-interface {v1}, Lorg/apache/ftpserver/FtpServer;->start()V

    .line 63
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FtpServer started"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-direct {v0, v1}, Lorg/apache/ftpserver/main/CommandLine;->addShutdownHook(Lorg/apache/ftpserver/FtpServer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "server":Lorg/apache/ftpserver/FtpServer;
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "server":Lorg/apache/ftpserver/FtpServer;
    array-length v1, p1

    const-string v2, "Using default configuration"

    if-nez v1, :cond_0

    .line 114
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    goto/16 :goto_1

    .line 116
    :cond_0
    array-length v1, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    aget-object v1, p1, v4

    const-string v5, "-default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 119
    const-string v3, "The -default switch is deprecated, please use --default instead"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    goto/16 :goto_1

    .line 122
    :cond_1
    array-length v1, p1

    if-ne v1, v3, :cond_2

    aget-object v1, p1, v4

    const-string v5, "--default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    goto/16 :goto_1

    .line 125
    :cond_2
    array-length v1, p1

    if-ne v1, v3, :cond_3

    aget-object v1, p1, v4

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {p0}, Lorg/apache/ftpserver/main/CommandLine;->usage()V

    goto/16 :goto_1

    .line 127
    :cond_3
    array-length v1, p1

    if-ne v1, v3, :cond_4

    aget-object v1, p1, v4

    const-string v2, "-?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    invoke-virtual {p0}, Lorg/apache/ftpserver/main/CommandLine;->usage()V

    goto/16 :goto_1

    .line 129
    :cond_4
    array-length v1, p1

    if-ne v1, v3, :cond_8

    .line 130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using XML configuration file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lorg/springframework/context/support/FileSystemXmlApplicationContext;

    aget-object v2, p1, v4

    invoke-direct {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "ctx":Lorg/springframework/context/support/FileSystemXmlApplicationContext;
    const-string v2, "server"

    invoke-virtual {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->containsBean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 136
    invoke-virtual {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/ftpserver/FtpServer;

    goto :goto_0

    .line 138
    :cond_5
    const-class v2, Lorg/apache/ftpserver/FtpServer;

    invoke-virtual {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBeanNamesForType(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "beanNames":[Ljava/lang/String;
    array-length v5, v2

    if-ne v5, v3, :cond_6

    .line 140
    aget-object v3, v2, v4

    invoke-virtual {v1, v3}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ftpserver/FtpServer;

    goto :goto_0

    .line 141
    :cond_6
    array-length v5, v2

    if-le v5, v3, :cond_7

    .line 142
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using the first server defined in the configuration, named "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    aget-object v3, v2, v4

    invoke-virtual {v1, v3}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ftpserver/FtpServer;

    goto :goto_0

    .line 147
    :cond_7
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 148
    const-string v4, "XML configuration does not contain a server configuration"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    .end local v1    # "ctx":Lorg/springframework/context/support/FileSystemXmlApplicationContext;
    .end local v2    # "beanNames":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 152
    :cond_8
    invoke-virtual {p0}, Lorg/apache/ftpserver/main/CommandLine;->usage()V

    .line 155
    :goto_1
    return-object v0
.end method

.method protected usage()V
    .locals 2

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 95
    const-string v1, "Usage: java org.apache.ftpserver.main.CommandLine [OPTION] [CONFIGFILE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 97
    const-string v1, "Starts FtpServer using the default configuration of the "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "configuration file if provided."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 101
    const-string v1, "      --default              use the default configuration, "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 103
    const-string v1, "                             also used if no command line argument is given "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -?, --help                 print this message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    return-void
.end method
