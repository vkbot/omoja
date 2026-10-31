.class public Lorg/apache/commons/net/ProtocolCommandSupport;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6f449111453ca76aL


# instance fields
.field private final listeners:Lorg/apache/commons/net/util/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/net/util/ListenerList<",
            "Lorg/apache/commons/net/ProtocolCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->source:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->lambda$fireReplyReceived$1(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->lambda$fireCommandSent$0(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$fireCommandSent$0(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$fireReplyReceived$1(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Serialization is not supported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Serialization is not supported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method


# virtual methods
.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandEvent;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->source:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 17
    .line 18
    new-instance p2, Lorg/apache/commons/net/a;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {p2, v0, v1}, Lorg/apache/commons/net/a;-><init>(Lorg/apache/commons/net/ProtocolCommandEvent;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public fireReplyReceived(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandEvent;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->source:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 17
    .line 18
    new-instance p2, Lorg/apache/commons/net/a;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p2, v0, v1}, Lorg/apache/commons/net/a;-><init>(Lorg/apache/commons/net/ProtocolCommandEvent;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public getListenerCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->getListenerCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
