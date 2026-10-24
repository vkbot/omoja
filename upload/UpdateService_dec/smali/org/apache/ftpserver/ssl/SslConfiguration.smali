.class public interface abstract Lorg/apache/ftpserver/ssl/SslConfiguration;
.super Ljava/lang/Object;
.source "SslConfiguration.java"


# virtual methods
.method public abstract getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocol()Ljava/lang/String;
.end method

.method public abstract getSSLContext()Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
