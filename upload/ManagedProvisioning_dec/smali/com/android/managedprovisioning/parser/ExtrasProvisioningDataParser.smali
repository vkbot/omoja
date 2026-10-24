.class public Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;
.super Ljava/lang/Object;
.source "ExtrasProvisioningDataParser.java"

# interfaces
.implements Lcom/android/managedprovisioning/parser/ProvisioningDataParser;


# static fields
.field static final EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE_SHORT:Ljava/lang/String; = "a.a.e.PATM"

.field static final EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE_SHORT:Ljava/lang/String; = "a.a.e.PAEB"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME_SHORT:Ljava/lang/String; = "a.a.e.PDACN"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE_SHORT:Ljava/lang/String; = "a.a.e.PDAMVC"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM_SHORT:Ljava/lang/String; = "a.a.e.PDAPC"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER_SHORT:Ljava/lang/String; = "a.a.e.PDAPDCH"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION_SHORT:Ljava/lang/String; = "a.a.e.PDAPDL"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI_SHORT:Ljava/lang/String; = "a.a.e.PDAPIU"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL_SHORT:Ljava/lang/String; = "a.a.e.PDAPL"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME_SHORT:Ljava/lang/String; = "a.a.e.PDAPN"

.field static final EXTRA_PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM_SHORT:Ljava/lang/String; = "a.a.e.PDASC"

.field static final EXTRA_PROVISIONING_DISCLAIMERS_SHORT:Ljava/lang/String; = "a.a.e.PD"

.field static final EXTRA_PROVISIONING_DISCLAIMER_CONTENT_SHORT:Ljava/lang/String; = "a.a.e.PDC"

.field static final EXTRA_PROVISIONING_DISCLAIMER_HEADER_SHORT:Ljava/lang/String; = "a.a.e.PDH"

.field static final EXTRA_PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION_SHORT:Ljava/lang/String; = "a.a.e.PKAOM"

.field static final EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED_SHORT:Ljava/lang/String; = "a.a.e.PLASAE"

.field static final EXTRA_PROVISIONING_LOCALE_SHORT:Ljava/lang/String; = "a.a.e.PL"

.field static final EXTRA_PROVISIONING_LOCAL_TIME_SHORT:Ljava/lang/String; = "a.a.e.PLT"

.field static final EXTRA_PROVISIONING_LOGO_URI_SHORT:Ljava/lang/String; = "a.a.e.PLU"

.field static final EXTRA_PROVISIONING_MAIN_COLOR_SHORT:Ljava/lang/String; = "a.a.e.PMC"

.field static final EXTRA_PROVISIONING_ORGANIZATION_NAME_SHORT:Ljava/lang/String; = "a.a.e.PON"

.field static final EXTRA_PROVISIONING_SKIP_EDUCATION_SCREENS_SHORT:Ljava/lang/String; = "a.a.e.PSES"

.field static final EXTRA_PROVISIONING_SKIP_ENCRYPTION_SHORT:Ljava/lang/String; = "a.a.e.PSE"

.field static final EXTRA_PROVISIONING_SKIP_USER_CONSENT_SHORT:Ljava/lang/String; = "a.a.e.PSUC"

.field static final EXTRA_PROVISIONING_SKIP_USER_SETUP_SHORT:Ljava/lang/String; = "a.a.e.PSUS"

.field static final EXTRA_PROVISIONING_SUPPORT_URL_SHORT:Ljava/lang/String; = "a.a.e.PSU"

.field static final EXTRA_PROVISIONING_TIME_ZONE_SHORT:Ljava/lang/String; = "a.a.e.PTZ"

.field static final EXTRA_PROVISIONING_USE_MOBILE_DATA_SHORT:Ljava/lang/String; = "a.a.e.PUMD"

.field static final EXTRA_PROVISIONING_WIFI_ANONYMOUS_IDENTITY_SHORT:Ljava/lang/String; = "a.a.e.PWAI"

