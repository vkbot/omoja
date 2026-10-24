.class public Lorg/apache/ftpserver/ftplet/DefaultFtplet;
.super Ljava/lang/Object;
.source "DefaultFtplet.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Ftplet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .param p3, "reply"    # Lorg/apache/ftpserver/ftplet/FtpReply;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "command":Ljava/lang/String;
    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onLogin(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 86
    :cond_0
    const-string v1, "DELE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDeleteEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 88
    :cond_1
    const-string v1, "STOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 90
    :cond_2
    const-string v1, "RETR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDownloadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 92
    :cond_3
    const-string v1, "RMD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRmdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 94
    :cond_4
    const-string v1, "MKD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onMkdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 96
    :cond_5
    const-string v1, "APPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onAppendEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 98
    :cond_6
    const-string v1, "STOU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadUniqueEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 100
    :cond_7
    const-string v1, "RNTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRenameEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 104
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 2
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "command":Ljava/lang/String;
    const-string v1, "DELE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDeleteStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 55
    :cond_0
    const-string v1, "STOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 57
    :cond_1
    const-string v1, "RETR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDownloadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 59
    :cond_2
    const-string v1, "RMD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRmdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 61
    :cond_3
    const-string v1, "MKD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onMkdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 63
    :cond_4
    const-string v1, "APPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onAppendStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 65
    :cond_5
    const-string v1, "STOU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadUniqueStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 67
    :cond_6
    const-string v1, "RNTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRenameStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 69
    :cond_7
    const-string v1, "SITE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onSite(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1

    return-object v1

    .line 73
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public destroy()V
    .locals 0

    .line 37
    return-void
.end method

.method public init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V
    .locals 0
    .param p1, "ftpletContext"    # Lorg/apache/ftpserver/ftplet/FtpletContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public onAppendEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppendStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeleteEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeleteStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDownloadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDownloadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLogin(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMkdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMkdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRenameEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRenameStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRmdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRmdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSite(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUploadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUploadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUploadUniqueEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUploadUniqueStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/ftplet/FtpSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method
