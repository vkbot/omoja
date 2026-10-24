.class public interface abstract Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;
.end method

.method public abstract init(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
.end method

.method public abstract isFollowRedirects()Z
.end method

.method public abstract isIgnoreHttpsCertificates()Z
.end method

.method public abstract post(Ljava/lang/String;[B)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;
.end method

.method public abstract setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setContentTypeIn(Ljava/lang/String;)V
.end method

.method public abstract setContentTypeOut(Ljava/lang/String;)V
.end method

.method public abstract setFollowRedirects(Z)V
.end method

.method public abstract setIgnoreHttpsCertificates(Z)V
.end method
