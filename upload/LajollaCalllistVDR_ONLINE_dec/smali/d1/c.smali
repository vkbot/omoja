.class public final synthetic Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->getAppCpu()D

    move-result-wide v0

    return-wide v0
.end method
