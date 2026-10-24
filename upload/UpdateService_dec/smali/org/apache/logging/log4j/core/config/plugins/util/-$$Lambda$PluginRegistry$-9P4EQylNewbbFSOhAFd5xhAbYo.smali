.class public final synthetic Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(JILjava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;->f$0:J

    iput p3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;->f$1:I

    iput-object p4, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;->f$2:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;->f$0:J

    iget v2, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;->f$1:I

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/util/-$$Lambda$PluginRegistry$-9P4EQylNewbbFSOhAFd5xhAbYo;->f$2:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/plugins/util/PluginRegistry;->lambda$decodeCacheFiles$0(JILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
