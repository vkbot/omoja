.class public interface abstract Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
.super Ljava/lang/Object;
.source "DataConnectionFactory.java"


# virtual methods
.method public abstract closeDataConnection()V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
