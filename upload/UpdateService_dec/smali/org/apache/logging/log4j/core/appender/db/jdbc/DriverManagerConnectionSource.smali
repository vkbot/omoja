.class public Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource;
.super Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;
.source "DriverManagerConnectionSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "connectionSource"
    name = "DriverManager"
    printObject = true
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[C[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 0
    .param p1, "driverClassName"    # Ljava/lang/String;
    .param p2, "connectionString"    # Ljava/lang/String;
    .param p3, "actualConnectionString"    # Ljava/lang/String;
    .param p4, "userName"    # [C
    .param p5, "password"    # [C
    .param p6, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "driverClassName",
            "connectionString",
            "actualConnectionString",
            "userName",
            "password",
            "properties"
        }
    .end annotation

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[C[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 62
    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->asBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;

    return-object v0
.end method