.field static final EXTRA_PROVISIONING_WIFI_CA_CERTIFICATE_SHORT:Ljava/lang/String; = "a.a.e.PWCC"

.field static final EXTRA_PROVISIONING_WIFI_DOMAIN_SHORT:Ljava/lang/String; = "a.a.e.PWD"

.field static final EXTRA_PROVISIONING_WIFI_EAP_METHOD_SHORT:Ljava/lang/String; = "a.a.e.PWEM"

.field static final EXTRA_PROVISIONING_WIFI_HIDDEN_SHORT:Ljava/lang/String; = "a.a.e.PWH"

.field static final EXTRA_PROVISIONING_WIFI_IDENTITY_SHORT:Ljava/lang/String; = "a.a.e.PWI"

.field static final EXTRA_PROVISIONING_WIFI_PAC_URL_SHORT:Ljava/lang/String; = "a.a.e.PWPU"

.field static final EXTRA_PROVISIONING_WIFI_PASSWORD_SHORT:Ljava/lang/String; = "a.a.e.PWP"

.field static final EXTRA_PROVISIONING_WIFI_PHASE2_AUTH_SHORT:Ljava/lang/String; = "a.a.e.PWPA"

.field static final EXTRA_PROVISIONING_WIFI_PROXY_BYPASS_SHORT:Ljava/lang/String; = "a.a.e.PWPB"

.field static final EXTRA_PROVISIONING_WIFI_PROXY_HOST_SHORT:Ljava/lang/String; = "a.a.e.PWPH"

.field static final EXTRA_PROVISIONING_WIFI_PROXY_PORT_SHORT:Ljava/lang/String; = "a.a.e.PWPRP"

.field static final EXTRA_PROVISIONING_WIFI_SECURITY_TYPE_SHORT:Ljava/lang/String; = "a.a.e.PWST"

.field static final EXTRA_PROVISIONING_WIFI_SSID_SHORT:Ljava/lang/String; = "a.a.e.PWS"

.field static final EXTRA_PROVISIONING_WIFI_USER_CERTIFICATE_SHORT:Ljava/lang/String; = "a.a.e.PWUC"

.field private static final PROVISIONING_ACTIONS_SUPPORT_ALL_PROVISIONING_DATA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVISIONING_ACTIONS_SUPPORT_MIN_PROVISIONING_DATA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHORTER_EXTRAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 113
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    const-string v2, "android.app.action.PROVISION_FINANCED_DEVICE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->PROVISIONING_ACTIONS_SUPPORT_ALL_PROVISIONING_DATA:Ljava/util/Set;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    const-string v2, "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

    const-string v3, "android.app.action.PROVISION_MANAGED_USER"

    const-string v4, "android.app.action.PROVISION_MANAGED_PROFILE"

    const-string v5, "android.app.action.PROVISION_MANAGED_DEVICE_SILENTLY"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->PROVISIONING_ACTIONS_SUPPORT_MIN_PROVISIONING_DATA:Ljava/util/Set;

    .line 257
    invoke-static {}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->buildShorterExtrasMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->SHORTER_EXTRAS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 1

    .line 371
    new-instance v0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mContext:Landroid/content/Context;

    .line 378
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 379
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    return-void
.end method

