.class public final Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "ConsoleAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;,
        Lorg/apache/logging/log4j/core/appender/ConsoleAppender$SystemOutStream;,
        Lorg/apache/logging/log4j/core/appender/ConsoleAppender$SystemErrStream;,
        Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;,
        Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Console"
    printObject = true
.end annotation


# static fields
.field private static final COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final DEFAULT_TARGET:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

.field private static final JANSI_CLASS:Ljava/lang/String; = "org.fusesource.jansi.WindowsAnsiOutputStream"

.field public static final PLUGIN_NAME:Ljava/lang/String; = "Console"

.field private static factory:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;


# instance fields
.field private final target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->factory:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->SYSTEM_OUT:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    sput-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->DEFAULT_TARGET:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;ZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .param p5, "ignoreExceptions"    # Z
    .param p6, "target"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .param p7, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "layout",
            "filter",
            "manager",
            "ignoreExceptions",
            "target",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;",
            "Z",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 96
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v6, p7

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 97
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;ZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/ConsoleAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Layout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .param p7, "x6"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p8, "x7"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$1;

    .line 52
    invoke-direct/range {p0 .. p7}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;ZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .locals 1

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->DEFAULT_TARGET:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/logging/log4j/core/Layout;

    .line 52
    invoke-static {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->getManager(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    return-object v0
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "string"
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createAppender(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
    .locals 14
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p2, "targetStr"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "follow"    # Ljava/lang/String;
    .param p5, "ignore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "layout",
            "filter",
            "targetStr",
            "name",
            "follow",
            "ignore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    .local p0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-nez p3, :cond_0

    .line 121
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No name provided for ConsoleAppender"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    if-nez p0, :cond_1

    .line 125
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createDefaultLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v0

    move-object v8, v0

    .end local p0    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local v0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    goto :goto_0

    .line 124
    .end local v0    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .restart local p0    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    :cond_1
    move-object v8, p0

    .line 127
    .end local p0    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local v8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 128
    .local v9, "isFollow":Z
    const/4 v0, 0x1

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 129
    .local v11, "ignoreExceptions":Z
    if-nez p2, :cond_2

    sget-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->DEFAULT_TARGET:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    goto :goto_1

    :cond_2
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    move-result-object v0

    :goto_1
    move-object v12, v0

    .line 130
    .local v12, "target":Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    new-instance v13, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;

    const/4 v0, 0x0

    invoke-static {v12, v9, v0, v8}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->getManager(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, v13

    move-object/from16 v1, p3

    move-object v2, v8

    move-object v3, p1

    move v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;ZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v13
.end method

.method public static createAppender(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;Ljava/lang/String;ZZZ)Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
    .locals 9
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p2, "target"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "follow"    # Z
    .param p5, "direct"    # Z
    .param p6, "ignoreExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "layout",
            "filter",
            "target",
            "name",
            "follow",
            "direct",
            "ignoreExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    .local p0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 160
    sget-object v1, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No name provided for ConsoleAppender"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 161
    return-object v0

    .line 163
    :cond_0
    if-nez p0, :cond_1

    .line 164
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createDefaultLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object p0

    .line 166
    :cond_1
    if-nez p2, :cond_2

    sget-object v1, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->SYSTEM_OUT:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    move-object p2, v1

    .line 167
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 168
    sget-object v1, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Cannot use both follow and direct on ConsoleAppender"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 169
    return-object v0

    .line 171
    :cond_3
    new-instance v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;

    invoke-static {p2, p4, p5, p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->getManager(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v5

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move v6, p6

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;ZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v0
.end method

.method public static createDefaultAppenderForLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender;"
        }
    .end annotation

    .line 176
    .local p0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    new-instance v8, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultConsole-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->DEFAULT_TARGET:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    .line 177
    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->getDefaultManager(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v4

    sget-object v6, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->DEFAULT_TARGET:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;ZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 176
    return-object v8
.end method

.method private static getDefaultManager(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 4
    .param p0, "target"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .param p1, "follow"    # Z
    .param p2, "direct"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "target",
            "follow",
            "direct",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;"
        }
    .end annotation

    .line 230
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static {p1, p2, p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->getOutputStream(ZZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;)Ljava/io/OutputStream;

    move-result-object v0

    .line 233
    .local v0, "os":Ljava/io/OutputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "managerName":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;

    invoke-direct {v2, v0, v1, p3}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;)V

    sget-object v3, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->factory:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;

    invoke-static {v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v2

    return-object v2
.end method

.method private static getManager(Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;ZZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 4
    .param p0, "target"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .param p1, "follow"    # Z
    .param p2, "direct"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "target",
            "follow",
            "direct",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;"
        }
    .end annotation

    .line 239
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static {p1, p2, p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->getOutputStream(ZZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;)Ljava/io/OutputStream;

    move-result-object v0

    .line 240
    .local v0, "os":Ljava/io/OutputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "managerName":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;

    invoke-direct {v2, v0, v1, p3}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$FactoryData;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;)V

    sget-object v3, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->factory:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$ConsoleManagerFactory;

    invoke-static {v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v2

    return-object v2
.end method

.method private static getOutputStream(ZZLorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;)Ljava/io/OutputStream;
    .locals 9
    .param p0, "follow"    # Z
    .param p1, "direct"    # Z
    .param p2, "target"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "follow",
            "direct",
            "target"
        }
    .end annotation

    .line 245
    const-string v0, "org.fusesource.jansi.WindowsAnsiOutputStream"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "enc":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->SYSTEM_OUT:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_2

    if-eqz p1, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v4, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v2, Ljava/io/PrintStream;

    new-instance v4, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$SystemOutStream;

    invoke-direct {v4}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$SystemOutStream;-><init>()V

    invoke-direct {v2, v4, v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v4, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    new-instance v2, Ljava/io/PrintStream;

    new-instance v4, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$SystemErrStream;

    invoke-direct {v4}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$SystemErrStream;-><init>()V

    invoke-direct {v2, v4, v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 255
    .local v2, "outputStream":Ljava/io/OutputStream;
    :goto_0
    new-instance v4, Lorg/apache/logging/log4j/core/util/CloseShieldOutputStream;

    invoke-direct {v4, v2}, Lorg/apache/logging/log4j/core/util/CloseShieldOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, v4

    .line 258
    nop

    .line 259
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v4

    .line 260
    .local v4, "propsUtil":Lorg/apache/logging/log4j/util/PropertiesUtil;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/util/PropertiesUtil;->isOsWindows()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "log4j.skipJansi"

    invoke-virtual {v4, v5, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    .line 265
    :cond_5
    :try_start_1
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 266
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/io/OutputStream;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 267
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v7, Lorg/apache/logging/log4j/core/util/CloseShieldOutputStream;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    invoke-direct {v7, v3}, Lorg/apache/logging/log4j/core/util/CloseShieldOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    .line 272
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v3

    .line 273
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to instantiate {} due to {}"

    invoke-interface {v5, v7, v0, v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 270
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 271
    .local v3, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "{} is missing the proper constructor"

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .end local v3    # "nsme":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 268
    :catch_2
    move-exception v3

    .line 269
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "Jansi is not installed, cannot find {}"

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    .end local v3    # "cnfe":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 275
    :goto_2
    return-object v2

    .line 261
    :cond_6
    :goto_3
    return-object v2

    .line 256
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "propsUtil":Lorg/apache/logging/log4j/util/PropertiesUtil;
    :catch_3
    move-exception v0

    .line 257
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported default encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 182
    new-instance v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Builder;

    return-object v0
.end method


# virtual methods
.method public getTarget()Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender;->target:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    return-object v0
.end method
