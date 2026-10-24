.class Lmega/config/AssistantConfig;
.super Lmega/config/AbstractConfig;
.source "SourceFile"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "assistant"

.field public static final KEY_MEDIA_APP_MAPPING:Ljava/lang/String; = "media_app_mapping"


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

    const-string p0, "assistant"

    return-object p0
.end method

.method public getIntKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getStringKeys()[Ljava/lang/String;
    .locals 0

    const-string p0, "media_app_mapping"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
