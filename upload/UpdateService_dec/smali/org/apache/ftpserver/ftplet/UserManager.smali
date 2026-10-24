.class public interface abstract Lorg/apache/ftpserver/ftplet/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# virtual methods
.method public abstract authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract doesExist(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract getAdminName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract getAllUserNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract isAdmin(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract save(Lorg/apache/ftpserver/ftplet/User;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method
