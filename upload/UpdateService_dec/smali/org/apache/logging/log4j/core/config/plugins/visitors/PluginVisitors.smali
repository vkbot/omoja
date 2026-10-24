.class public final Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitors;
.super Ljava/lang/Object;
.source "PluginVisitors.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitors;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static findVisitor(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 45
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/PluginVisitorStrategy;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginVisitorStrategy;

    .line 46
    .local v0, "strategy":Lorg/apache/logging/log4j/core/config/plugins/PluginVisitorStrategy;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return-object v1

    .line 50
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginVisitorStrategy;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginVisitors;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginVisitorStrategy;->value()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Error loading PluginVisitor [{}] for annotation [{}]."

    invoke-interface {v3, v5, v4, p0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-object v1
.end method
