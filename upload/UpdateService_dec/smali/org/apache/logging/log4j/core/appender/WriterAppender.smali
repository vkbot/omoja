.class public final Lorg/apache/logging/log4j/core/appender/WriterAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;
.source "WriterAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;,
        Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender<",
        "Lorg/apache/logging/log4j/core/appender/WriterManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Writer"
    printObject = true
.end annotation


# static fields
.field private static factory:Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/WriterAppender$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/WriterAppender;->factory:Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/WriterManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/appender/WriterManager;
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

    .line 163
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractWriterAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/WriterManager;)V

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/WriterManager;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/WriterAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/StringLayout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/WriterManager;
    .param p5, "x4"    # Z
    .param p6, "x5"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/WriterAppender$1;

    .line 38
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/WriterAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/WriterManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/logging/log4j/core/appender/WriterAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/Writer;ZLorg/apache/logging/log4j/core/StringLayout;)Lorg/apache/logging/log4j/core/appender/WriterManager;
    .locals 1
    .param p0, "x0"    # Ljava/io/Writer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lorg/apache/logging/log4j/core/StringLayout;

    .line 38
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/WriterAppender;->getManager(Ljava/io/Writer;ZLorg/apache/logging/log4j/core/StringLayout;)Lorg/apache/logging/log4j/core/appender/WriterManager;

    move-result-object v0

    return-object v0
.end method

.method public static createAppender(Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;Ljava/io/Writer;Ljava/lang/String;ZZ)Lorg/apache/logging/log4j/core/appender/WriterAppender;
    .locals 8
    .param p0, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p2, "target"    # Ljava/io/Writer;
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

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 139
    if-nez p3, :cond_0

    .line 140
    sget-object v0, Lorg/apache/logging/log4j/core/appender/WriterAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No name provided for WriterAppender"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    if-nez p0, :cond_1

    .line 144
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createDefaultLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object p0

    .line 146
    :cond_1
    new-instance v7, Lorg/apache/logging/log4j/core/appender/WriterAppender;

    invoke-static {p2, p4, p0}, Lorg/apache/logging/log4j/core/appender/WriterAppender;->getManager(Ljava/io/Writer;ZLorg/apache/logging/log4j/core/StringLayout;)Lorg/apache/logging/log4j/core/appender/WriterManager;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/appender/WriterAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/WriterManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v7
.end method

.method private static getManager(Ljava/io/Writer;ZLorg/apache/logging/log4j/core/StringLayout;)Lorg/apache/logging/log4j/core/appender/WriterManager;
    .locals 4
    .param p0, "target"    # Ljava/io/Writer;
    .param p1, "follow"    # Z
    .param p2, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
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

    .line 150
    new-instance v0, Lorg/apache/logging/log4j/core/util/CloseShieldWriter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/util/CloseShieldWriter;-><init>(Ljava/io/Writer;)V

    .line 151
    .local v0, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "managerName":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;

    invoke-direct {v2, v0, v1, p2}, Lorg/apache/logging/log4j/core/appender/WriterAppender$FactoryData;-><init>(Ljava/io/Writer;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;)V

    sget-object v3, Lorg/apache/logging/log4j/core/appender/WriterAppender;->factory:Lorg/apache/logging/log4j/core/appender/WriterAppender$WriterManagerFactory;

    invoke-static {v1, v2, v3}, Lorg/apache/logging/log4j/core/appender/WriterManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/WriterManager;

    move-result-object v2

    return-object v2
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 158
    new-instance v0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/WriterAppender$Builder;

    return-object v0
.end method
