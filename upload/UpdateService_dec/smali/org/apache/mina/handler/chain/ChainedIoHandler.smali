.class public Lorg/apache/mina/handler/chain/ChainedIoHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "ChainedIoHandler.java"


# instance fields
.field private final chain:Lorg/apache/mina/handler/chain/IoHandlerChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V
    .locals 2
    .param p1, "chain"    # Lorg/apache/mina/handler/chain/IoHandlerChain;

    .line 48
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    .line 54
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChain()Lorg/apache/mina/handler/chain/IoHandlerChain;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 72
    return-void
.end method
