.class public Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "ScriptAppenderSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "ScriptAppenderSelector"
    printObject = true
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "filter",
            "layout",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 144
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget-object v5, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 145
    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$500()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$600()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 139
    new-instance v0, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/ScriptAppenderSelector$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 150
    return-void
.end method
