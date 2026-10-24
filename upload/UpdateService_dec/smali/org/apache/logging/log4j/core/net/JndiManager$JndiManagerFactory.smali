.class Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;
.super Ljava/lang/Object;
.source "JndiManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/JndiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JndiManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/net/JndiManager;",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/net/JndiManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/net/JndiManager$1;

    .line 246
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 246
    check-cast p2, Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/net/JndiManager$JndiManagerFactory;->createManager(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/net/JndiManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/logging/log4j/core/net/JndiManager;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 250
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/logging/log4j/core/net/JndiManager;

    new-instance v2, Ljavax/naming/InitialContext;

    invoke-direct {v2, p2}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/logging/log4j/core/net/JndiManager;-><init>(Ljava/lang/String;Ljavax/naming/InitialContext;Lorg/apache/logging/log4j/core/net/JndiManager$1;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljavax/naming/NamingException;
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "Error creating JNDI InitialContext for \'{}\'."

    invoke-interface {v2, v3, p1, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    return-object v0

    .line 251
    .end local v1    # "e":Ljavax/naming/NamingException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "log4j2.enableJndi"

    aput-object v3, v1, v2

    const-string v2, "JNDI must be enabled by setting one of the %s* properties to true"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
