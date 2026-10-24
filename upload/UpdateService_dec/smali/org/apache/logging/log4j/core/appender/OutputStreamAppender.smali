.class public final Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "OutputStreamAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;,
        Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;
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
    name = "OutputStream"
    printObject = true
.end annotation


# static fields
.field private static factory:Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;->factory:Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .param p5, "ignoreExceptions"    # Z
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
            "name",
            "layout",
            "filter",
            "manager",
            "ignoreExceptions",
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
            "Z[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 172
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Layout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .param p5, "x4"    # Z
    .param p6, "x5"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$1;

    .line 41
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/OutputStream;ZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 1
    .param p0, "x0"    # Ljava/io/OutputStream;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lorg/apache/logging/log4j/core/Layout;

    .line 41
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;->getManager(Ljava/io/OutputStream;ZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    return-object v0
.end method

.method public static createAppender(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/io/OutputStream;Ljava/lang/String;ZZ)Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;
    .locals 8
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p2, "target"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "follow"    # Z
    .param p5, "ignore"    # Z
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
            "target",
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
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 146
    .local p0, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-nez p3, :cond_0

    .line 147
    sget-object v0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No name provided for OutputStreamAppender"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    if-nez p0, :cond_1

    .line 151
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createDefaultLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object p0

    .line 153
    :cond_1
    new-instance v7, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;

    invoke-static {p2, p4, p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;->getManager(Ljava/io/OutputStream;ZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v7
.end method

.method private static getManager(Ljava/io/OutputStream;ZLorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
    .locals 5
    .param p0, "target"    # Ljava/io/OutputStream;
    .param p1, "follow"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "target",
            "follow",
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Z",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;"
        }
    .end annotation

    .line 158
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-nez p0, :cond_0

    invoke-static {}, Lorg/apache/logging/log4j/core/util/NullOutputStream;->getInstance()Lorg/apache/logging/log4j/core/util/NullOutputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/CloseShieldOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/util/CloseShieldOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v0, "os":Ljava/io/OutputStream;
    :goto_0
    if-nez p0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p0

    .line 160
    .local v1, "targetRef":Ljava/io/OutputStream;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "managerName":Ljava/lang/String;
    new-instance v3, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;

    invoke-direct {v3, v0, v2, p2}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$FactoryData;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;)V

    sget-object v4, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender;->factory:Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$OutputStreamManagerFactory;

    invoke-static {v2, v3, v4}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v3

    return-object v3
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 167
    new-instance v0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/OutputStreamAppender$Builder;

    return-object v0
.end method
