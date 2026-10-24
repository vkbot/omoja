.class public final synthetic Lorg/apache/logging/log4j/core/impl/-$$Lambda$ThreadContextDataInjector$7Y4ucS0E-XUyvFTNPNImuqLW9oI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/core/util/ContextDataProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/core/util/ContextDataProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/-$$Lambda$ThreadContextDataInjector$7Y4ucS0E-XUyvFTNPNImuqLW9oI;->f$0:Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/-$$Lambda$ThreadContextDataInjector$7Y4ucS0E-XUyvFTNPNImuqLW9oI;->f$0:Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    check-cast p1, Lorg/apache/logging/log4j/core/util/ContextDataProvider;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/impl/ThreadContextDataInjector;->lambda$getServiceProviders$0(Lorg/apache/logging/log4j/core/util/ContextDataProvider;Lorg/apache/logging/log4j/core/util/ContextDataProvider;)Z

    move-result p1

    return p1
.end method
