.class public Lorg/apache/ftpserver/impl/DefaultFtpSession;
.super Ljava/lang/Object;
.source "DefaultFtpSession.java"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpSession;


# instance fields
.field private final ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 0
    .param p1, "ioSession"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 53
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    const-string v0, "org.apache.ftpserver."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal lookup of internal attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClientAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getClientCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionTime()Ljava/util/Date;
    .locals 3

    .line 80
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getCreationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDataConnection()Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()Lorg/apache/ftpserver/ftplet/DataType;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataType()Lorg/apache/ftpserver/ftplet/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getFailedLogins()I
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFailedLogins()I

    move-result v0

    return v0
.end method

.method public getFileOffset()J
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLoginTime()Ljava/util/Date;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLoginTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0

    return-object v0
.end method

.method public getServerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getSessionId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getStructure()Lorg/apache/ftpserver/ftplet/Structure;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getStructure()Lorg/apache/ftpserver/ftplet/Structure;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lorg/apache/ftpserver/ftplet/User;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserArgument()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUserArgument()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public increaseReadDataBytes(I)V
    .locals 1
    .param p1, "increment"    # I

    .line 238
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->increaseReadDataBytes(I)V

    .line 239
    return-void
.end method

.method public increaseWrittenDataBytes(I)V
    .locals 1
    .param p1, "increment"    # I

    .line 230
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->increaseWrittenDataBytes(I)V

    .line 231
    return-void
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->isSecure()Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    const-string v0, "org.apache.ftpserver."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal removal of internal attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 161
    const-string v0, "org.apache.ftpserver."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal setting of internal attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxIdleTime(I)V
    .locals 1
    .param p1, "maxIdleTime"    # I

    .line 174
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setMaxIdleTime(I)V

    .line 175
    return-void
.end method

.method public write(Lorg/apache/ftpserver/ftplet/FtpReply;)V
    .locals 1
    .param p1, "reply"    # Lorg/apache/ftpserver/ftplet/FtpReply;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 218
    return-void
.end method
