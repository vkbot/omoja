.class public final Lcom/android/managedprovisioning/model/WifiInfo$Builder;
.super Ljava/lang/Object;
.source "WifiInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/WifiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private anonymousIdentity:Ljava/lang/String;

.field private caCertificate:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private eapMethod:Ljava/lang/String;

.field private identity:Ljava/lang/String;

.field private mHidden:Z

.field private mPacUrl:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProxyBypassHosts:Ljava/lang/String;

.field private mProxyHost:Ljava/lang/String;

.field private mProxyPort:I

.field private mSecurityType:Ljava/lang/String;

.field private mSsid:Ljava/lang/String;

.field private phase2Auth:Ljava/lang/String;

.field private userCertificate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mHidden:Z

    .line 228
    iput v0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mProxyPort:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->anonymousIdentity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mProxyHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)I
    .locals 0

    .line 215
    iget p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mProxyPort:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mProxyBypassHosts:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mPacUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mHidden:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mSecurityType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->eapMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->phase2Auth:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->caCertificate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->userCertificate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->identity:Ljava/lang/String;

    return-object p0
.end method

.method public static builder()Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 1

    .line 312
    new-instance v0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/managedprovisioning/model/WifiInfo;
    .locals 2

    .line 308
    new-instance v0, Lcom/android/managedprovisioning/model/WifiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/model/WifiInfo;-><init>(Lcom/android/managedprovisioning/model/WifiInfo$Builder;Lcom/android/managedprovisioning/model/WifiInfo$1;)V

    return-object v0
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->anonymousIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public setCaCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->caCertificate:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setEapMethod(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->eapMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setHidden(Z)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mHidden:Z

    return-object p0
.end method

.method public setIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->identity:Ljava/lang/String;

    return-object p0
.end method

.method public setPacUrl(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mPacUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setPhase2Auth(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->phase2Auth:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyBypassHosts(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mProxyBypassHosts:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyHost(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mProxyHost:Ljava/lang/String;

    return-object p0
.end method

.method public setProxyPort(I)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 293
    iput p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mProxyPort:I

    return-object p0
.end method

.method public setSecurityType(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mSecurityType:Ljava/lang/String;

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public setUserCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->userCertificate:Ljava/lang/String;

    return-object p0
.end method
