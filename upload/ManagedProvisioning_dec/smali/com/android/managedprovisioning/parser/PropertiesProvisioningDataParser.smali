.class public Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;
.super Ljava/lang/Object;
.source "PropertiesProvisioningDataParser.java"

# interfaces
.implements Lcom/android/managedprovisioning/parser/ProvisioningDataParser;


# instance fields
.field private final mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 107
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 108
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    return-void
.end method

.method private deserializeExtrasBundle(Ljava/util/Properties;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 289
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 290
    new-instance p2, Ljava/io/StringReader;

    invoke-direct {p2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 291
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 292
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static getFirstNdefRecord(Landroid/content/Intent;)Landroid/nfc/NdefRecord;
    .locals 7

    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    .line 304
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 307
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 308
    check-cast v3, Landroid/nfc/NdefMessage;

    .line 309
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_0

    aget-object v3, v3, v1

    .line 310
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v5, "application/com.android.managedprovisioning"

    .line 312
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 113
    invoke-virtual {p1, p2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private parsePackageDownloadInfoFromProperties(Ljava/util/Properties;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;
    .locals 2

    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_0
    invoke-static {}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->builder()Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    move-result-object v1

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setLocation(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setCookieHeader(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setMinVersion(I)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    :cond_1
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    invoke-static {v0}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setPackageChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    :cond_2
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

    .line 270
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 272
    invoke-static {p0}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setSignatureChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    .line 274
    :cond_3
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->build()Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method private parseWifiInfoFromProperties(Ljava/util/Properties;)Lcom/android/managedprovisioning/model/WifiInfo;
    .locals 2

    const-string v0, "android.app.extra.PROVISIONING_WIFI_SSID"

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->builder()Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    move-result-object v1

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setSsid(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setSecurityType(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PASSWORD"

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setEapMethod(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPhase2Auth(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setCaCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setUserCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_IDENTITY"

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

    .line 226
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setAnonymousIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_DOMAIN"

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setDomain(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyHost(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyBypassHosts(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PAC_URL"

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPacUrl(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyPort(I)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    :cond_1
    const-string v0, "android.app.extra.PROVISIONING_WIFI_HIDDEN"

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 239
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setHidden(Z)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    .line 242
    :cond_2
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->build()Lcom/android/managedprovisioning/model/WifiInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Processing Nfc Payload."

    .line 130
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getFirstNdefRecord(Landroid/content/Intent;)Landroid/nfc/NdefRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 134
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 135
    new-instance v2, Ljava/io/StringReader;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 140
    invoke-static {}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->builder()Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 141
    invoke-virtual {v2}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->incrementAndGetProvisioningId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningId(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setStartedByTrustedSource(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 143
    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsNfc(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    iget-object v2, p0, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 144
    invoke-virtual {v2, p1}, Lcom/android/managedprovisioning/common/Utils;->mapIntentToDpmAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    .line 146
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminPackageName(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    .line 148
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminComponentName(Landroid/content/ComponentName;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    :cond_0
    const-string v2, "android.app.extra.PROVISIONING_TIME_ZONE"

    .line 155
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setTimeZone(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v2, "android.app.extra.PROVISIONING_LOCALE"

    .line 157
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v2}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLocale(Ljava/util/Locale;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v2, "android.app.extra.PROVISIONING_LOCAL_TIME"

    .line 158
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 159
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLocalTime(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 163
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->parseWifiInfoFromProperties(Ljava/util/Properties;)Lcom/android/managedprovisioning/model/WifiInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setWifiInfo(Lcom/android/managedprovisioning/model/WifiInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 165
    invoke-direct {p0, v1}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->parsePackageDownloadInfoFromProperties(Ljava/util/Properties;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminDownloadInfo(Lcom/android/managedprovisioning/model/PackageDownloadInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v2, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    .line 170
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->deserializeExtrasBundle(Ljava/util/Properties;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setAdminExtrasBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v2, "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

    .line 172
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 174
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLeaveAllSystemAppsEnabled(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    :cond_2
    const-string v2, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    .line 176
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 178
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipEncryption(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    :cond_3
    const-string v2, "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

    .line 180
    invoke-direct {p0, v1, v2}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->getPropertyFromLongName(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 182
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setUseMobileData(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 184
    :cond_4
    iget-object p0, p0, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isOrganizationOwnedProvisioning(Landroid/content/Intent;)Z

    move-result p0

    .line 184
    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsOrganizationOwnedProvisioning(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string p0, "End processing Nfc Payload."

    .line 186
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 197
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v0, "Compulsory parameter not found!"

    invoke-direct {p1, v0, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 195
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v0, "Invalid parameter found!"

    invoke-direct {p1, v0, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 193
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v0, "Invalid locale."

    invoke-direct {p1, v0, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 191
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v0, "Incorrect numberformat."

    invoke-direct {p1, v0, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 189
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v0, "Couldn\'t load payload"

    invoke-direct {p1, v0, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 201
    :cond_5
    new-instance p0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string p1, "Intent does not contain NfcRecord with the correct MIME type."

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_6
    new-instance p0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string p1, "Only NFC action is supported in this parser."

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
