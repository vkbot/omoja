.class public Lmega/blur/engine/BlurConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/blur/engine/BlurConfig$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CONFIG:Lmega/blur/engine/BlurConfig;

.field public static final DEFAULT_DOWN_SCALE_FACTOR:I = 0x4

.field public static final DEFAULT_OVERLAY_COLOR:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0xa


# instance fields
.field private final mDownScaleFactor:I

.field private final mOverlayColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final mRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmega/blur/engine/BlurConfig;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Lmega/blur/engine/BlurConfig;-><init>(III)V

    sput-object v0, Lmega/blur/engine/BlurConfig;->DEFAULT_CONFIG:Lmega/blur/engine/BlurConfig;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmega/blur/engine/BlurConfig;->mRadius:I

    iput p2, p0, Lmega/blur/engine/BlurConfig;->mDownScaleFactor:I

    iput p3, p0, Lmega/blur/engine/BlurConfig;->mOverlayColor:I

    return-void
.end method

.method public synthetic constructor <init>(IIILmega/blur/engine/BlurConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmega/blur/engine/BlurConfig;-><init>(III)V

    return-void
.end method

.method public static checkRadius(I)V
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x19

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "radius must be greater than 0 and less than or equal to 25"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public downScaleFactor()I
    .locals 0

    iget p0, p0, Lmega/blur/engine/BlurConfig;->mDownScaleFactor:I

    return p0
.end method

.method public overlayColor()I
    .locals 0

    iget p0, p0, Lmega/blur/engine/BlurConfig;->mOverlayColor:I

    return p0
.end method

.method public radius()I
    .locals 0

    iget p0, p0, Lmega/blur/engine/BlurConfig;->mRadius:I

    return p0
.end method
