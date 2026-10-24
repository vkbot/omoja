.class public interface abstract Lorg/apache/ftpserver/impl/FtpHandler;
.super Ljava/lang/Object;
.source "FtpHandler.java"


# virtual methods
.method public abstract exceptionCaught(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract init(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/listener/Listener;)V
.end method

.method public abstract messageReceived(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract messageSent(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpReply;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sessionClosed(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sessionCreated(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sessionIdle(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sessionOpened(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
