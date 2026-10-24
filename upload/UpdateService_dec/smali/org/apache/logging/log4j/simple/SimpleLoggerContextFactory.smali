.class public Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;
.super Ljava/lang/Object;
.source "SimpleLoggerContextFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerContextFactory;


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContextFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .param p4, "currentContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext"
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContext;

    return-object v0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "externalContext"    # Ljava/lang/Object;
    .param p4, "currentContext"    # Z
    .param p5, "configLocation"    # Ljava/net/URI;
    .param p6, "name"    # Ljava/lang/String;
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
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/apache/logging/log4j/simple/SimpleLoggerContext;->INSTANCE:Lorg/apache/logging/log4j/simple/SimpleLoggerContext;

    return-object v0
.end method

.method public isClassLoaderDependent()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public removeContext(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .locals 0
    .param p1, "removeContext"    # Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "removeContext"
        }
    .end annotation

    .line 48
    return-void
.end method
