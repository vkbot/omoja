.class public final Lcom/android/managedprovisioning/model/WifiInfo;
.super Lcom/android/managedprovisioning/common/PersistableBundlable;
.source "WifiInfo.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/managedprovisioning/model/WifiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final anonymousIdentity:Ljava/lang/String;

.field public final caCertificate:Ljava/lang/String;

.field public final domain:Ljava/lang/String;

.field public final eapMethod:Ljava/lang/String;

.field public final hidden:Z

.field public final identity:Ljava/lang/String;

.field public final pacUrl:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final phase2Auth:Ljava/lang/String;

.field public final proxyBypassHosts:Ljava/lang/String;

.field public final proxyHost:Ljava/lang/String;

.field public final proxyPort:I

.field public final securityType:Ljava/lang/String;

.field public final ssid:Ljava/lang/String;

.field public final userCertificate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/android/managedprovisioning/model/WifiInfo$1;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/WifiInfo$1;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 206
    invoke-static {p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->getPersistableBundleFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/WifiInfo;-><init>(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/managedprovisioning/model/WifiInfo$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/WifiInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/PersistableBundlable;-><init>()V

    .line 185
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$100(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->ssid:Ljava/lang/String;

    .line 186
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$200(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->hidden:Z

    .line 187
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$300(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->securityType:Ljava/lang/String;

    .line 188
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$400(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->password:Ljava/lang/String;

    .line 189
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$500(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->eapMethod:Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$600(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->phase2Auth:Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$700(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->caCertificate:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$800(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->userCertificate:Ljava/lang/String;

    .line 193
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$900(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->identity:Ljava/lang/String;

    .line 194
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$1000(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->anonymousIdentity:Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$1100(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->domain:Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$1200(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->proxyHost:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$1300(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->proxyPort:I

    .line 198
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$1400(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->proxyBypassHosts:Ljava/lang/String;

    .line 199
    invoke-static {p1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->access$1500(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->pacUrl:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/android/managedprovisioning/model/WifiInfo;->validateFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/managedprovisioning/model/WifiInfo$Builder;Lcom/android/managedprovisioning/model/WifiInfo$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/WifiInfo;-><init>(Lcom/android/managedprovisioning/model/WifiInfo$Builder;)V

    return-void
.end method

.method private static createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;
    .locals 2

    .line 165
    new-instance v0, Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;-><init>()V

    const-string v1, "android.app.extra.PROVISIONING_WIFI_SSID"

    .line 166
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setSsid(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_HIDDEN"

    .line 167
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setHidden(Z)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

    .line 168
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setSecurityType(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PASSWORD"

    .line 169
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

    .line 170
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setEapMethod(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

    .line 171
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPhase2Auth(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

    .line 172
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setCaCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

    .line 173
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setUserCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_IDENTITY"

    .line 174
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

    .line 175
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setAnonymousIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_DOMAIN"

    .line 176
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setDomain(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

    .line 177
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyHost(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

    .line 178
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyPort(I)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

    .line 179
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyBypassHosts(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PAC_URL"

    .line 180
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPacUrl(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    return-object v0
.end method

.method static fromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/WifiInfo;
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/android/managedprovisioning/model/WifiInfo;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->build()Lcom/android/managedprovisioning/model/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method private validateFields()V
    .locals 1

    .line 210
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->ssid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ssid must not be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 141
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->ssid:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_SSID"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->hidden:Z

    const-string v2, "android.app.extra.PROVISIONING_WIFI_HIDDEN"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->securityType:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->password:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_PASSWORD"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->eapMethod:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->phase2Auth:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->caCertificate:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->userCertificate:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->identity:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_IDENTITY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->anonymousIdentity:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->domain:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_DOMAIN"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->proxyHost:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->proxyPort:I

    const-string v2, "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/android/managedprovisioning/model/WifiInfo;->proxyBypassHosts:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->pacUrl:Ljava/lang/String;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PAC_URL"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
