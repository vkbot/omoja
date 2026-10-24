.class Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
.super Lorg/apache/mina/core/write/DefaultWriteRequest;
.source "SslFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/ssl/SslFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EncryptedWriteRequest"
.end annotation


# instance fields
.field private final encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;

.field private parentRequest:Lorg/apache/mina/core/write/WriteRequest;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p1, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "encryptedMessage"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 881
    invoke-direct {p0, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    .line 882
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    .line 883
    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 884
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "x1"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "x2"    # Lorg/apache/mina/filter/ssl/SslFilter$1;

    .line 868
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public getFuture()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 906
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->encryptedMessage:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public getParentRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 1

    .line 898
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->parentRequest:Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method
