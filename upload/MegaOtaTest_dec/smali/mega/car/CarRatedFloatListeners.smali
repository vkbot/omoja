.class public Lmega/car/CarRatedFloatListeners;
.super Ljava/lang/Object;
.source "CarRatedFloatListeners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NANOSECOND_PER_SECOND:F = 1.0E9f


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
.method protected constructor <init>(F)V
    .locals 2
    .param p1, "rate"    # F

    .line 45
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmega/car/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    .line 46
    iput p1, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    .line 47
    return-void
.end method


# virtual methods
.method public addAndUpdateRate(Ljava/lang/Object;F)Z
    .locals 5
    .param p2, "updateRate"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation

    .line 90
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 91
    .local v0, "oldUpdateRate":Ljava/lang/Float;
    iget-object v1, p0, Lmega/car/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget v1, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    cmpg-float v1, v1, p2

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 93
    iput p2, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    .line 94
    return v2

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 97
    .local v1, "newUpdateRate":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    .line 99
    return v2

    .line 102
    .end local v1    # "newUpdateRate":Ljava/lang/Float;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 51
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRate()F
    .locals 1

    .line 56
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    iget v0, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 79
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public needUpdateForAreaId(IJ)Z
    .locals 5
    .param p1, "areaId"    # I
    .param p2, "eventTime"    # J

    .line 132
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 133
    .local v3, "lastUpdateTime":J
    cmp-long v0, p2, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    cmp-long v0, p2, v3

    if-ltz v0, :cond_1

    .line 137
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mAreaIdToLastUpdateTime:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    return v1

    .line 140
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public needUpdateForSelectedListener(Ljava/lang/Object;J)Z
    .locals 6
    .param p2, "eventTimeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)Z"
        }
    .end annotation

    .line 111
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 112
    .local v0, "nextUpdateTime":Ljava/lang/Long;
    iget-object v1, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 114
    .local v1, "updateRate":Ljava/lang/Float;
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-gtz v3, :cond_1

    .line 118
    const v3, 0x4e6e6b28    # 1.0E9f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 119
    .local v3, "cycle":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 120
    iget-object v4, p0, Lmega/car/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return v2

    .line 123
    .end local v3    # "cycle":Ljava/lang/Float;
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 115
    :cond_2
    :goto_0
    return v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 65
    .local p0, "this":Lmega/car/CarRatedFloatListeners;, "Lmega/car/CarRatedFloatListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersUpdateTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    iget-object v0, p0, Lmega/car/CarRatedFloatListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 71
    .local v0, "updateRate":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lmega/car/CarRatedFloatListeners;->mUpdateRate:F

    .line 73
    const/4 v1, 0x1

    return v1

    .line 75
    :cond_1
    return v1
.end method
