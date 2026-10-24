.class public Lcom/mega/update/peripheral/TboxProtocolUtil;
.super Ljava/lang/Object;
.source "TboxProtocolUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS;,
        Lcom/mega/update/peripheral/TboxProtocolUtil$TOPICS;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Ljava/lang/String; = "default"

.field public static final EVENT_DOWNLOAD_UPDATE:Ljava/lang/String; = "TBOX_DOWNLOAD_UPDATE"

.field public static final EVENT_UPDATE_PROGRESS:Ljava/lang/String; = "TBOX_UPDATE_PROGRESS"

.field public static final EVENT_UPDATE_RESULT:Ljava/lang/String; = "TBOX_UPDATE_RESULT"

.field public static final EVENT_UPDATE_SWITCH:Ljava/lang/String; = "TBOX_UPDATE_SWITCH"

.field public static final EVENT_VERSION:Ljava/lang/String; = "TBOX_VERSION"

.field public static final FTP_DIR_NAME:Ljava/lang/String; = "/data/ota_package/"

.field public static final FTP_FILE_NAME:Ljava/lang/String; = "/data/ota_package/users.properties"

.field public static final FTP_PORT:I = 0x849

.field public static final FTP_SERVER_IP:Ljava/lang/String; = "172.30.80.3"

.field public static final FTP_SERVER_NAME:Ljava/lang/String; = "admin"

.field public static final FTP_SERVER_PASSWORD:Ljava/lang/String; = "123456"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static short2byte(S)[B
    .locals 5
    .param p0, "s"    # S

    .line 75
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 76
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 77
    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x10

    .line 78
    .local v3, "offset":I
    shr-int v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 76
    .end local v3    # "offset":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
