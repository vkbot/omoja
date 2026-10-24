.class Lmega/config/UrlHostConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field public static final DEV_DIRECT_ACCOUNT_URL:Ljava/lang/String; = "dev_direct_account_url"

.field public static final DEV_MARS_ASR_URL:Ljava/lang/String; = "dev_mars_asr_url"

.field public static final DEV_PUSH_MQTT_URL:Ljava/lang/String; = "dev_push_mqtt_url"

.field public static final DEV_TETRIS_URL:Ljava/lang/String; = "dev_tetris_url"

.field private static final DOMAIN:Ljava/lang/String; = "urlhost"

.field public static final PRODUCTION_DIRECT_ACCOUNT_URL:Ljava/lang/String; = "production_direct_account_url"

.field public static final PRODUCTION_MARS_ASR_URL:Ljava/lang/String; = "production_mars_asr_url"

.field public static final PRODUCTION_PUSH_MQTT_URL:Ljava/lang/String; = "production_push_mqtt_url"

.field public static final PRODUCTION_TETRIS_URL:Ljava/lang/String; = "production_tetris_url"

.field public static final STAGING_DIRECT_ACCOUNT_URL:Ljava/lang/String; = "staging_direct_account_url"

.field public static final STAGING_MARS_ASR_URL:Ljava/lang/String; = "staging_mars_asr_url"

.field public static final STAGING_PUSH_MQTT_URL:Ljava/lang/String; = "staging_push_mqtt_url"

.field public static final STAGING_TETRIS_URL:Ljava/lang/String; = "staging_tetris_url"

.field public static final TEST_DIRECT_ACCOUNT_URL:Ljava/lang/String; = "test_direct_account_url"

.field public static final TEST_MARS_ASR_URL:Ljava/lang/String; = "test_mars_asr_url"

.field public static final TEST_PUSH_MQTT_URL:Ljava/lang/String; = "test_push_mqtt_url"

.field public static final TEST_TETRIS_URL:Ljava/lang/String; = "test_tetris_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmega/config/AbstractConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "urlhost"

    return-object p0
.end method

.method public getIntKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getStringKeys()[Ljava/lang/String;
    .locals 16

    const-string v0, "dev_tetris_url"

    const-string/jumbo v1, "test_tetris_url"

    const-string/jumbo v2, "staging_tetris_url"

    const-string/jumbo v3, "production_tetris_url"

    const-string v4, "dev_push_mqtt_url"

    const-string/jumbo v5, "test_push_mqtt_url"

    const-string/jumbo v6, "staging_push_mqtt_url"

    const-string/jumbo v7, "production_push_mqtt_url"

    const-string v8, "dev_mars_asr_url"

    const-string/jumbo v9, "test_mars_asr_url"

    const-string/jumbo v10, "staging_mars_asr_url"

    const-string/jumbo v11, "production_mars_asr_url"

    const-string v12, "dev_direct_account_url"

    const-string/jumbo v13, "test_direct_account_url"

    const-string/jumbo v14, "staging_direct_account_url"

    const-string/jumbo v15, "production_direct_account_url"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
