.class public Lorg/apache/mina/filter/firewall/BlacklistFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "BlacklistFilter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    return-void
.end method

.method private blockSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 261
    sget-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Remote address in the blacklist; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 262
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 263
    return-void
.end method

.method private isBlocked(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 266
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 268
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    .line 269
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 272
    .local v1, "address":Ljava/net/InetAddress;
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/filter/firewall/Subnet;

    .line 273
    .local v3, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {v3, v1}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    const/4 v2, 0x1

    return v2

    .line 276
    .end local v3    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :cond_0
    goto :goto_0

    .line 279
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 136
    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 141
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adress to block can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public block(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 2
    .param p1, "subnet"    # Lorg/apache/mina/filter/firewall/Subnet;

    .line 149
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public event(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/FilterEvent;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "event"    # Lorg/apache/mina/filter/FilterEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->event(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/FilterEvent;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 193
    :goto_0
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;

    .line 239
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 245
    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 258
    :goto_0
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 200
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 206
    :goto_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 232
    :goto_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 219
    :goto_0
    return-void
.end method

.method public setBlacklist(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 107
    .local v1, "address":Ljava/net/InetAddress;
    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    .line 108
    .end local v1    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 109
    :cond_0
    return-void

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlacklist([Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .line 59
    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 66
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    .line 65
    .end local v2    # "address":Ljava/net/InetAddress;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubnetBlacklist(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "subnets":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/mina/filter/firewall/Subnet;>;"
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/firewall/Subnet;

    .line 126
    .local v1, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 127
    .end local v1    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    goto :goto_0

    .line 128
    :cond_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnets must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubnetBlacklist([Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 3
    .param p1, "subnets"    # [Lorg/apache/mina/filter/firewall/Subnet;

    .line 78
    if-eqz p1, :cond_1

    .line 82
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 85
    .local v2, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 84
    .end local v2    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnets must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unblock(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 162
    if-eqz p1, :cond_0

    .line 166
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->unblock(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 167
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adress to unblock can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unblock(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 2
    .param p1, "subnet"    # Lorg/apache/mina/filter/firewall/Subnet;

    .line 175
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
