.class public Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;
.super Ljava/util/concurrent/CopyOnWriteArraySet;
.source "RemoteIpFilter.java"

# interfaces
.implements Lorg/apache/ftpserver/ipfilter/SessionFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArraySet<",
        "Lorg/apache/mina/filter/firewall/Subnet;",
        ">;",
        "Lorg/apache/ftpserver/ipfilter/SessionFilter;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43d2709ebb57872fL


# instance fields
.field LOGGER:Lorg/slf4j/Logger;

.field private type:Lorg/apache/ftpserver/ipfilter/IpFilterType;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/util/Collection;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .param p2, "addresses"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 48
    const-class v0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 100
    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 101
    if-eqz p2, :cond_1

    .line 102
    const-string v0, "[\\s,]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 104
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 105
    invoke-virtual {p0, v3}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->add(Ljava/lang/String;)Z

    .line 103
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "tokens":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Created DefaultIpFilter of type {} with the subnets {}"

    invoke-interface {v0, v1, p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ftpserver/ipfilter/IpFilterType;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/mina/filter/firewall/Subnet;>;"
    invoke-direct {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 48
    const-class v0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 81
    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 82
    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 7
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 168
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 169
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 170
    .local v0, "address":Ljava/net/InetAddress;
    sget-object v1, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter$1;->$SwitchMap$org$apache$ftpserver$ipfilter$IpFilterType:[I

    iget-object v2, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v2}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    if-ne v1, v2, :cond_6

    .line 191
    invoke-virtual {p0}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 194
    const-string v3, "Allowing connection from {} because blacklist is empty"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_0
    return v4

    .line 200
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/filter/firewall/Subnet;

    .line 201
    .local v5, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {v5, v0}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 202
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v5, v2, v4

    .line 204
    const-string v4, "Denying connection from {} because it matches with the blacklist subnet {}"

    invoke-interface {v1, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_2
    return v3

    .line 210
    .end local v5    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :cond_3
    goto :goto_0

    .line 211
    :cond_4
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 213
    const-string v3, "Allowing connection from {} because it does not match any of the blacklist subnets"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_5
    return v4

    .line 219
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unimplemented filter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_7
    invoke-virtual {p0}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/filter/firewall/Subnet;

    .line 173
    .restart local v5    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {v5, v0}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 174
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 175
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v5, v2, v4

    .line 176
    const-string v3, "Allowing connection from {} because it matches with the whitelist subnet {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_8
    return v4

    .line 182
    .end local v5    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :cond_9
    goto :goto_1

    .line 183
    :cond_a
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 184
    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->LOGGER:Lorg/slf4j/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 185
    const-string v4, "Denying connection from {} because it does not match any of the whitelist subnets"

    invoke-interface {v1, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_b
    return v3
.end method

.method public add(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 158
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "tokens":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 160
    new-instance v2, Lorg/apache/mina/filter/firewall/Subnet;

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aget-object v1, v0, v1

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    .line 160
    invoke-virtual {p0, v2}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 163
    :cond_0
    new-instance v1, Lorg/apache/mina/filter/firewall/Subnet;

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 155
    .end local v0    # "tokens":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IP Address or Subnet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-object v0
.end method

.method public setType(Lorg/apache/ftpserver/ipfilter/IpFilterType;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 132
    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 133
    return-void
.end method
