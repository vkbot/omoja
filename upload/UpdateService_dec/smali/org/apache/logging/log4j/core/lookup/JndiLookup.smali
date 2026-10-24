.class public Lorg/apache/logging/log4j/core/lookup/JndiLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.source "JndiLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "jndi"
.end annotation


# static fields
.field static final CONTAINER_JNDI_RESOURCE_PATH_PREFIX:Ljava/lang/String; = "java:comp/env/"

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final LOOKUP:Lorg/apache/logging/log4j/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/JndiLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 38
    const-string v0, "LOOKUP"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/JndiLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;-><init>()V

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiLookupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JNDI must be enabled by setting log4j2.enableJndiLookup=true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertJndiName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jndiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "jndiName"
        }
    .end annotation

    .line 81
    const-string v0, "java:comp/env/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    return-object p1
.end method


# virtual methods
.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "key"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 62
    return-object v0

    .line 64
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/lookup/JndiLookup;->convertJndiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "jndiName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->getDefaultManager()Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .local v2, "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/net/JndiManager;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/JndiManager;->close()V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    :cond_1
    return-object v3

    .line 65
    :catchall_0
    move-exception v3

    .end local v1    # "jndiName":Ljava/lang/String;
    .end local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/lookup/JndiLookup;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "key":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .restart local v1    # "jndiName":Ljava/lang/String;
    .restart local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/lookup/JndiLookup;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/JndiManager;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "jndiName":Ljava/lang/String;
    .end local p0    # "this":Lorg/apache/logging/log4j/core/lookup/JndiLookup;
    .end local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .end local p2    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    throw v4
    :try_end_5
    .catch Ljavax/naming/NamingException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v2    # "jndiManager":Lorg/apache/logging/log4j/core/net/JndiManager;
    .restart local v1    # "jndiName":Ljava/lang/String;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/lookup/JndiLookup;
    .restart local p1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    .restart local p2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljavax/naming/NamingException;
    sget-object v3, Lorg/apache/logging/log4j/core/lookup/JndiLookup;->LOGGER:Lorg/apache/logging/log4j/Logger;

    sget-object v4, Lorg/apache/logging/log4j/core/lookup/JndiLookup;->LOOKUP:Lorg/apache/logging/log4j/Marker;

    const-string v5, "Error looking up JNDI resource [{}]."

    invoke-interface {v3, v4, v5, v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method
