.class public Lcom/mega/update/sdk/utils/OtaConstants;
.super Lcom/mega/update/manager/UpdateConstants;
.source "OtaConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/sdk/utils/OtaConstants$ECallStatus;,
        Lcom/mega/update/sdk/utils/OtaConstants$ECallAction;,
        Lcom/mega/update/sdk/utils/OtaConstants$DrivenType;,
        Lcom/mega/update/sdk/utils/OtaConstants$EcuErrorCode;
    }
.end annotation


# static fields
.field public static final ECU_NAME_APA:Ljava/lang/String; = "apa"

.field public static final ECU_NAME_DISPLAY:Ljava/lang/String; = "display"

.field public static final ECU_NAME_DMC:Ljava/lang/String; = "DMC"

.field public static final ECU_NAME_MCU:Ljava/lang/String; = "mcu"

.field public static final EVEVNT_CODE_SECURE_FLASH_INTERRUPT:I = 0x3

.field public static final EVEVNT_CODE_SECURE_FLASH_PRECONDITION_VERIFICATION_FAIL:I = 0x2

.field public static final EVEVNT_CODE_SECURE_FLASH_SIGNATURE_VERIFICATION_FAIL:I = 0x1

.field public static final EVEVNT_CODE_SECURE_NO_RSA:I = 0x4

.field public static final EVEVNT_LOG_LOGGING:Ljava/lang/String; = "secureLog/logging"

.field public static final EVEVNT_TYPE_SECURE_FLASH_FAIL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mega/update/manager/UpdateConstants;-><init>()V

    return-void
.end method
