.class public Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperFactory;
.super Ljava/lang/Object;
.source "ConsentUiHelperFactory.java"


# direct methods
.method public static getInstance(Landroid/app/Activity;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperFactory;->shouldShowLegacyUi(Landroid/app/Activity;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 33
    new-instance p4, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/managedprovisioning/preprovisioning/consent/LegacyConsentUiHelper;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;Lcom/android/managedprovisioning/common/Utils;)V

    return-object p4

    .line 35
    :cond_0
    new-instance p1, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/managedprovisioning/preprovisioning/consent/PrimaryConsentUiHelper;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;Lcom/android/managedprovisioning/common/Utils;)V

    return-object p1
.end method

.method private static shouldShowLegacyUi(Landroid/app/Activity;)Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
