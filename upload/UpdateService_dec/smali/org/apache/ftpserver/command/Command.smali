.class public interface abstract Lorg/apache/ftpserver/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# virtual methods
.method public abstract execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation
.end method
