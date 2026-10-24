.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/services/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method
