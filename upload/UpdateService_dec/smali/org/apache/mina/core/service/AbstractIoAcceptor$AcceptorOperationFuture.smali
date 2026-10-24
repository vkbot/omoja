.class public Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
.super Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
.source "AbstractIoAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/AbstractIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptorOperationFuture"
.end annotation


# instance fields
.field private final localAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 476
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->localAddresses:Ljava/util/List;

    .line 478
    return-void
.end method


# virtual methods
.method public final getLocalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->localAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Acceptor operation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->localAddresses:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 497
    const/4 v2, 0x1

    .line 499
    .local v2, "isFirst":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 500
    .local v3, "address":Ljava/net/SocketAddress;
    if-eqz v2, :cond_0

    .line 501
    const/4 v2, 0x0

    goto :goto_1

    .line 503
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    .end local v3    # "address":Ljava/net/SocketAddress;
    goto :goto_0

    .line 509
    .end local v2    # "isFirst":Z
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
