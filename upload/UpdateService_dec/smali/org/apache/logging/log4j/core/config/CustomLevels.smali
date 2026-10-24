.class public final Lorg/apache/logging/log4j/core/config/CustomLevels;
.super Ljava/lang/Object;
.source "CustomLevels.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "CustomLevels"
    printObject = true
.end annotation


# instance fields
.field private final customLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/CustomLevelConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Lorg/apache/logging/log4j/core/config/CustomLevelConfig;)V
    .locals 2
    .param p1, "customLevels"    # [Lorg/apache/logging/log4j/core/config/CustomLevelConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "customLevels"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/CustomLevels;->customLevels:Ljava/util/List;

    .line 39
    return-void
.end method

.method public static createCustomLevels([Lorg/apache/logging/log4j/core/config/CustomLevelConfig;)Lorg/apache/logging/log4j/core/config/CustomLevels;
    .locals 2
    .param p0, "customLevels"    # [Lorg/apache/logging/log4j/core/config/CustomLevelConfig;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "CustomLevels"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "customLevels"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 50
    new-instance v0, Lorg/apache/logging/log4j/core/config/CustomLevels;

    if-nez p0, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/config/CustomLevels;-><init>([Lorg/apache/logging/log4j/core/config/CustomLevelConfig;)V

    return-object v0
.end method


# virtual methods
.method public getCustomLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/CustomLevelConfig;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CustomLevels;->customLevels:Ljava/util/List;

    return-object v0
.end method
