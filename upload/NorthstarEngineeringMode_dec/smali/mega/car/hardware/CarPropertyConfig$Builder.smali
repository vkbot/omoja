.class public Lmega/car/hardware/CarPropertyConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private mDefValue:I

.field private mHasCompatDefValue:Z

.field private mIsSerializable:Z

.field private mMaxSampleRate:F

.field private mMinSampleRate:F

.field private final mPropertyId:I

.field private mPublish:Ljava/lang/String;

.field private mSource:I

.field private mSubscribe:Ljava/lang/String;

.field private final mSupportedAreas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig$AreaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mTopic:Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mHasCompatDefValue:Z

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    iput p2, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mPropertyId:I

    iput-object p3, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mType:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Class;Lmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmega/car/hardware/CarPropertyConfig$Builder;-><init>(IILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public addArea(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0, v1}, Lmega/car/hardware/CarPropertyConfig$Builder;->addAreaConfig(IFF)Lmega/car/hardware/CarPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addAreaConfig(IFF)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    new-instance v1, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    invoke-direct {v1, p1, p2, p3}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;-><init>(IFF)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public build()Lmega/car/hardware/CarPropertyConfig;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmega/car/hardware/CarPropertyConfig<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v15, Lmega/car/hardware/CarPropertyConfig;

    iget v1, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mAccess:I

    iget v2, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mChangeMode:I

    iget-object v3, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mConfigString:Ljava/lang/String;

    iget v4, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMaxSampleRate:F

    iget v5, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMinSampleRate:F

    iget v6, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mPropertyId:I

    iget-object v7, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    iget-object v8, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mType:Ljava/lang/Class;

    iget-boolean v9, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mIsSerializable:Z

    iget-object v10, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mTopic:Ljava/lang/String;

    iget-object v11, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSubscribe:Ljava/lang/String;

    iget-object v12, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mPublish:Ljava/lang/String;

    iget v13, v0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSource:I

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lmega/car/hardware/CarPropertyConfig;-><init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmega/car/hardware/CarPropertyConfig$1;)V

    return-object v15
.end method

.method public setAccess(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mAccess:I

    return-object p0
.end method

.method public setChangeMode(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mChangeMode:I

    return-object p0
.end method

.method public setConfigString(Ljava/lang/String;)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mConfigString:Ljava/lang/String;

    return-object p0
.end method

.method public setDefValue(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mDefValue:I

    return-object p0
.end method

.method public setHasCompatDefValue(Z)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mHasCompatDefValue:Z

    return-object p0
.end method

.method public setMaxSampleRate(F)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMaxSampleRate:F

    return-object p0
.end method

.method public setMinSampleRate(F)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mMinSampleRate:F

    return-object p0
.end method

.method public setPublish(Ljava/lang/String;)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mPublish:Ljava/lang/String;

    return-object p0
.end method

.method public setSerializable(Z)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mIsSerializable:Z

    return-object p0
.end method

.method public setSource(I)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSource:I

    return-object p0
.end method

.method public setSubscribe(Ljava/lang/String;)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mSubscribe:Ljava/lang/String;

    return-object p0
.end method

.method public setTopic(Ljava/lang/String;)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lmega/car/hardware/CarPropertyConfig$Builder;->mTopic:Ljava/lang/String;

    return-object p0
.end method
