.class public Lcom/android/managedprovisioning/model/DisclaimersParam;
.super Lcom/android/managedprovisioning/common/PersistableBundlable;
.source "DisclaimersParam.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;,
        Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/managedprovisioning/model/DisclaimersParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/managedprovisioning/model/DisclaimersParam$1;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/DisclaimersParam$1;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/DisclaimersParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->getPersistableBundleFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/managedprovisioning/model/DisclaimersParam;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/DisclaimersParam;-><init>(Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/managedprovisioning/model/DisclaimersParam$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/DisclaimersParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/PersistableBundlable;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;->access$100(Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;)[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/model/DisclaimersParam;->mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;Lcom/android/managedprovisioning/model/DisclaimersParam$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/DisclaimersParam;-><init>(Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;)V

    return-void
.end method

.method private static createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;
    .locals 7

    const-string v0, "HEADER_KEY"

    .line 64
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONTENT_PATH_KEY"

    .line 65
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance v1, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;

    invoke-direct {v1}, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;-><init>()V

    if-eqz v0, :cond_1

    .line 69
    array-length v2, v0

    new-array v2, v2, [Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    const/4 v3, 0x0

    .line 70
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 71
    new-instance v4, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    aget-object v5, v0, v3

    aget-object v6, p0, v3

    invoke-direct {v4, v5, v6}, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;->setDisclaimers([Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;)Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;

    :cond_1
    return-object v1
.end method

.method public static fromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/DisclaimersParam;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/android/managedprovisioning/model/DisclaimersParam;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/DisclaimersParam$Builder;->build()Lcom/android/managedprovisioning/model/DisclaimersParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .line 79
    iget-object p0, p0, Lcom/android/managedprovisioning/model/DisclaimersParam;->mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    if-eqz p0, :cond_0

    .line 80
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 81
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;->mContentFilePath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 6

    .line 88
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/android/managedprovisioning/model/DisclaimersParam;->mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    if-eqz v1, :cond_1

    .line 90
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 91
    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 92
    :goto_0
    iget-object v4, p0, Lcom/android/managedprovisioning/model/DisclaimersParam;->mDisclaimers:[Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 93
    aget-object v5, v4, v3

    iget-object v5, v5, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;->mHeader:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 94
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/managedprovisioning/model/DisclaimersParam$Disclaimer;->mContentFilePath:Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "HEADER_KEY"

    .line 96
    invoke-virtual {v0, p0, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "CONTENT_PATH_KEY"

    .line 97
    invoke-virtual {v0, p0, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
