.class public final Lcom/android/managedprovisioning/model/PackageDownloadInfo;
.super Lcom/android/managedprovisioning/common/PersistableBundlable;
.source "PackageDownloadInfo.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/managedprovisioning/model/PackageDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PACKAGE_CHECKSUM:[B

.field public static final DEFAULT_SIGNATURE_CHECKSUM:[B


# instance fields
.field public final cookieHeader:Ljava/lang/String;

.field public final location:Ljava/lang/String;

.field public final minVersion:I

.field public final packageChecksum:[B

.field public final signatureChecksum:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 46
    sput-object v1, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->DEFAULT_PACKAGE_CHECKSUM:[B

    new-array v0, v0, [B

    .line 47
    sput-object v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->DEFAULT_SIGNATURE_CHECKSUM:[B

    .line 51
    new-instance v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 95
    invoke-static {p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->getPersistableBundleFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;-><init>(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/PersistableBundlable;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->access$100(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->location:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->access$200(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->cookieHeader:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->access$300(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)[B

    move-result-object v0

    const-string v1, "package checksum can\'t be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->packageChecksum:[B

    .line 86
    invoke-static {p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->access$400(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)[B

    move-result-object v0

    const-string v1, "signature checksum can\'t be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->signatureChecksum:[B

    .line 88
    invoke-static {p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->access$500(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->minVersion:I

    .line 90
    invoke-direct {p0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->validateFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;-><init>(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)V

    return-void
.end method

.method private static createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    .locals 2

    .line 113
    new-instance v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;-><init>()V

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

    .line 114
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setMinVersion(I)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

    .line 115
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setLocation(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

    .line 117
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setCookieHeader(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

    .line 119
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setPackageChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

    .line 121
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setSignatureChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    return-object v0
.end method

.method static fromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->build()Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method private validateFields()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->location:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->packageChecksum:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->signatureChecksum:[B

    array-length p0, p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Package checksum or signature checksum must be provided."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Download location must not be empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 128
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 129
    iget v1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->minVersion:I

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget-object v1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->location:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->cookieHeader:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->packageChecksum:[B

    .line 135
    invoke-static {v1}, Lcom/android/managedprovisioning/common/StoreUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->signatureChecksum:[B

    .line 137
    invoke-static {p0}, Lcom/android/managedprovisioning/common/StoreUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

    .line 136
    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
