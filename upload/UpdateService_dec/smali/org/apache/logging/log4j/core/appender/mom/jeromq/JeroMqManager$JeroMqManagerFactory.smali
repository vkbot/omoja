.class Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;
.super Ljava/lang/Object;
.source "JeroMqManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JeroMqManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;",
        "Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;

    .line 217
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;-><init>()V

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

    .line 217
    check-cast p2, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;)Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;
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

    .line 220
    new-instance v0, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$JeroMqConfiguration;Lorg/apache/logging/log4j/core/appender/mom/jeromq/JeroMqManager$1;)V

    return-object v0
.end method
