.class public interface abstract Lorg/apache/ftpserver/ftplet/Ftplet;
.super Ljava/lang/Object;
.source "Ftplet.java"


# virtual methods
.method public abstract afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
