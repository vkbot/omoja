.class public abstract Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;
.super Ljava/lang/Object;
.source "AbstractProtocolDecoderOutput.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;


# instance fields
.field private final messageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->messageQueue:Ljava/util/Queue;

    .line 39
    return-void
.end method


# virtual methods
.method public getMessageQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->messageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 53
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 58
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
