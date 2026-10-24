.class public final synthetic Lorg/apache/logging/log4j/core/filter/-$$Lambda$MapFilter$srdtbkTOY44L-yHuSW7fNmrmiRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/-$$Lambda$MapFilter$srdtbkTOY44L-yHuSW7fNmrmiRA;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/-$$Lambda$MapFilter$srdtbkTOY44L-yHuSW7fNmrmiRA;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/apache/logging/log4j/core/filter/MapFilter;->lambda$getMap$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
