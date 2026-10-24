.class public final synthetic Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/callisto/auto/gatherer/model/AppMemUsageBean;

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppMemUsageBean;->getAppMem()I

    move-result p1

    return p1
.end method