.method private static buildShorterExtrasMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    const-string v2, "a.a.e.PAEB"

    .line 261
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    const-string v2, "a.a.e.PDAPN"

    .line 264
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    const-string v2, "a.a.e.PDACN"

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    const-string v2, "a.a.e.PATM"

    .line 270
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

    const-string v2, "a.a.e.PKAOM"

    .line 272
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_MAIN_COLOR"

    const-string v2, "a.a.e.PMC"

    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

    const-string v2, "a.a.e.PLASAE"

    .line 277
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_TIME_ZONE"

    const-string v2, "a.a.e.PTZ"

    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_LOCAL_TIME"

    const-string v2, "a.a.e.PLT"

    .line 282
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_LOCALE"

    const-string v2, "a.a.e.PL"

    .line 284
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_SSID"

    const-string v2, "a.a.e.PWS"

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_HIDDEN"

    const-string v2, "a.a.e.PWH"

    .line 288
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

    const-string v2, "a.a.e.PWST"

    .line 290
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PASSWORD"

    const-string v2, "a.a.e.PWP"

    .line 292
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

    const-string v2, "a.a.e.PWEM"

    .line 294
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

    const-string v2, "a.a.e.PWPA"

    .line 296
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

    const-string v2, "a.a.e.PWCC"

    .line 298
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

    const-string v2, "a.a.e.PWUC"

    .line 301
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_IDENTITY"

    const-string v2, "a.a.e.PWI"

    .line 304
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

    const-string v2, "a.a.e.PWAI"

    .line 306
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_DOMAIN"

    const-string v2, "a.a.e.PWD"

    .line 309
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

    const-string v2, "a.a.e.PWPH"

    .line 311
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

    const-string v2, "a.a.e.PWPRP"

    .line 313
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

    const-string v2, "a.a.e.PWPB"

    .line 315
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_WIFI_PAC_URL"

    const-string v2, "a.a.e.PWPU"

    .line 317
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

    const-string v2, "a.a.e.PDAPDL"

    .line 319
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_ORGANIZATION_NAME"

    const-string v2, "a.a.e.PON"

    .line 322
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_SUPPORT_URL"

    const-string v2, "a.a.e.PSU"

    .line 324
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"

    const-string v2, "a.a.e.PDAPL"

    .line 326
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"

    const-string v2, "a.a.e.PDAPIU"

    .line 329
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

    const-string v2, "a.a.e.PDAMVC"

    .line 332
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

    const-string v2, "a.a.e.PDAPDCH"

    .line 335
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

    const-string v2, "a.a.e.PDAPC"

    .line 338
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

    const-string v2, "a.a.e.PDASC"

    .line 341
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    const-string v2, "a.a.e.PSE"

    .line 344
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DISCLAIMERS"

    const-string v2, "a.a.e.PD"

    .line 346
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_LOGO_URI"

    const-string v2, "a.a.e.PLU"

    .line 348
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

    const-string v2, "a.a.e.PDH"

    .line 350
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

    const-string v2, "a.a.e.PDC"

    .line 352
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_USER_SETUP"

    const-string v2, "a.a.e.PSUS"

    .line 354
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"

    const-string v2, "a.a.e.PSUC"

    .line 356
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

    const-string v2, "a.a.e.PSES"

    .line 358
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

    const-string v2, "a.a.e.PUMD"

    .line 361
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 0

    .line 452
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 453
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 455
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 456
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 457
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    return p3
.end method

.method private getIntExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 0

    .line 440
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 441
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 443
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 444
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 445
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    return p3
.end method

