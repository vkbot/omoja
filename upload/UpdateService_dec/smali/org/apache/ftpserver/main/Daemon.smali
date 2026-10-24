.class public Lorg/apache/ftpserver/main/Daemon;
.super Ljava/lang/Object;
.source "Daemon.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static lock:Ljava/lang/Object;

.field private static server:Lorg/apache/ftpserver/FtpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/apache/ftpserver/main/Daemon;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "server":Lorg/apache/ftpserver/FtpServer;
    const-string v1, "Using default configuration...."

    if-eqz p0, :cond_7

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    array-length v2, p0

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    aget-object v2, p0, v4

    const-string v5, "-default"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 96
    const-string v3, "The -default switch is deprecated, please use --default instead"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v2, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    goto/16 :goto_2

    .line 99
    :cond_1
    array-length v2, p0

    if-ne v2, v3, :cond_2

    aget-object v2, p0, v4

    const-string v5, "--default"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    sget-object v2, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 101
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    goto/16 :goto_2

    .line 102
    :cond_2
    array-length v1, p0

    if-ne v1, v3, :cond_6

    .line 103
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using xml configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lorg/springframework/context/support/FileSystemXmlApplicationContext;

    aget-object v2, p0, v4

    invoke-direct {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "ctx":Lorg/springframework/context/support/FileSystemXmlApplicationContext;
    const-string v2, "server"

    invoke-virtual {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->containsBean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    invoke-virtual {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/ftpserver/FtpServer;

    goto :goto_0

    .line 110
    :cond_3
    const-class v2, Lorg/apache/ftpserver/FtpServer;

    invoke-virtual {v1, v2}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBeanNamesForType(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "beanNames":[Ljava/lang/String;
    array-length v3, v2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 112
    aget-object v3, v2, v5

    invoke-virtual {v1, v3}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ftpserver/FtpServer;

    goto :goto_0

    .line 113
    :cond_4
    array-length v3, v2

    if-le v3, v4, :cond_5

    .line 114
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using the first server defined in the configuration, named "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    aget-object v3, v2, v5

    invoke-virtual {v1, v3}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ftpserver/FtpServer;

    goto :goto_0

    .line 119
    :cond_5
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 120
    const-string v4, "XML configuration does not contain a server configuration"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    .end local v1    # "ctx":Lorg/springframework/context/support/FileSystemXmlApplicationContext;
    .end local v2    # "beanNames":[Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 124
    :cond_6
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v2, "Invalid configuration option"

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_7
    :goto_1
    sget-object v2, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    .line 127
    :goto_2
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    :try_start_0
    sget-object v0, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    if-nez v0, :cond_1

    .line 52
    invoke-static {p0}, Lorg/apache/ftpserver/main/Daemon;->getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    .line 53
    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v1, "No configuration provided"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, "No configuration provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    .end local p0    # "args":[Ljava/lang/String;
    throw v0

    .line 59
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "start"

    .line 61
    .local v0, "command":Ljava/lang/String;
    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    .line 62
    const/4 v1, 0x0

    aget-object v1, p0, v1

    move-object v0, v1

    .line 65
    :cond_2
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Starting FTP server daemon"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 67
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {v1}, Lorg/apache/ftpserver/FtpServer;->start()V

    .line 69
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    :try_start_1
    sget-object v2, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 71
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "args":[Ljava/lang/String;
    :try_start_2
    throw v2

    .line 72
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_3
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    :try_start_3
    sget-object v2, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 75
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :try_start_4
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Stopping FTP server daemon"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {v1}, Lorg/apache/ftpserver/FtpServer;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 75
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "args":[Ljava/lang/String;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 81
    .end local v0    # "command":Ljava/lang/String;
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_2

    .line 79
    :catchall_2
    move-exception v0

    .line 80
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Daemon error"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
