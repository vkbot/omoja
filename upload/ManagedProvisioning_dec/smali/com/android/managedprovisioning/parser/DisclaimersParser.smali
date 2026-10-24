.class public Lcom/android/managedprovisioning/parser/DisclaimersParser;
.super Ljava/lang/Object;
.source "DisclaimersParser.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisclaimerDir:Ljava/io/File;

.field private final mProvisioningId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mContext:Landroid/content/Context;

    .line 51
    iput-wide p2, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mProvisioningId:J

    .line 52
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "provisioning_params_file_cache"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mDisclaimerDir:Ljava/io/File;

    return-void
.end method

.method private saveDisclaimerContentIntoFile(Landroid/net/Uri;I)Ljava/io/File;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mDisclaimerDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mDisclaimerDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disclaimer_content_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mProvisioningId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".txt"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mDisclaimerDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/managedprovisioning/parser/DisclaimersParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lcom/android/managedprovisioning/common/StoreUtils;->copyUriIntoFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public parse([Landroid/os/Parcelable;)Lcom/android/managedprovisioning/model/DisclaimersParam;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 61
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 62
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_1

    goto/16 :goto_2

    .line 67
    :cond_1
    aget-object v4, p1, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

    .line 68
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

    .line 69
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 70
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, " element"

    if-eqz v6, :cond_2

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty disclaimer header in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null disclaimer content uri in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_3
    invoke-direct {p0, v4, v3}, Lcom/android/managedprovisioning/parser/DisclaimersParser;->saveDisclaimerContentIntoFile(Landroid/net/Uri;I)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_4

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to copy disclaimer uri in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_4
    new-instance v6, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 89
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    .line 90
    :cond_6
    new-instance p0, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;

    invoke-direct {p0}, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;->setDisclaimers([Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;)Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;->build()Lcom/android/managedprovisioning/model/DisclaimersParam;

    move-result-object v0

    :goto_3
    return-object v0
.end method
