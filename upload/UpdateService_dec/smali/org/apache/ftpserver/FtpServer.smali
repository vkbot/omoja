.class public interface abstract Lorg/apache/ftpserver/FtpServer;
.super Ljava/lang/Object;
.source "FtpServer.java"


# virtual methods
.method public abstract isStopped()Z
.end method

.method public abstract isSuspended()Z
.end method

.method public abstract resume()V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract suspend()V
.end method
