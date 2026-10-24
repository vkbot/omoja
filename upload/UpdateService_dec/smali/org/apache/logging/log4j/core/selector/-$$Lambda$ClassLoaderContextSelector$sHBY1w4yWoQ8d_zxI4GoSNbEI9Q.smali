.class public final synthetic Lorg/apache/logging/log4j/core/selector/-$$Lambda$ClassLoaderContextSelector$sHBY1w4yWoQ8d_zxI4GoSNbEI9Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/LoggerContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/selector/-$$Lambda$ClassLoaderContextSelector$sHBY1w4yWoQ8d_zxI4GoSNbEI9Q;->f$0:Lorg/apache/logging/log4j/core/LoggerContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/selector/-$$Lambda$ClassLoaderContextSelector$sHBY1w4yWoQ8d_zxI4GoSNbEI9Q;->f$0:Lorg/apache/logging/log4j/core/LoggerContext;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/selector/ClassLoaderContextSelector;->lambda$locateContext$0(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    return-object p1
.end method
