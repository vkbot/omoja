.class public final Lorg/apache/logging/log4j/core/config/AppenderRef;
.super Ljava/lang/Object;
.source "AppenderRef.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "AppenderRef"
    printObject = true
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    value = {
        "appender-ref"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final filter:Lorg/apache/logging/log4j/core/Filter;

.field private final level:Lorg/apache/logging/log4j/Level;

.field private final ref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/AppenderRef;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ref",
            "level",
            "filter"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/AppenderRef;->ref:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/AppenderRef;->level:Lorg/apache/logging/log4j/Level;

    .line 44
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/AppenderRef;->filter:Lorg/apache/logging/log4j/core/Filter;

    .line 45
    return-void
.end method

.method public static createAppenderRef(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/config/AppenderRef;
    .locals 2
    .param p0, "ref"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "ref"
        .end annotation
    .end param
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "level"
        .end annotation
    .end param
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Filter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ref",
            "level",
            "filter"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 77
    if-nez p0, :cond_0

    .line 78
    sget-object v0, Lorg/apache/logging/log4j/core/config/AppenderRef;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Appender references must contain a reference"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/AppenderRef;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/AppenderRef;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    return-object v0
.end method


# virtual methods
.method public getFilter()Lorg/apache/logging/log4j/core/Filter;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderRef;->filter:Lorg/apache/logging/log4j/core/Filter;

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderRef;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderRef;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderRef;->ref:Ljava/lang/String;

    return-object v0
.end method
