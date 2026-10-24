.class public final synthetic Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;->f$0:J

    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;->f$1:Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    iput-object p4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;->f$0:J

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;->f$1:Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$lsNRKSYRZtCUcByVFTSA5hQuStc;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->lambda$loadFromPackage$1(JLorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
