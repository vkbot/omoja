.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
.super Ljava/lang/Object;
.source "DemuxingProtocolEncoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    }
.end annotation


# static fields
.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final STATE:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final type2encoderFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/mina/util/CopyOnWriteMap;

    invoke-direct {v0}, Lorg/apache/mina/util/CopyOnWriteMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    .line 48
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    return-object v0
.end method

.method private findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .locals 5
    .param p1, "state"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 188
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    .line 197
    .local v0, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    if-eqz v0, :cond_1

    .line 198
    return-object v0

    .line 204
    :cond_1
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    .line 206
    if-nez v0, :cond_4

    .line 211
    if-nez p3, :cond_2

    .line 212
    new-instance v1, Lorg/apache/mina/util/IdentityHashSet;

    invoke-direct {v1}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    move-object p3, v1

    .line 215
    :cond_2
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 219
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 220
    .local v4, "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v4, p3}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_3

    .line 223
    goto :goto_1

    .line 219
    .end local v4    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 234
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 236
    .local v1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_5

    .line 237
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    .line 246
    .end local v1    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    if-eqz v0, :cond_6

    .line 247
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    .line 250
    .local v1, "tmpEncoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<Ljava/lang/Object;>;"
    if-eqz v1, :cond_6

    .line 251
    move-object v0, v1

    .line 255
    .end local v1    # "tmpEncoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<Ljava/lang/Object;>;"
    :cond_6
    return-object v0
.end method

.method private getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    .line 268
    .local v0, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    if-nez v0, :cond_0

    .line 269
    new-instance v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    move-object v0, v1

    .line 270
    sget-object v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    .line 271
    .local v1, "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    if-eqz v1, :cond_0

    .line 272
    move-object v0, v1

    .line 275
    .end local v1    # "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    if-eqz p2, :cond_2

    .line 70
    :try_start_0
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    nop

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "registered":Z
    const-class v1, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;-><init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 79
    const/4 v0, 0x1

    .line 82
    :cond_0
    if-eqz v0, :cond_1

    .line 85
    return-void

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregisterable type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "registered":Z
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified class doesn\'t have a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoderClass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "-TT;>;)V"
        }
    .end annotation

    .line 96
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 97
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<",
            "-TT;>;)V"
        }
    .end annotation

    .line 107
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    if-eqz p1, :cond_2

    .line 111
    if-eqz p2, :cond_1

    .line 115
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified message type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is registered already."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
    .end local p1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    throw v1

    .line 122
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
    .restart local p1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 134
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 135
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "-TT;>;)V"
        }
    .end annotation

    .line 146
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 147
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    .line 148
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<",
            "-TT;>;)V"
        }
    .end annotation

    .line 160
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 161
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v1, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 162
    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    move-result-object v0

    .line 171
    .local v0, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v1

    .line 172
    .local v1, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/mina/filter/codec/demux/MessageEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    .line 177
    return-void

    .line 175
    :cond_0
    new-instance v2, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No message encoder found for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .locals 1
    .param p1, "state"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 180
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    return-object v0
.end method
