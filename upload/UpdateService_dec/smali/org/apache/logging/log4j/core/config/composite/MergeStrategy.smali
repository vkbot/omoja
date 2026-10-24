.class public interface abstract Lorg/apache/logging/log4j/core/config/composite/MergeStrategy;
.super Ljava/lang/Object;
.source "MergeStrategy.java"


# virtual methods
.method public abstract mergConfigurations(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/plugins/util/PluginManager;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "source",
            "pluginManager"
        }
    .end annotation
.end method

.method public abstract mergeRootProperties(Lorg/apache/logging/log4j/core/config/Node;Lorg/apache/logging/log4j/core/config/AbstractConfiguration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootNode",
            "configuration"
        }
    .end annotation
.end method
