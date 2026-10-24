.class public Lorg/apache/mina/filter/logging/MdcInjectionFilter;
.super Lorg/apache/mina/filter/util/CommonEventFilter;
.source "MdcInjectionFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
    }
.end annotation


# static fields
.field private static final CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private callDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mdcKeys:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter;

    const-string v2, "context"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    .line 103
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    .line 139
    const-class v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "keys":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;>;"
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    .line 103
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    .line 120
    invoke-virtual {p1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    .line 121
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;)V
    .locals 2
    .param p1, "keys"    # [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 130
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    .line 103
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;>;"
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    .line 133
    return-void
.end method

.method private getAndFillContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 178
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->fillContext(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;)V

    .line 181
    :cond_0
    return-object v0
.end method

.method private static getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 2
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    sget-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p0, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 188
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 189
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 190
    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p0, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-object v0
.end method

.method public static getProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "key"    # Ljava/lang/String;

    .line 244
    if-eqz p1, :cond_1

    .line 248
    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 249
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    .local v1, "answer":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 252
    return-object v1

    .line 255
    :cond_0
    invoke-static {p1}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    .end local v0    # "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "answer":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)V
    .locals 2
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "key"    # Ljava/lang/String;

    .line 286
    if-eqz p1, :cond_0

    .line 290
    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 291
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p1}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 293
    return-void

    .line 287
    .end local v0    # "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 266
    if-eqz p1, :cond_1

    .line 270
    if-nez p2, :cond_0

    .line 271
    invoke-static {p0, p1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->removeProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 275
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {p1, p2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 267
    .end local v0    # "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected fillContext(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p2, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    sget-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/InetSocketAddress;

    if-ne v0, v1, :cond_6

    .line 215
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 216
    .local v0, "remoteAddress":Ljava/net/InetSocketAddress;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 218
    .local v1, "localAddress":Ljava/net/InetSocketAddress;
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_4
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_5
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v0    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v1    # "localAddress":Ljava/net/InetSocketAddress;
    :cond_6
    return-void
.end method

.method protected filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/mina/core/filterchain/IoFilterEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    .local v0, "currentCallDepth":I
    iget-object v1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getAndFillContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v1

    .line 153
    .local v1, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 156
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->fire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    if-nez v0, :cond_2

    .line 166
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 168
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 169
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    .line 171
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 173
    nop

    .line 174
    :goto_2
    return-void

    .line 164
    :catchall_0
    move-exception v2

    if-nez v0, :cond_4

    .line 166
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 167
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 168
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_3

    .line 169
    :cond_3
    iget-object v3, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_4

    .line 171
    :cond_4
    iget-object v3, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 173
    :goto_4
    throw v2
.end method
