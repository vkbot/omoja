.class public Lcom/android/managedprovisioning/common/LogoUtils;
.super Ljava/lang/Object;
.source "LogoUtils.java"


# static fields
.field static final DEFAULT_LOGO_ID:I = 0x7f081d0e
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static cleanUp(Landroid/content/Context;)V
    .locals 0

    .line 117
    invoke-static {p0}, Lcom/android/managedprovisioning/common/LogoUtils;->getOrganisationLogoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static getBitmapPartiallyResized(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 80
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 84
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 85
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 86
    div-int/2addr v2, p1

    div-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-le p1, v1, :cond_0

    .line 91
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getOrganisationLogo(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 45
    invoke-static {p0}, Lcom/android/managedprovisioning/common/LogoUtils;->getOrganisationLogoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/managedprovisioning/common/LogoUtils;->getBitmapPartiallyResized(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get organisation logo from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 57
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 58
    invoke-static {v3, v1, v2}, Lcom/android/managedprovisioning/common/LogoUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_2
    const v0, 0x7f081d0e

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-object p0
.end method

.method private static getOrganisationLogoFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 121
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "organisation_logo"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    int-to-double v4, p1

    div-double v4, v2, v4

    int-to-double v0, v1

    int-to-double p1, p2

    div-double p1, v0, p1

    .line 106
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v4

    if-lez v4, :cond_0

    div-double/2addr v2, p1

    double-to-int v2, v2

    div-double/2addr v0, p1

    double-to-int p1, v0

    const/4 p2, 0x0

    .line 111
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static saveOrganisationLogo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/android/managedprovisioning/common/LogoUtils;->getOrganisationLogoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lcom/android/managedprovisioning/common/StoreUtils;->copyUriIntoFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)Z

    return-void
.end method
