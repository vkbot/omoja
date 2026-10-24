.class public Lcom/android/managedprovisioning/analytics/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllProvisioningExtras(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.managedprovisioning.action.RESUME_PROVISIONING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getExtrasFromProperties(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getExtrasFromBundle(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 103
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static getDevicePolicyEventForCategory(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x273

    if-eq p0, v0, :cond_1

    const/16 v0, 0x329

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    return p0

    :pswitch_0
    const/16 p0, 0x64

    return p0

    :pswitch_1
    const/16 p0, 0x63

    return p0

    :pswitch_2
    const/16 p0, 0x62

    return p0

    :pswitch_3
    const/16 p0, 0x61

    return p0

    :pswitch_4
    const/16 p0, 0x60

    return p0

    :pswitch_5
    const/16 p0, 0x59

    return p0

    :pswitch_6
    const/16 p0, 0x58

    return p0

    :pswitch_7
    const/16 p0, 0x57

    return p0

    :pswitch_8
    const/16 p0, 0x56

    return p0

    :cond_0
    const/16 p0, 0x6b

    return p0

    :cond_1
    const/16 p0, 0x68

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x207
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorString(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExtrasFromBundle(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 132
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-static {v1}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->isValidProvisioningExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getExtrasFromProperties(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-static {p0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getFirstNdefRecord(Landroid/content/Intent;)Landroid/nfc/NdefRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 147
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 148
    new-instance v2, Ljava/io/StringReader;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object p0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 149
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-static {v1}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->isValidProvisioningExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J
    .locals 2

    .line 212
    sget-object v0, Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;->INSTANCE:Lcom/android/managedprovisioning/analytics/-$$Lambda$ZeIJ-eXXFMphBL5e8yybGR_cbRY;

    invoke-static {p0, v0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;Ljava/util/function/LongSupplier;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;Ljava/util/function/LongSupplier;)J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->getProvisioningStartedTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 221
    :cond_0
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->getProvisioningStartedTimestamp()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private static isValidProvisioningExtra(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "android.app.extra.PROVISIONING_"

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public elapsedRealTime()Ljava/lang/Long;
    .locals 2

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
