.class Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;
.super Ljava/lang/Object;
.source "JmsManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JmsManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/mom/JmsManager;",
        "Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;

    .line 123
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;-><init>()V

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

    .line 123
    check-cast p2, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;)Lorg/apache/logging/log4j/core/appender/mom/JmsManager;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;
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

    .line 127
    invoke-static {}, Lorg/apache/logging/log4j/core/net/JndiManager;->isJndiJmsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$JmsManagerConfiguration;Lorg/apache/logging/log4j/core/appender/mom/JmsManager$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$100()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v2

    const-string v3, "Error creating JmsManager using JmsManagerConfiguration [{}]"

    invoke-virtual {v2, v3, p2, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    return-object v1

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/mom/JmsManager;->access$200()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v2, "JNDI must be enabled by setting log4j2.enableJndiJms=true"

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 136
    return-object v1
.end method
