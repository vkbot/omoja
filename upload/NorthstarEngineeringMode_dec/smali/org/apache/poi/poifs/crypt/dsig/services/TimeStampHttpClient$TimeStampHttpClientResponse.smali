.class public interface abstract Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeStampHttpClientResponse"
.end annotation


# virtual methods
.method public abstract getResponseBytes()[B
.end method

.method public abstract getResponseCode()I
.end method

.method public isOK()Z
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;->getResponseCode()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
