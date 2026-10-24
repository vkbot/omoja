.class public Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;
.super Ljava/lang/Object;
.source "TermsProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTextFileReader:Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mTextFileReader:Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;

    .line 68
    iput-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method private determineProvisioningCase(Lcom/android/managedprovisioning/model/ProvisioningParams;)I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mContext:Landroid/content/Context;

    const-string p1, "device_policy"

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private getExtraDisclaimers(Lcom/android/managedprovisioning/model/ProvisioningParams;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/managedprovisioning/model/ProvisioningParams;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->disclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p1, Lcom/android/managedprovisioning/model/DisclaimersParam;->mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    :goto_0
    if-eqz p1, :cond_1

    .line 138
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mTextFileReader:Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;

    new-instance v5, Ljava/io/File;

    iget-object v6, v3, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;->mContentFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 142
    iget-object v3, v3, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;->mHeader:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "Failed to read disclaimer"

    .line 144
    invoke-static {v4, v3}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private getGeneralDisclaimer(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const v2, 0x7f0d00dc

    goto :goto_0

    :cond_0
    const v2, 0x7f0d008e

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_1

    const p1, 0x7f0d0020

    goto :goto_1

    :cond_1
    const p1, 0x7f0d001f

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object p0

    return-object p0
.end method

.method private getStringMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 157
    :try_start_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 158
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NameNotFoundException"

    .line 160
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSystemAppTerms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x100080

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    const-string v3, "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

    .line 123
    invoke-direct {p0, v2, v3}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->getStringMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

    .line 124
    invoke-direct {p0, v2, v4}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->getStringMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 126
    invoke-static {v3, v2}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getTerms(Lcom/android/managedprovisioning/model/ProvisioningParams;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/managedprovisioning/model/ProvisioningParams;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->determineProvisioningCase(Lcom/android/managedprovisioning/model/ProvisioningParams;)I

    move-result v1

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    .line 84
    invoke-direct {p0, v1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->getGeneralDisclaimer(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x2

    if-ne v1, p2, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->getSystemAppTerms()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->getExtraDisclaimers(Lcom/android/managedprovisioning/model/ProvisioningParams;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$8Bv9vtYCtjZpkNQe4E0mmUvZas0;->INSTANCE:Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$8Bv9vtYCtjZpkNQe4E0mmUvZas0;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
