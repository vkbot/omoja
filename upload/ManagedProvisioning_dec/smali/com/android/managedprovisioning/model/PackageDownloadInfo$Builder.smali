.class public final Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
.super Ljava/lang/Object;
.source "PackageDownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/PackageDownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCookieHeader:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mMinVersion:I

.field private mPackageChecksum:[B

.field private mSignatureChecksum:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    sget-object v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->DEFAULT_PACKAGE_CHECKSUM:[B

    iput-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mPackageChecksum:[B

    .line 145
    sget-object v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->DEFAULT_SIGNATURE_CHECKSUM:[B

    iput-object v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mSignatureChecksum:[B

    const v0, 0x7fffffff

    .line 146
    iput v0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mMinVersion:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mCookieHeader:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)[B
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mPackageChecksum:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)[B
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mSignatureChecksum:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;)I
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mMinVersion:I

    return p0
.end method

.method public static builder()Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    .locals 1

    .line 178
    new-instance v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/managedprovisioning/model/PackageDownloadInfo;
    .locals 2

    .line 174
    new-instance v0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;-><init>(Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;)V

    return-object v0
.end method

.method public setCookieHeader(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mCookieHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mLocation:Ljava/lang/String;

    return-object p0
.end method

.method public setMinVersion(I)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mMinVersion:I

    return-object p0
.end method

.method public setPackageChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mPackageChecksum:[B

    return-object p0
.end method

.method public setSignatureChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->mSignatureChecksum:[B

    return-object p0
.end method
