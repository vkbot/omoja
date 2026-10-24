.class public Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;
.super Ljava/lang/Object;
.source "SwiperThemeMatcher.java"


# instance fields
.field private final mColorMatcher:Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;->mColorMatcher:Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;

    return-void
.end method


# virtual methods
.method public findTheme(I)I
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;->mColorMatcher:Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/preprovisioning/anim/ColorMatcher;->findClosestColor(I)I

    move-result p1

    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 40
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Swiper"

    aput-object v4, v2, v3

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v2, v0

    const-string p1, "%s%02x%02x%02x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/SwiperThemeMatcher;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "style"

    .line 44
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
