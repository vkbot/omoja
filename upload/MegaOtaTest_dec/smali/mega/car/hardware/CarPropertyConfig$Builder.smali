.class public Lmega/car/hardware/CarPropertyConfig$Builder;
.super Ljava/lang/Object;
.source "CarPropertyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/CarPropertyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAccess:I

.field private mChangeMode:I

.field private mConfigString:Ljava/lang/String;

.field private mMaxSampleRate:F

.field private mMinSampleRate:F

.field private final mPropertyId:I

.field private final mSupportedAreas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig$AreaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILjava/lang/Class;)V
    .locals 1
    .param p1, "areaCapacity"    # I
    .param p2, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 328
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    .line 330
    iput p2, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mPropertyId:I

    .line 331
    iput-object p3, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mType:Ljava/lang/Class;

    .line 332
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/Class;Lmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Class;
    .param p4, "x3"    # Lmega/car/hardware/CarPropertyConfig$1;

    .line 318
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lmega/car/hardware/CarPropertyConfig$Builder;-><init>(IILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public addArea(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 2
    .param p1, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    const/4 v0, 0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0, v1}, Lmega/car/hardware/CarPropertyConfig$Builder;->addAreaConfig(IFF)Lmega/car/hardware/CarPropertyConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAreaConfig(IFF)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 2
    .param p1, "areaId"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    new-instance v1, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    invoke-direct {v1, p1, p2, p3}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;-><init>(IFF)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    return-object p0
.end method

.method public build()Lmega/car/hardware/CarPropertyConfig;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmega/car/hardware/CarPropertyConfig<",
            "TT;>;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    new-instance v10, Lmega/car/hardware/CarPropertyConfig;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mAccess:I

    iget v2, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mChangeMode:I

    iget-object v3, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mConfigString:Ljava/lang/String;

    iget v4, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMaxSampleRate:F

    iget v5, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMinSampleRate:F

    iget v6, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mPropertyId:I

    iget-object v7, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    iget-object v8, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mType:Ljava/lang/Class;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lmega/car/hardware/CarPropertyConfig;-><init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;Lmega/car/hardware/CarPropertyConfig$1;)V

    return-object v10
.end method

.method public setAccess(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .param p1, "access"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mAccess:I

    .line 354
    return-object p0
.end method

.method public setChangeMode(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .param p1, "changeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mChangeMode:I

    .line 359
    return-object p0
.end method

.method public setConfigString(Ljava/lang/String;)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .param p1, "configString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    iput-object p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mConfigString:Ljava/lang/String;

    .line 367
    return-object p0
.end method

.method public setMaxSampleRate(F)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .param p1, "maxSampleRate"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMaxSampleRate:F

    .line 375
    return-object p0
.end method

.method public setMinSampleRate(F)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .param p1, "minSampleRate"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<TT;>;"
    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMinSampleRate:F

    .line 383
    return-object p0
.end method
