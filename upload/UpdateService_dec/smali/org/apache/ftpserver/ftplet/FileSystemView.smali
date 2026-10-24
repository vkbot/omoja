.class public interface abstract Lorg/apache/ftpserver/ftplet/FileSystemView;
.super Ljava/lang/Object;
.source "FileSystemView.java"


# virtual methods
.method public abstract changeWorkingDirectory(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract getHomeDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method

.method public abstract isRandomAccessible()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method
