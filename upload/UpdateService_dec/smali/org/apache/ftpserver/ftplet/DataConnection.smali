.class public interface abstract Lorg/apache/ftpserver/ftplet/DataConnection;
.super Ljava/lang/Object;
.source "DataConnection.java"


# virtual methods
.method public abstract transferFromClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/OutputStream;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/io/InputStream;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract transferToClient(Lorg/apache/ftpserver/ftplet/FtpSession;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
