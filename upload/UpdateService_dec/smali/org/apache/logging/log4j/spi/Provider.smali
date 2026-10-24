.class public Lorg/apache/logging/log4j/spi/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# static fields
.field private static final DEFAULT_PRIORITY:Ljava/lang/Integer;

.field public static final FACTORY_PRIORITY:Ljava/lang/String; = "FactoryPriority"

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field public static final LOGGER_CONTEXT_FACTORY:Ljava/lang/String; = "LoggerContextFactory"

.field public static final THREAD_CONTEXT_MAP:Ljava/lang/String; = "ThreadContextMap"


# instance fields
.field private final classLoader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final className:Ljava/lang/String;

.field private final loggerContextFactoryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:Ljava/lang/Integer;

.field private final threadContextMap:Ljava/lang/String;

.field private final threadContextMapClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/ThreadContextMap;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/net/URL;

.field private final versions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/Provider;->DEFAULT_PRIORITY:Ljava/lang/Integer;

    .line 46
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/Provider;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "priority"    # Ljava/lang/Integer;
    .param p2, "versions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "priority",
            "versions",
            "loggerContextFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p3, "loggerContextFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/spi/Provider;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "priority"    # Ljava/lang/Integer;
    .param p2, "versions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "priority",
            "versions",
            "loggerContextFactoryClass",
            "threadContextMapClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/ThreadContextMap;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p3, "loggerContextFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/spi/LoggerContextFactory;>;"
    .local p4, "threadContextMapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/spi/ThreadContextMap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->url:Ljava/net/URL;

    .line 79
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->classLoader:Ljava/lang/ref/WeakReference;

    .line 80
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    .line 81
    iput-object p3, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    .line 82
    iput-object p4, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMapClass:Ljava/lang/Class;

    .line 83
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/apache/logging/log4j/spi/Provider;->versions:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "props",
            "url",
            "classLoader"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lorg/apache/logging/log4j/spi/Provider;->url:Ljava/net/URL;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->classLoader:Ljava/lang/ref/WeakReference;

    .line 60
    const-string v0, "FactoryPriority"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "weight":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/spi/Provider;->DEFAULT_PRIORITY:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    .line 62
    const-string v1, "LoggerContextFactory"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    .line 63
    const-string v1, "ThreadContextMap"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    .line 65
    iput-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMapClass:Ljava/lang/Class;

    .line 66
    iput-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->versions:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 225
    return v0

    .line 227
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 231
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/spi/Provider;

    .line 233
    .local v2, "provider":Lorg/apache/logging/log4j/spi/Provider;
    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 234
    :goto_0
    return v1

    .line 236
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 237
    :goto_1
    return v1

    .line 239
    :cond_5
    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    if-eqz v3, :cond_7

    .line 240
    :goto_2
    return v1

    .line 242
    :cond_7
    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->versions:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v0, v2, Lorg/apache/logging/log4j/spi/Provider;->versions:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_8
    iget-object v3, v2, Lorg/apache/logging/log4j/spi/Provider;->versions:Ljava/lang/String;

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    return v0

    .line 228
    .end local v2    # "provider":Lorg/apache/logging/log4j/spi/Provider;
    :cond_a
    :goto_4
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method public getThreadContextMap()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMapClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getVersions()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->versions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 247
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 248
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 249
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    .line 250
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/spi/Provider;->versions:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v2, v1

    .line 251
    .end local v0    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public loadLoggerContextFactory()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/LoggerContextFactory;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 125
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 128
    return-object v1

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->classLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 131
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_2

    .line 132
    return-object v1

    .line 135
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 136
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    const-class v3, Lorg/apache/logging/log4j/spi/LoggerContextFactory;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 141
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/spi/Provider;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/spi/Provider;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unable to create class {} specified in {}"

    invoke-interface {v3, v6, v4, v5, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public loadThreadContextMap()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/spi/ThreadContextMap;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMapClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 164
    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 167
    return-object v1

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/Provider;->classLoader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 170
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_2

    .line 171
    return-object v1

    .line 174
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 175
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    const-class v3, Lorg/apache/logging/log4j/spi/ThreadContextMap;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 180
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/spi/Provider;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/spi/Provider;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unable to create class {} specified in {}"

    invoke-interface {v3, v6, v4, v5, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provider["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/logging/log4j/spi/Provider;->DEFAULT_PRIORITY:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_0

    .line 197
    const-string v1, "priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->priority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 200
    const-string v1, "threadContextMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMapClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 202
    const-string v1, "threadContextMapClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->threadContextMapClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 205
    const-string v1, "className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    if-eqz v1, :cond_4

    .line 207
    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->loggerContextFactoryClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->url:Ljava/net/URL;

    if-eqz v1, :cond_5

    .line 210
    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    :cond_5
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/Provider;->classLoader:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    move-object v2, v1

    .local v2, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_6

    goto :goto_2

    .line 216
    :cond_6
    const-string v1, ", classLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 214
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_7
    :goto_2
    const-string v1, ", classLoader=null(not reachable)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :goto_3
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
