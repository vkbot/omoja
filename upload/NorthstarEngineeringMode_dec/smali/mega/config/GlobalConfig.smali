.class Lmega/config/GlobalConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "global"

.field public static final KEY_ENABLE_PUSH_FORWARD:Ljava/lang/String; = "enable_push_forward"

.field public static final KEY_ENABLE_PUSH_REISSUE:Ljava/lang/String; = "enable_push_reissue"

.field public static final KEY_INTERCEPT_INPUT_KEYS:Ljava/lang/String; = "intercept_input_keys"

.field public static final KEY_IS_SERVER_GENERATE_CLIENT_ID:Ljava/lang/String; = "is_server_generate_client_id"

.field public static final KEY_POWER_SLEEP_RULE:Ljava/lang/String; = "power_sleep_rule"

.field public static final KEY_SAFETY_RESTRICTED_PACKAGES:Ljava/lang/String; = "safety_restricted_packages"

.field public static final KEY_SCREEN_STATE_RULE:Ljava/lang/String; = "screen_state_rule"

.field public static final KEY_USE_ICCID_2:Ljava/lang/String; = "use_iccid_2"

.field public static final KEY_VEHICLE_HAL_NAME:Ljava/lang/String; = "vehicle_hal_name"

.field public static final KEY_VEHICLE_INPUT_MAPPING:Ljava/lang/String; = "vehicle_input_mapping"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/AbstractConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolKeys()[Ljava/lang/String;
    .locals 3

    const-string p0, "enable_push_reissue"

    const-string v0, "is_server_generate_client_id"

    const-string/jumbo v1, "use_iccid_2"

    const-string v2, "enable_push_forward"

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    const-string p0, "global"

    return-object p0
.end method

.method public getIntKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getStringKeys()[Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "power_sleep_rule"

    const-string/jumbo v1, "screen_state_rule"

    const-string/jumbo v2, "vehicle_hal_name"

    const-string/jumbo v3, "vehicle_input_mapping"

    const-string/jumbo v4, "safety_restricted_packages"

    const-string v5, "intercept_input_keys"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
