.class Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStampSimpleHttpClientResponse"
.end annotation


# instance fields
.field private final responseBytes:[B

.field private final responseCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;->responseCode:I

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;->responseBytes:[B

    return-void
.end method


# virtual methods
.method public getResponseBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;->responseBytes:[B

    return-object p0
.end method

.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;->responseCode:I

    return p0
.end method
