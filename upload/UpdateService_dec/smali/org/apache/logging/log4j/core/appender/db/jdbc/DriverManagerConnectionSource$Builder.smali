.class public Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;
.super Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
.source "DriverManagerConnectionSource.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 43
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->build()Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource;
    .locals 8

    .line 48
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder<TB;>;"
    new-instance v7, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->getDriverClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->getConnectionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->getConnectionString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->getUserName()[C

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->getPassword()[C

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource$Builder;->getProperties()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/DriverManagerConnectionSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[C[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 48
    return-object v7
.end method
