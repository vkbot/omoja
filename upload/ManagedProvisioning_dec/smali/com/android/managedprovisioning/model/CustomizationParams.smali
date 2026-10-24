.class public Lcom/android/managedprovisioning/model/CustomizationParams;
.super Ljava/lang/Object;
.source "CustomizationParams.java"


# static fields
.field public static final DEFAULT_STATUS_BAR_COLOR_ID:I = 0x106000b
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mainColor:I

.field public final orgName:Ljava/lang/String;

.field public final statusBarColor:I

.field public final supportUrl:Ljava/lang/String;

.field public final useSetupStatusBarColor:Z


# direct methods
.method private constructor <init>(IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/android/managedprovisioning/model/CustomizationParams;->mainColor:I

    .line 83
    iput p2, p0, Lcom/android/managedprovisioning/model/CustomizationParams;->statusBarColor:I

    .line 84
    iput-boolean p3, p0, Lcom/android/managedprovisioning/model/CustomizationParams;->useSetupStatusBarColor:Z

    .line 85
    iput-object p4, p0, Lcom/android/managedprovisioning/model/CustomizationParams;->orgName:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/android/managedprovisioning/model/CustomizationParams;->supportUrl:Ljava/lang/String;

    return-void
.end method

.method public static createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->mainColor:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->organizationName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->supportUrl:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object p0

    return-object p0
.end method

.method private static createInstance(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;
    .locals 6

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x0

    move v2, p3

    move v3, p4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    const v0, 0x106000b

    .line 70
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 71
    invoke-virtual {p4, p3}, Lcom/android/managedprovisioning/common/Utils;->getAccentColor(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move v3, p0

    move-object p0, p3

    move v2, v0

    .line 74
    :goto_0
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    move-object v5, p2

    .line 76
    new-instance p2, Lcom/android/managedprovisioning/model/CustomizationParams;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/model/CustomizationParams;-><init>(IIZLjava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
