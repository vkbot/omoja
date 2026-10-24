.class public Lmega/car/hardware/property/CarRatedFloatListeners;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MILLISECOND_PER_SECOND:F = 1000.0f


# instance fields
.field protected mAreaIdToLastUpdateTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersToRate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersUpdateTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRate:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    iput p1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    return-void
.end method


# virtual methods
.method public addAndUpdateRate(Ljava/lang/Object;F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation

    iget-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    cmpg-float p1, p1, p2

    const/4 v1, 0x1

    if-gez p1, :cond_0

    iput p2, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p2, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    iget-object p1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRate()F
    .locals 0

    iget p0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public needUpdateForAreaId(IJ)Z
    .locals 3

    iget-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needUpdateForSelectedListener(Ljava/lang/Object;J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)Z"
        }
    .end annotation

    iget-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, p2

    if-gtz v0, :cond_1

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lmega/car/hardware/property/CarRatedFloatListeners;->mUpdateRate:F

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
