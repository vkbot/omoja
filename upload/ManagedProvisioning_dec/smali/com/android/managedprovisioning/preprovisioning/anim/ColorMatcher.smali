.class public Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;
.super Ljava/lang/Object;
.source "ColorMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bucketize(I)I
    .locals 2

    int-to-double p0, p1

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    div-double/2addr p0, v0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    mul-int/lit8 p0, p0, 0x20

    const/16 p1, 0xff

    .line 34
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public findClosestColor(I)I
    .locals 2

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;->bucketize(I)I

    move-result v0

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;->bucketize(I)I

    move-result v1

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;->bucketize(I)I

    move-result p0

    const/16 p1, 0xff

    .line 29
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method
