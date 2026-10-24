.class public Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
.super Ljava/net/SocketAddress;
.source "VmPipeAddress.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/net/SocketAddress;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d36303337353033L


# instance fields
.field private final port:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I

    .line 39
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->compareTo(Lorg/apache/mina/transport/vmpipe/VmPipeAddress;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/mina/transport/vmpipe/VmPipeAddress;)I
    .locals 2
    .param p1, "o"    # Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 79
    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    iget v1, p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 64
    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 68
    move-object v1, p1

    check-cast v1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 69
    .local v1, "that":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    iget v3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    iget v4, v1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 72
    .end local v1    # "that":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_2
    return v2
.end method

.method public getPort()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    if-ltz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vm:server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vm:client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
