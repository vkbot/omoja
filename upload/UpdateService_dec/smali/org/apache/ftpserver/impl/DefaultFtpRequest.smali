.class public Lorg/apache/ftpserver/impl/DefaultFtpRequest;
.super Ljava/lang/Object;
.source "DefaultFtpRequest.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpRequest;


# instance fields
.field private final argument:Ljava/lang/String;

.field private final command:Ljava/lang/String;

.field private final line:Ljava/lang/String;

.field private final receivedTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestLine"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->receivedTime:J

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    .line 55
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 56
    .local v0, "spInd":I
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->parseCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->parseArg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->argument:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private parseArg(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "lineToParse"    # Ljava/lang/String;
    .param p2, "spInd"    # I

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :cond_0
    return-object v0
.end method

.method private parseCmd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "lineToParse"    # Ljava/lang/String;
    .param p2, "spInd"    # I

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "cmd":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 66
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    invoke-virtual {v2, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x58

    if-ne v1, v2, :cond_1

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getArgument()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->argument:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedTime()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->receivedTime:J

    return-wide v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->line:Ljava/lang/String;

    return-object v0
.end method

.method public hasArgument()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;->getRequestLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
