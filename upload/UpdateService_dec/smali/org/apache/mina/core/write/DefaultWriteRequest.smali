.class public Lorg/apache/mina/core/write/DefaultWriteRequest;
.super Ljava/lang/Object;
.source "DefaultWriteRequest.java"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequest;


# static fields
.field public static final EMPTY_MESSAGE:[B

.field private static final UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;


# instance fields
.field private final destination:Ljava/net/SocketAddress;

.field private final future:Lorg/apache/mina/core/future/WriteFuture;

.field private message:Ljava/lang/Object;

.field private final originalMessage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/mina/core/write/DefaultWriteRequest;->EMPTY_MESSAGE:[B

    .line 40
    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest$1;

    invoke-direct {v0}, Lorg/apache/mina/core/write/DefaultWriteRequest$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/write/DefaultWriteRequest;->UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "future"    # Lorg/apache/mina/core/future/WriteFuture;

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "future"    # Lorg/apache/mina/core/future/WriteFuture;
    .param p3, "destination"    # Ljava/net/SocketAddress;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    if-eqz p1, :cond_2

    .line 219
    if-nez p2, :cond_0

    .line 220
    sget-object p2, Lorg/apache/mina/core/write/DefaultWriteRequest;->UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;

    .line 223
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    .line 224
    iput-object p1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->originalMessage:Ljava/lang/Object;

    .line 226
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 229
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    .line 233
    :cond_1
    iput-object p2, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->future:Lorg/apache/mina/core/future/WriteFuture;

    .line 234
    iput-object p3, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->destination:Ljava/net/SocketAddress;

    .line 235
    return-void

    .line 216
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDestination()Ljava/net/SocketAddress;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->destination:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getFuture()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->future:Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginalMessage()Ljava/lang/Object;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->originalMessage:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 267
    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 0

    .line 278
    return-object p0
.end method

.method public isEncoded()Z
    .locals 1

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public setMessage(Ljava/lang/Object;)V
    .locals 0
    .param p1, "modifiedMessage"    # Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WriteRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const-string v1, "CLOSE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->originalMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 303
    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
