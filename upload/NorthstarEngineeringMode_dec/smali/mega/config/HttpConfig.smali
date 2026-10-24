.class Lmega/config/HttpConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field public static final ACCOUNT_APP_ID:Ljava/lang/String; = "account_app_id"

.field public static final ACCOUNT_APP_SECRET_DEV:Ljava/lang/String; = "account_app_secret_dev"

.field public static final ACCOUNT_APP_SECRET_PRO:Ljava/lang/String; = "account_app_secret_pro"

.field public static final ACCOUNT_APP_SECRET_STG:Ljava/lang/String; = "account_app_secret_stg"

.field public static final ACCOUNT_APP_SECRET_TEST:Ljava/lang/String; = "account_app_secret_test"

.field public static final ASSISTANT_APP_ID:Ljava/lang/String; = "assistant_app_id"

.field public static final ASSISTANT_APP_SECRET_DEV:Ljava/lang/String; = "assistant_app_secret_dev"

.field public static final ASSISTANT_APP_SECRET_PRO:Ljava/lang/String; = "assistant_app_secret_pro"

.field public static final ASSISTANT_APP_SECRET_STG:Ljava/lang/String; = "assistant_app_secret_stg"

.field public static final ASSISTANT_APP_SECRET_TEST:Ljava/lang/String; = "assistant_app_secret_test"

.field private static final DOMAIN:Ljava/lang/String; = "http"

.field public static final OWL_APP_ID:Ljava/lang/String; = "owl_app_id"

.field public static final OWL_APP_SECRET_DEV:Ljava/lang/String; = "owl_app_secret_dev"

.field public static final OWL_APP_SECRET_PRO:Ljava/lang/String; = "owl_app_secret_pro"

.field public static final OWL_APP_SECRET_STG:Ljava/lang/String; = "owl_app_secret_stg"

.field public static final OWL_APP_SECRET_TEST:Ljava/lang/String; = "owl_app_secret_test"

.field public static final PUSH_APP_ID:Ljava/lang/String; = "push_app_id"

.field public static final PUSH_APP_KEEP_ALIVE:Ljava/lang/String; = "push_app_keep_alive"

.field public static final PUSH_APP_SECRET_DEV:Ljava/lang/String; = "push_app_secret_dev"

.field public static final PUSH_APP_SECRET_PRO:Ljava/lang/String; = "push_app_secret_pro"

.field public static final PUSH_APP_SECRET_STG:Ljava/lang/String; = "push_app_secret_stg"

.field public static final PUSH_APP_SECRET_TEST:Ljava/lang/String; = "push_app_secret_test"

.field public static final PUSH_APP_SUBSCRIBE_USESSL:Ljava/lang/String; = "push_app_subscribe_usessl"

.field public static final PUSH_APP_USE_TWOWAYTLS:Ljava/lang/String; = "push_app_use_twowaytls"

.field public static final STORE_APP_ID:Ljava/lang/String; = "store_app_id"

.field public static final STORE_APP_SECRET_DEV:Ljava/lang/String; = "store_app_secret_dev"

.field public static final STORE_APP_SECRET_PRO:Ljava/lang/String; = "store_app_secret_pro"

.field public static final STORE_APP_SECRET_STG:Ljava/lang/String; = "store_app_secret_stg"

.field public static final STORE_APP_SECRET_TEST:Ljava/lang/String; = "store_app_secret_test"


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

    const-string p0, "http"

    return-object p0
.end method

.method public getIntKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getStringKeys()[Ljava/lang/String;
    .locals 28

    const-string/jumbo v0, "push_app_id"

    const-string/jumbo v1, "push_app_secret_dev"

    const-string/jumbo v2, "push_app_secret_test"

    const-string/jumbo v3, "push_app_secret_stg"

    const-string/jumbo v4, "push_app_secret_pro"

    const-string v5, "account_app_id"

    const-string v6, "account_app_secret_dev"

    const-string v7, "account_app_secret_test"

    const-string v8, "account_app_secret_stg"

    const-string v9, "account_app_secret_pro"

    const-string/jumbo v10, "store_app_id"

    const-string/jumbo v11, "store_app_secret_dev"

    const-string/jumbo v12, "store_app_secret_test"

    const-string/jumbo v13, "store_app_secret_stg"

    const-string/jumbo v14, "store_app_secret_pro"

    const-string/jumbo v15, "owl_app_id"

    const-string/jumbo v16, "owl_app_secret_dev"

    const-string/jumbo v17, "owl_app_secret_test"

    const-string/jumbo v18, "owl_app_secret_stg"

    const-string/jumbo v19, "owl_app_secret_pro"

    const-string v20, "assistant_app_id"

    const-string v21, "assistant_app_secret_dev"

    const-string v22, "assistant_app_secret_test"

    const-string v23, "assistant_app_secret_stg"

    const-string v24, "assistant_app_secret_pro"

    const-string/jumbo v25, "push_app_subscribe_usessl"

    const-string/jumbo v26, "push_app_keep_alive"

    const-string/jumbo v27, "push_app_use_twowaytls"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
