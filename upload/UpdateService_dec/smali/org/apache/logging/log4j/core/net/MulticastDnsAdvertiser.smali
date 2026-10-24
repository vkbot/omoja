.class public Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;
.super Ljava/lang/Object;
.source "MulticastDnsAdvertiser.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/net/Advertiser;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "advertiser"
    name = "multicastdns"
    printObject = false
.end annotation


# static fields
.field private static final DEFAULT_PORT:I = 0x11cb

.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MAX_LENGTH:I = 0xff

.field private static jmDNS:Ljava/lang/Object;

.field private static jmDNSClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static serviceInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 49
    invoke-static {}, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->initializeJmDns()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 11
    .param p0, "zone"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "zone",
            "port",
            "name",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 161
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p3}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 163
    .local v0, "hashtableProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->serviceInfoClass:Ljava/lang/Class;

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-class v4, Ljava/util/Hashtable;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p2, v2, v6

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v0, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object v1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to get ServiceInfo constructor"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to construct ServiceInfo instance"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    nop

    .line 170
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 12
    .param p0, "zone"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "zone",
            "port",
            "name",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 176
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->serviceInfoClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const-class v5, Ljava/util/Map;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    .line 178
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p2, v2, v7

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object p3, v2, v11

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to find create method"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to invoke create method"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    nop

    .line 185
    :goto_0
    return-object v0
.end method

.method private static createJmDnsVersion1()Ljava/lang/Object;
    .locals 3

    .line 138
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNSClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to instantiate JMDNS"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createJmDnsVersion3()Ljava/lang/Object;
    .locals 4

    .line 147
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 148
    .local v1, "jmDNSCreateMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    .end local v1    # "jmDNSCreateMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to get create method"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Unable to invoke create method"

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    nop

    .line 154
    :goto_0
    return-object v0
.end method

.method private static initializeJmDns()Ljava/lang/Object;
    .locals 4

    .line 190
    :try_start_0
    const-string v0, "javax.jmdns.JmDNS"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNSClass:Ljava/lang/Class;

    .line 191
    const-string v0, "javax.jmdns.ServiceInfo"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->serviceInfoClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, "isVersion3":Z
    :try_start_1
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    const/4 v0, 0x1

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 202
    :goto_0
    if-eqz v0, :cond_0

    .line 203
    :try_start_2
    invoke-static {}, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->createJmDnsVersion3()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 205
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->createJmDnsVersion1()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 206
    .end local v0    # "isVersion3":Z
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "JmDNS or serviceInfo class not found"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public advertise(Ljava/util/Map;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "truncatedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "protocol"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "protocol":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "._log4j._"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    const-string v3, "tcp"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".local."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "zone":Ljava/lang/String;
    const-string v3, "port"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "portString":Ljava/lang/String;
    const/16 v4, 0x11cb

    invoke-static {v3, v4}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "port":I
    const-string v5, "name"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 87
    .local v5, "name":Ljava/lang/String;
    sget-object v6, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNS:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 88
    const/4 v6, 0x0

    .line 91
    .local v6, "isVersion3":Z
    const/4 v7, 0x0

    :try_start_0
    sget-object v8, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNSClass:Ljava/lang/Class;

    const-string v9, "create"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v6, 0x1

    .line 95
    goto :goto_2

    .line 93
    :catch_0
    move-exception v8

    .line 97
    :goto_2
    if-eqz v6, :cond_3

    .line 98
    invoke-static {v2, v4, v5, v0}, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "serviceInfo":Ljava/lang/Object;
    goto :goto_3

    .line 100
    .end local v8    # "serviceInfo":Ljava/lang/Object;
    :cond_3
    invoke-static {v2, v4, v5, v0}, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    .line 104
    .restart local v8    # "serviceInfo":Ljava/lang/Object;
    :goto_3
    :try_start_1
    sget-object v9, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNSClass:Ljava/lang/Class;

    const-string v10, "registerService"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v13, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->serviceInfoClass:Ljava/lang/Class;

    aput-object v13, v12, v7

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 105
    .local v9, "method":Ljava/lang/reflect/Method;
    sget-object v10, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNS:Ljava/lang/Object;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    nop

    .end local v9    # "method":Ljava/lang/reflect/Method;
    goto :goto_4

    .line 108
    :catch_1
    move-exception v7

    .line 109
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    sget-object v9, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "No registerService method"

    invoke-interface {v9, v10, v7}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 106
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v7

    .line 107
    .local v7, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v9, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "Unable to invoke registerService method"

    invoke-interface {v9, v10, v7}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v7    # "e":Ljava/lang/ReflectiveOperationException;
    nop

    .line 111
    :goto_4
    return-object v8

    .line 113
    .end local v6    # "isVersion3":Z
    .end local v8    # "serviceInfo":Ljava/lang/Object;
    :cond_4
    sget-object v6, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "JMDNS not available - will not advertise ZeroConf support"

    invoke-interface {v6, v7}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 114
    const/4 v6, 0x0

    return-object v6
.end method

.method public unadvertise(Ljava/lang/Object;)V
    .locals 6
    .param p1, "serviceInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serviceInfo"
        }
    .end annotation

    .line 124
    sget-object v0, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNS:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNSClass:Ljava/lang/Class;

    const-string v1, "unregisterService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->serviceInfoClass:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 127
    .local v0, "method":Ljava/lang/reflect/Method;
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->jmDNS:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No unregisterService method"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lorg/apache/logging/log4j/core/net/MulticastDnsAdvertiser;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Unable to invoke unregisterService method"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :goto_0
    return-void
.end method
