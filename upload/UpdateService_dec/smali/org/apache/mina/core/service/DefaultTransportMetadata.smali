.class public Lorg/apache/mina/core/service/DefaultTransportMetadata;
.super Ljava/lang/Object;
.source "DefaultTransportMetadata.java"

# interfaces
.implements Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private final addressType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionless:Z

.field private final envelopeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fragmentation:Z

.field private final name:Ljava/lang/String;

.field private final providerName:Ljava/lang/String;

.field private final sessionConfigType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "connectionless"    # Z
    .param p4, "fragmentation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 64
    .local p5, "addressType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/net/SocketAddress;>;"
    .local p6, "sessionConfigType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/session/IoSessionConfig;>;"
    .local p7, "envelopeTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_8

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->providerName:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    if-eqz p2, :cond_6

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    if-eqz p5, :cond_4

    .line 90
    if-eqz p7, :cond_3

    .line 94
    array-length v0, p7

    if-eqz v0, :cond_2

    .line 98
    if-eqz p6, :cond_1

    .line 102
    iput-boolean p3, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->connectionless:Z

    .line 103
    iput-boolean p4, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->fragmentation:Z

    .line 104
    iput-object p5, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->addressType:Ljava/lang/Class;

    .line 105
    iput-object p6, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->sessionConfigType:Ljava/lang/Class;

    .line 107
    new-instance v0, Lorg/apache/mina/util/IdentityHashSet;

    invoke-direct {v0}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    .line 108
    .local v0, "newEnvelopeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    array-length v1, p7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p7, v2

    .line 109
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->envelopeTypes:Ljava/util/Set;

    .line 112
    return-void

    .line 99
    .end local v0    # "newEnvelopeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionConfigType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "envelopeTypes is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "envelopeTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addressType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerName is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddressType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->addressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnvelopeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->envelopeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionConfigType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->sessionConfigType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasFragmentation()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->fragmentation:Z

    return v0
.end method

.method public isConnectionless()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->connectionless:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    return-object v0
.end method
