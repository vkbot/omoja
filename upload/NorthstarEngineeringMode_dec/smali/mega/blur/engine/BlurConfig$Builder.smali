.class public Lmega/blur/engine/BlurConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/blur/engine/BlurConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mDownScaleFactor:I

.field private mOverlayColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lmega/blur/engine/BlurConfig$Builder;->mRadius:I

    const/4 v0, 0x4

    iput v0, p0, Lmega/blur/engine/BlurConfig$Builder;->mDownScaleFactor:I

    const/4 v0, 0x0

    iput v0, p0, Lmega/blur/engine/BlurConfig$Builder;->mOverlayColor:I

    return-void
.end method


# virtual methods
.method public build()Lmega/blur/engine/BlurConfig;
    .locals 4

    new-instance v0, Lmega/blur/engine/BlurConfig;

    iget v1, p0, Lmega/blur/engine/BlurConfig$Builder;->mRadius:I

    iget v2, p0, Lmega/blur/engine/BlurConfig$Builder;->mDownScaleFactor:I

    iget p0, p0, Lmega/blur/engine/BlurConfig$Builder;->mOverlayColor:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lmega/blur/engine/BlurConfig;-><init>(IIILmega/blur/engine/BlurConfig$1;)V

    return-object v0
.end method

.method public overlayColor(I)Lmega/blur/engine/BlurConfig$Builder;
    .locals 0

    iput p1, p0, Lmega/blur/engine/BlurConfig$Builder;->mOverlayColor:I

    return-object p0
.end method

.method public radius(I)Lmega/blur/engine/BlurConfig$Builder;
    .locals 0

    invoke-static {p1}, Lmega/blur/engine/BlurConfig;->checkRadius(I)V

    iput p1, p0, Lmega/blur/engine/BlurConfig$Builder;->mRadius:I

    return-object p0
.end method