.method private getParcelableArrayExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 0

    .line 429
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 430
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    .line 432
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 434
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;J)J
    .locals 0

    .line 463
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 464
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 466
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 467
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 468
    invoke-virtual {p1, p0, p3, p4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide p3
.end method

.method private getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 417
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 418
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    .line 420
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 407
    sget-object v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->SHORTER_EXTRAS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 475
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 476
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 478
    :cond_0
    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 479
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 480
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 0

    .line 411
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getShortExtraNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isFullyManagedDeviceAction(Landroid/content/Intent;)Z
    .locals 1

    .line 671
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 672
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private parseAllSupportedProvisioningData(Landroid/content/Intent;Landroid/content/Context;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    .line 684
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing all supported extras intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->parseMinimalistSupportedProvisioningDataInternal(Landroid/content/Intent;Landroid/content/Context;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object p2

    const-string v0, "android.app.extra.PROVISIONING_TIME_ZONE"

    .line 687
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setTimeZone(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.extra.PROVISIONING_LOCAL_TIME"

    const-wide/16 v1, -0x1

    .line 689
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    .line 688
    invoke-virtual {p2, v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLocalTime(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.extra.PROVISIONING_LOCALE"

    .line 693
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLocale(Ljava/util/Locale;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

    const/4 v1, 0x0

    .line 695
    invoke-direct {p0, p1, v0, v1}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 694
    invoke-virtual {p2, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setUseMobileData(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 699
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->parseWifiInfoFromExtras(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/WifiInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setWifiInfo(Lcom/android/managedprovisioning/model/WifiInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 701
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->parsePackageDownloadInfoFromExtras(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminDownloadInfo(Lcom/android/managedprovisioning/model/PackageDownloadInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string p0, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    .line 708
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 707
    invoke-virtual {p2, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setStartedByTrustedSource(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 709
    invoke-virtual {p2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 715
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string p2, "Compulsory parameter not found!"

    invoke-direct {p1, p2, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 713
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string p2, "Invalid locale format!"

    invoke-direct {p1, p2, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 711
    new-instance p1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string p2, "Invalid parameter found!"

    invoke-direct {p1, p2, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private parseMinimalistSupportedProvisioningDataInternal(Landroid/content/Intent;Landroid/content/Context;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "android.app.extra.PROVISIONING_MAIN_COLOR"

    .line 511
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.app.action.PROVISION_FINANCED_DEVICE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 517
    :try_start_0
    iget-object v7, v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-virtual {v7}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->incrementAndGetProvisioningId()J

    move-result-wide v7

    .line 518
    iget-object v9, v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v9, v1}, Lcom/android/managedprovisioning/common/Utils;->mapIntentToDpmAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 520
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    .line 523
    invoke-direct {v0, v1, v11}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    const-string v12, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    .line 531
    invoke-direct {v0, v1, v12}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 535
    iget-object v13, v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 539
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    .line 535
    invoke-virtual {v13, v12, v11, v2, v14}, Lcom/android/managedprovisioning/common/Utils;->findDeviceAdmin(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v11

    :cond_0
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v5, :cond_2

    const-string v14, "android.app.action.PROVISION_MANAGED_USER"

    .line 552
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 553
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    const-string v14, "android.app.extra.PROVISIONING_SKIP_USER_SETUP"

    .line 554
    invoke-direct {v0, v1, v14, v12}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v14

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    move v14, v13

    goto :goto_0

    :cond_3
    move v14, v12

    :goto_0
    const/4 v15, 0x0

    if-eqz v10, :cond_4

    const-string v12, "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"

    .line 564
    invoke-direct {v0, v1, v12, v13}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 567
    invoke-static {v11, v15}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferStaticDeviceAdminPackageName(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lcom/android/managedprovisioning/common/Utils;->isPackageDeviceOwner(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 570
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->shouldSkipEducationScreens(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v10, :cond_5

    const-string v13, "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

    const/4 v15, 0x0

    .line 574
    invoke-direct {v0, v1, v13, v15}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    .line 582
    :goto_2
    sget-object v13, Lcom/android/managedprovisioning/model/ProvisioningParams;->DEFAULT_MAIN_COLOR:Ljava/lang/Integer;

    if-nez v5, :cond_7

    .line 584
    invoke-direct {v0, v1, v3}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->hasExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v13, 0x0

    .line 585
    invoke-direct {v0, v1, v3, v13}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getIntExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 588
    :cond_6
    invoke-direct {v0, v2, v1}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->parseOrganizationLogoUrlFromExtras(Landroid/content/Context;Landroid/content/Intent;)V

    .line 591
    :cond_7
    new-instance v3, Lcom/android/managedprovisioning/parser/DisclaimersParser;

    invoke-direct {v3, v2, v7, v8}, Lcom/android/managedprovisioning/parser/DisclaimersParser;-><init>(Landroid/content/Context;J)V

    move/from16 v16, v12

    const-string v12, "android.app.extra.PROVISIONING_DISCLAIMERS"

    .line 592
    invoke-direct {v0, v1, v12}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableArrayExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/android/managedprovisioning/parser/DisclaimersParser;->parse([Landroid/os/Parcelable;)Lcom/android/managedprovisioning/model/DisclaimersParam;

    move-result-object v3

    if-nez v5, :cond_9

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const-string v5, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"

    .line 600
    invoke-direct {v0, v1, v5}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "android.app.extra.PROVISIONING_ORGANIZATION_NAME"

    .line 602
    invoke-direct {v0, v1, v12}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v5

    const-string v5, "android.app.extra.PROVISIONING_SUPPORT_URL"

    .line 604
    invoke-direct {v0, v1, v5}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 605
    new-instance v5, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;

    invoke-direct {v5, v2, v7, v8}, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;-><init>(Landroid/content/Context;J)V

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"

    .line 606
    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 605
    invoke-virtual {v5, v2}, Lcom/android/managedprovisioning/parser/DeviceAdminIconParser;->parse(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v17

    move-object/from16 v17, v2

    move-object v2, v12

    move-object/from16 v12, v18

    :goto_4
    if-eqz v10, :cond_b

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    if-nez v6, :cond_c

    const-string v6, "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

    const/4 v10, 0x0

    .line 613
    invoke-direct {v0, v1, v6, v10}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_c
    const/4 v6, 0x1

    .line 617
    :goto_5
    invoke-static {}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->builder()Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object v10

    .line 618
    invoke-virtual {v10, v7, v8}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningId(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 619
    invoke-virtual {v10, v9}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 620
    invoke-virtual {v10, v11}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminComponentName(Landroid/content/ComponentName;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const/4 v7, 0x0

    .line 621
    invoke-virtual {v10, v7}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminPackageName(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v7, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    const/4 v8, 0x0

    .line 623
    invoke-direct {v0, v1, v7, v8}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v7

    .line 622
    invoke-virtual {v10, v7}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipEncryption(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 626
    invoke-virtual {v10, v6}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLeaveAllSystemAppsEnabled(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v6, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    .line 627
    invoke-direct {v0, v1, v6}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/PersistableBundle;

    invoke-virtual {v10, v6}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setAdminExtrasBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 629
    invoke-virtual {v10, v13}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setMainColor(Ljava/lang/Integer;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 630
    invoke-virtual {v10, v3}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDisclaimersParam(Lcom/android/managedprovisioning/model/DisclaimersParam;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 631
    invoke-virtual {v10, v4}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipUserConsent(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 632
    invoke-virtual {v10, v15}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setKeepAccountMigrated(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 633
    invoke-virtual {v10, v14}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipUserSetup(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move/from16 v3, v16

    .line 634
    invoke-virtual {v10, v3}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipEducationScreens(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v3, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    .line 635
    invoke-direct {v0, v1, v3}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    invoke-virtual {v10, v3}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setAccountToMigrate(Landroid/accounts/Account;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 637
    invoke-virtual {v10, v5}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminLabel(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 638
    invoke-virtual {v10, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setOrganizationName(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 639
    invoke-virtual {v10, v12}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSupportUrl(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-object/from16 v2, v17

    .line 640
    invoke-virtual {v10, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminIconFilePath(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    iget-object v2, v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 641
    invoke-virtual {v2, v1}, Lcom/android/managedprovisioning/common/Utils;->isQrProvisioning(Landroid/content/Intent;)Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsQrProvisioning(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    iget-object v0, v0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 643
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isOrganizationOwnedProvisioning(Landroid/content/Intent;)Z

    move-result v0

    .line 642
    invoke-virtual {v10, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsOrganizationOwnedProvisioning(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    .line 649
    new-instance v1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v2, "Compulsory parameter not found!"

    invoke-direct {v1, v2, v0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 647
    new-instance v1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v2, "Invalid parameter found!"

    invoke-direct {v1, v2, v0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 645
    new-instance v1, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string v2, "Extra has invalid type"

    invoke-direct {v1, v2, v0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseOrganizationLogoUrlFromExtras(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.app.extra.PROVISIONING_LOGO_URI"

    .line 793
    invoke-direct {p0, p2, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_0

    .line 797
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/LogoUtils;->saveOrganisationLogo(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private parsePackageDownloadInfoFromExtras(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;
    .locals 4

    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

    .line 763
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 767
    :cond_0
    invoke-static {}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->builder()Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    move-result-object v1

    const v2, 0x7fffffff

    const-string v3, "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

    .line 768
    invoke-direct {p0, p1, v3, v2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getIntExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setMinVersion(I)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    .line 771
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setLocation(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

    .line 773
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setCookieHeader(Ljava/lang/String;)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

    .line 776
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 779
    invoke-static {v0}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setPackageChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    :cond_1
    const-string v0, "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

    .line 781
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 784
    invoke-static {p0}, Lcom/android/managedprovisioning/common/StoreUtils;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->setSignatureChecksum([B)Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;

    .line 786
    :cond_2
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$Builder;->build()Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method private parseWifiInfoFromExtras(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/WifiInfo;
    .locals 3

    const-string v0, "android.app.extra.PROVISIONING_WIFI_SSID"

    .line 724
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 727
    :cond_0
    invoke-static {}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->builder()Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    move-result-object v1

    .line 728
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setSsid(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

    .line 730
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setSecurityType(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PASSWORD"

    .line 731
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

    .line 732
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyHost(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

    .line 735
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyBypassHosts(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PAC_URL"

    .line 736
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPacUrl(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

    const/4 v2, 0x0

    .line 737
    invoke-direct {p0, p1, v0, v2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getIntExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setProxyPort(I)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

    .line 740
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setEapMethod(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

    .line 742
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setPhase2Auth(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

    .line 744
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setCaCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

    .line 746
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setUserCertificate(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_IDENTITY"

    .line 748
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

    .line 749
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setAnonymousIdentity(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_DOMAIN"

    .line 751
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getStringExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setDomain(Ljava/lang/String;)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    const-string v0, "android.app.extra.PROVISIONING_WIFI_HIDDEN"

    .line 752
    invoke-direct {p0, p1, v0, v2}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->setHidden(Z)Lcom/android/managedprovisioning/model/WifiInfo$Builder;

    .line 754
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/WifiInfo$Builder;->build()Lcom/android/managedprovisioning/model/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method private shouldSkipEducationScreens(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

    const/4 v1, 0x0

    .line 659
    invoke-direct {p0, p1, v0, v1}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getBooleanExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/Utils;->isOrganizationOwnedProvisioning(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 667
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->isFullyManagedDeviceAction(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public parse(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    .line 385
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.managedprovisioning.action.RESUME_PROVISIONING"

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "provisioningParams"

    .line 387
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->getParcelableExtraFromLongName(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/android/managedprovisioning/model/ProvisioningParams;

    return-object p0

    .line 390
    :cond_0
    sget-object v1, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->PROVISIONING_ACTIONS_SUPPORT_MIN_PROVISIONING_DATA:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Processing mininalist extras intent."

    .line 391
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->parseMinimalistSupportedProvisioningDataInternal(Landroid/content/Intent;Landroid/content/Context;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0

    .line 394
    :cond_1
    sget-object v1, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->PROVISIONING_ACTIONS_SUPPORT_ALL_PROVISIONING_DATA:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v0, p0, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;->parseAllSupportedProvisioningData(Landroid/content/Intent;Landroid/content/Context;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0

    .line 398
    :cond_2
    new-instance p0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported provisioning action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
