.class public final synthetic Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$2:Z

    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$3:Z

    iput-object p5, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$2:Z

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$3:Z

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$RQKUn9CfctcyR6aWPs1HAXs2jaQ;->f$4:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->lambda$loadCacheFiles$1(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    move-result-object p1

    return-object p1
.end method
