.class public final Lvendor/mega/hardware/automotive/vehicle/northstar/V2_0/VehiclePropertyNorthstar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADAS_NTF_DYNAMIC_OBJECT_LIST_ICM:I = 0x20701057

.field public static final ADAS_NTF_LANELINE_LIST_ICM:I = 0x20701059

.field public static final ADAS_NTF_OTHER_SYMBOL_ICM:I = 0x20701061

.field public static final ADAS_NTF_PLANNING_PATH_ICM:I = 0x20701060

.field public static final ADAS_NTF_STATIC_OBJECT_LIST_ICM:I = 0x20701058

.field public static final ADS_AUTONOMOUS_SETTING:I = 0x20101044

.field public static final ADS_GET_PACKAGE_DATA:I = 0x20701045

.field public static final ADS_NTF_ADS_AOM_STATUS_INFO:I = 0x20701049

.field public static final ADS_NTF_ADS_DB_INFO:I = 0x20701046

.field public static final ADS_NTF_AOM_SDK_STATUS:I = 0x20401047

.field public static final ADS_NTF_DYNAMIC_OBJECT_LIST_HD:I = 0x20701054

.field public static final ADS_NTF_EXT_MM_RES_WLNK:I = 0x20701043

.field public static final ADS_NTF_FUNC_STATE_HD:I = 0x20701053

.field public static final ADS_NTF_FUNC_STATE_HD_SPEED:I = 0x20401070

.field public static final ADS_NTF_LANE_CON_REL_CAL_RESULT:I = 0x20701048

.field public static final ADS_NTF_PLANNING_PATH_HD:I = 0x20701056

.field public static final ADS_NTF_STATIC_OBJECT_LIST_HD:I = 0x20701055

.field public static final ADS_START_ROUTE_MATCHING_BY_PB:I = 0x20101051

.field public static final ADS_STOP_ROUTE_MATCHING:I = 0x20401050

.field public static final ADS_UPDATE_NAV_STS_INFO:I = 0x20401052

.field public static final DMC_GNSS_TYPE:I = 0x20401040

.field public static final DZ_APA_FUNC_OPERATE:I = 0x20101063

.field public static final DZ_APA_PARKING_FUNC_MOD:I = 0x20401062

.field public static final DZ_MRA_OPERATION_ID:I = 0x20401065

.field public static final GNSS_INFO_1:I = 0x20101038

.field public static final GNSS_INFO_2:I = 0x20101039

.field public static final IDCU_GNSS_TYPE:I = 0x20401041

.field public static final INVALID:I = 0x0

.field public static final IVI_RENDER_DB_INFO:I = 0x20701042

.field public static final NTF_AVM_FAIL_STS:I = 0x20101068

.field public static final NTF_CALIBRATION_TRIGGER:I = 0x20401067

.field public static final NTF_CPA_FCN_OPERATING:I = 0x20401066

.field public static final NTF_HPA_FCN_OPERATING:I = 0x20101064

.field public static final NTF_VOICE_CONTROL_INFO:I = 0x20701069

.field public static final TBOX_APP_T:I = 0x20101023

.field public static final TBOX_BEICALL:I = 0x20101030

.field public static final TBOX_BLE_MODULE_INFO:I = 0x20101007

.field public static final TBOX_CAN_CONFIG:I = 0x20101020

.field public static final TBOX_CELL_INFO:I = 0x20101014

.field public static final TBOX_CERTIFICATE_ISSUED_MARK:I = 0x20101012

.field public static final TBOX_CURREN_MONTH_TALK_TIME:I = 0x20101016

.field public static final TBOX_ECU_VERSION:I = 0x20101019

.field public static final TBOX_IMEI_INFO:I = 0x20101010

.field public static final TBOX_KL15_STATE:I = 0x20401021

.field public static final TBOX_MIC_STATE:I = 0x20401018

.field public static final TBOX_NETWORK_STATUS:I = 0x20101004

.field public static final TBOX_OS_RTC:I = 0x20401024

.field public static final TBOX_OTA_APP_T_CANCEL:I = 0x20401026

.field public static final TBOX_OTA_APP_T_INSTALL:I = 0x20401000

.field public static final TBOX_OTA_APP_T_SET:I = 0x20101025

.field public static final TBOX_OTA_APP_T_SYNC:I = 0x20101027

.field public static final TBOX_OTA_REMOTE_APP_T_CANCEL:I = 0x20101003

.field public static final TBOX_OTA_REMOTE_APP_T_SET:I = 0x20101002

.field public static final TBOX_OTA_REMOTE_INSTALL:I = 0x20101001

.field public static final TBOX_OTA_STATE:I = 0x20101028

.field public static final TBOX_READY:I = 0x20401022

.field public static final TBOX_SET_CALL_NUMBER:I = 0x20101013

.field public static final TBOX_SIM_CARD_INFO:I = 0x20101009

.field public static final TBOX_TSP_CONNECTION_STATE:I = 0x20401017

.field public static final TBOX_UPLOAD_BEICALL_STS:I = 0x20101029

.field public static final TBOX_VEHICLE_DIAG:I = 0x20401015

.field public static final TBOX_VEHICLE_DIAG_STATUS:I = 0x20101005

.field public static final TBOX_VERSION_INFO:I = 0x20101006

.field public static final TBOX_VIN:I = 0x20101008

.field public static final TBOX_WORK_MODEL:I = 0x20401011

.field public static final USB_LOG_FTP_STS:I = 0x20101037

.field public static final USB_LOG_PREPARE:I = 0x20101036

.field public static final USB_UPDATE_COMPLETED:I = 0x20401035

.field public static final USB_UPDATE_FTP_STS:I = 0x20101032

.field public static final USB_UPDATE_PREPARE:I = 0x20401031

.field public static final USB_UPDATE_STA:I = 0x20101034

.field public static final USB_UPDATE_START:I = 0x20401033


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x20401000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const-string v2, "TBOX_OTA_APP_T_INSTALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x20101001

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    const-string v3, "TBOX_OTA_REMOTE_INSTALL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1
    const v2, 0x20101002

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    const-string v3, "TBOX_OTA_REMOTE_APP_T_SET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_2
    const v2, 0x20101003

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    const-string v3, "TBOX_OTA_REMOTE_APP_T_CANCEL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_3
    const v2, 0x20101004

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    const-string v3, "TBOX_NETWORK_STATUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_4
    const v2, 0x20101005

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    const-string v3, "TBOX_VEHICLE_DIAG_STATUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_5
    const v2, 0x20101006

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    const-string v3, "TBOX_VERSION_INFO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_6
    const v2, 0x20101007

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    const-string v3, "TBOX_BLE_MODULE_INFO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_7
    const v2, 0x20101008

    and-int v3, p0, v2

    if-ne v3, v2, :cond_8

    const-string v3, "TBOX_VIN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_8
    const v2, 0x20101009

    and-int v3, p0, v2

    if-ne v3, v2, :cond_9

    const-string v3, "TBOX_SIM_CARD_INFO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_9
    const v2, 0x20101010

    and-int v3, p0, v2

    if-ne v3, v2, :cond_a

    const-string v3, "TBOX_IMEI_INFO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_a
    const v2, 0x20401011

    and-int v3, p0, v2

    if-ne v3, v2, :cond_b

    const-string v3, "TBOX_WORK_MODEL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_b
    const v2, 0x20101012

    and-int v3, p0, v2

    if-ne v3, v2, :cond_c

    const-string v3, "TBOX_CERTIFICATE_ISSUED_MARK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_c
    const v2, 0x20101013

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d

    const-string v3, "TBOX_SET_CALL_NUMBER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_d
    const v2, 0x20101014

    and-int v3, p0, v2

    if-ne v3, v2, :cond_e

    const-string v3, "TBOX_CELL_INFO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_e
    const v2, 0x20401015

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f

    const-string v3, "TBOX_VEHICLE_DIAG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_f
    const v2, 0x20101016

    and-int v3, p0, v2

    if-ne v3, v2, :cond_10

    const-string v3, "TBOX_CURREN_MONTH_TALK_TIME"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_10
    const v2, 0x20401017

    and-int v3, p0, v2

    if-ne v3, v2, :cond_11

    const-string v3, "TBOX_TSP_CONNECTION_STATE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_11
    const v2, 0x20401018

    and-int v3, p0, v2

    if-ne v3, v2, :cond_12

    const-string v3, "TBOX_MIC_STATE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_12
    const v2, 0x20101019

    and-int v3, p0, v2

    if-ne v3, v2, :cond_13

    const-string v3, "TBOX_ECU_VERSION"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_13
    const v2, 0x20101020

    and-int v3, p0, v2

    if-ne v3, v2, :cond_14

    const-string v3, "TBOX_CAN_CONFIG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_14
    const v2, 0x20401021

    and-int v3, p0, v2

    if-ne v3, v2, :cond_15

    const-string v3, "TBOX_KL15_STATE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_15
    const v2, 0x20401022

    and-int/2addr v2, p0

    const v3, 0x20401022

    if-ne v2, v3, :cond_16

    const-string v2, "TBOX_READY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401022

    or-int/2addr v1, v2

    :cond_16
    const v2, 0x20101023

    and-int/2addr v2, p0

    const v3, 0x20101023

    if-ne v2, v3, :cond_17

    const-string v2, "TBOX_APP_T"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101023

    or-int/2addr v1, v2

    :cond_17
    const v2, 0x20401024

    and-int/2addr v2, p0

    const v3, 0x20401024

    if-ne v2, v3, :cond_18

    const-string v2, "TBOX_OS_RTC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401024

    or-int/2addr v1, v2

    :cond_18
    const v2, 0x20101025

    and-int/2addr v2, p0

    const v3, 0x20101025

    if-ne v2, v3, :cond_19

    const-string v2, "TBOX_OTA_APP_T_SET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101025

    or-int/2addr v1, v2

    :cond_19
    const v2, 0x20401026

    and-int/2addr v2, p0

    const v3, 0x20401026

    if-ne v2, v3, :cond_1a

    const-string v2, "TBOX_OTA_APP_T_CANCEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401026

    or-int/2addr v1, v2

    :cond_1a
    const v2, 0x20101027

    and-int/2addr v2, p0

    const v3, 0x20101027

    if-ne v2, v3, :cond_1b

    const-string v2, "TBOX_OTA_APP_T_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101027

    or-int/2addr v1, v2

    :cond_1b
    const v2, 0x20101028

    and-int/2addr v2, p0

    const v3, 0x20101028

    if-ne v2, v3, :cond_1c

    const-string v2, "TBOX_OTA_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101028

    or-int/2addr v1, v2

    :cond_1c
    const v2, 0x20101029

    and-int/2addr v2, p0

    const v3, 0x20101029

    if-ne v2, v3, :cond_1d

    const-string v2, "TBOX_UPLOAD_BEICALL_STS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101029

    or-int/2addr v1, v2

    :cond_1d
    const v2, 0x20101030

    and-int/2addr v2, p0

    const v3, 0x20101030

    if-ne v2, v3, :cond_1e

    const-string v2, "TBOX_BEICALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101030

    or-int/2addr v1, v2

    :cond_1e
    const v2, 0x20401031

    and-int/2addr v2, p0

    const v3, 0x20401031

    if-ne v2, v3, :cond_1f

    const-string v2, "USB_UPDATE_PREPARE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401031

    or-int/2addr v1, v2

    :cond_1f
    const v2, 0x20101032

    and-int/2addr v2, p0

    const v3, 0x20101032

    if-ne v2, v3, :cond_20

    const-string v2, "USB_UPDATE_FTP_STS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101032

    or-int/2addr v1, v2

    :cond_20
    const v2, 0x20401033

    and-int/2addr v2, p0

    const v3, 0x20401033

    if-ne v2, v3, :cond_21

    const-string v2, "USB_UPDATE_START"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401033

    or-int/2addr v1, v2

    :cond_21
    const v2, 0x20101034

    and-int/2addr v2, p0

    const v3, 0x20101034

    if-ne v2, v3, :cond_22

    const-string v2, "USB_UPDATE_STA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101034

    or-int/2addr v1, v2

    :cond_22
    const v2, 0x20401035

    and-int/2addr v2, p0

    const v3, 0x20401035

    if-ne v2, v3, :cond_23

    const-string v2, "USB_UPDATE_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401035

    or-int/2addr v1, v2

    :cond_23
    const v2, 0x20101036

    and-int/2addr v2, p0

    const v3, 0x20101036

    if-ne v2, v3, :cond_24

    const-string v2, "USB_LOG_PREPARE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101036

    or-int/2addr v1, v2

    :cond_24
    const v2, 0x20101037

    and-int/2addr v2, p0

    const v3, 0x20101037

    if-ne v2, v3, :cond_25

    const-string v2, "USB_LOG_FTP_STS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101037

    or-int/2addr v1, v2

    :cond_25
    const v2, 0x20101038

    and-int/2addr v2, p0

    const v3, 0x20101038

    if-ne v2, v3, :cond_26

    const-string v2, "GNSS_INFO_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101038

    or-int/2addr v1, v2

    :cond_26
    const v2, 0x20101039

    and-int/2addr v2, p0

    const v3, 0x20101039

    if-ne v2, v3, :cond_27

    const-string v2, "GNSS_INFO_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101039

    or-int/2addr v1, v2

    :cond_27
    const v2, 0x20401040

    and-int/2addr v2, p0

    const v3, 0x20401040

    if-ne v2, v3, :cond_28

    const-string v2, "DMC_GNSS_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401040

    or-int/2addr v1, v2

    :cond_28
    const v2, 0x20401041

    and-int/2addr v2, p0

    const v3, 0x20401041

    if-ne v2, v3, :cond_29

    const-string v2, "IDCU_GNSS_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401041

    or-int/2addr v1, v2

    :cond_29
    const v2, 0x20701042

    and-int/2addr v2, p0

    const v3, 0x20701042

    if-ne v2, v3, :cond_2a

    const-string v2, "IVI_RENDER_DB_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701042

    or-int/2addr v1, v2

    :cond_2a
    const v2, 0x20701043

    and-int/2addr v2, p0

    const v3, 0x20701043

    if-ne v2, v3, :cond_2b

    const-string v2, "ADS_NTF_EXT_MM_RES_WLNK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701043

    or-int/2addr v1, v2

    :cond_2b
    const v2, 0x20101044

    and-int/2addr v2, p0

    const v3, 0x20101044

    if-ne v2, v3, :cond_2c

    const-string v2, "ADS_AUTONOMOUS_SETTING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101044

    or-int/2addr v1, v2

    :cond_2c
    const v2, 0x20701045

    and-int/2addr v2, p0

    const v3, 0x20701045

    if-ne v2, v3, :cond_2d

    const-string v2, "ADS_GET_PACKAGE_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701045

    or-int/2addr v1, v2

    :cond_2d
    const v2, 0x20701046

    and-int/2addr v2, p0

    const v3, 0x20701046

    if-ne v2, v3, :cond_2e

    const-string v2, "ADS_NTF_ADS_DB_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701046

    or-int/2addr v1, v2

    :cond_2e
    const v2, 0x20401047

    and-int/2addr v2, p0

    const v3, 0x20401047

    if-ne v2, v3, :cond_2f

    const-string v2, "ADS_NTF_AOM_SDK_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401047

    or-int/2addr v1, v2

    :cond_2f
    const v2, 0x20701048

    and-int/2addr v2, p0

    const v3, 0x20701048

    if-ne v2, v3, :cond_30

    const-string v2, "ADS_NTF_LANE_CON_REL_CAL_RESULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701048

    or-int/2addr v1, v2

    :cond_30
    const v2, 0x20701049

    and-int/2addr v2, p0

    const v3, 0x20701049

    if-ne v2, v3, :cond_31

    const-string v2, "ADS_NTF_ADS_AOM_STATUS_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701049

    or-int/2addr v1, v2

    :cond_31
    const v2, 0x20401050

    and-int/2addr v2, p0

    const v3, 0x20401050

    if-ne v2, v3, :cond_32

    const-string v2, "ADS_STOP_ROUTE_MATCHING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401050

    or-int/2addr v1, v2

    :cond_32
    const v2, 0x20101051

    and-int/2addr v2, p0

    const v3, 0x20101051

    if-ne v2, v3, :cond_33

    const-string v2, "ADS_START_ROUTE_MATCHING_BY_PB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101051

    or-int/2addr v1, v2

    :cond_33
    const v2, 0x20401052

    and-int/2addr v2, p0

    const v3, 0x20401052

    if-ne v2, v3, :cond_34

    const-string v2, "ADS_UPDATE_NAV_STS_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401052

    or-int/2addr v1, v2

    :cond_34
    const v2, 0x20701053

    and-int/2addr v2, p0

    const v3, 0x20701053

    if-ne v2, v3, :cond_35

    const-string v2, "ADS_NTF_FUNC_STATE_HD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701053

    or-int/2addr v1, v2

    :cond_35
    const v2, 0x20701054

    and-int/2addr v2, p0

    const v3, 0x20701054

    if-ne v2, v3, :cond_36

    const-string v2, "ADS_NTF_DYNAMIC_OBJECT_LIST_HD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701054

    or-int/2addr v1, v2

    :cond_36
    const v2, 0x20701055

    and-int/2addr v2, p0

    const v3, 0x20701055

    if-ne v2, v3, :cond_37

    const-string v2, "ADS_NTF_STATIC_OBJECT_LIST_HD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701055

    or-int/2addr v1, v2

    :cond_37
    const v2, 0x20701056

    and-int/2addr v2, p0

    const v3, 0x20701056

    if-ne v2, v3, :cond_38

    const-string v2, "ADS_NTF_PLANNING_PATH_HD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701056

    or-int/2addr v1, v2

    :cond_38
    const v2, 0x20701057

    and-int/2addr v2, p0

    const v3, 0x20701057

    if-ne v2, v3, :cond_39

    const-string v2, "ADAS_NTF_DYNAMIC_OBJECT_LIST_ICM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701057

    or-int/2addr v1, v2

    :cond_39
    const v2, 0x20701058

    and-int/2addr v2, p0

    const v3, 0x20701058

    if-ne v2, v3, :cond_3a

    const-string v2, "ADAS_NTF_STATIC_OBJECT_LIST_ICM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701058

    or-int/2addr v1, v2

    :cond_3a
    const v2, 0x20701059

    and-int/2addr v2, p0

    const v3, 0x20701059

    if-ne v2, v3, :cond_3b

    const-string v2, "ADAS_NTF_LANELINE_LIST_ICM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701059

    or-int/2addr v1, v2

    :cond_3b
    const v2, 0x20701060

    and-int/2addr v2, p0

    const v3, 0x20701060

    if-ne v2, v3, :cond_3c

    const-string v2, "ADAS_NTF_PLANNING_PATH_ICM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701060

    or-int/2addr v1, v2

    :cond_3c
    const v2, 0x20701061

    and-int/2addr v2, p0

    const v3, 0x20701061

    if-ne v2, v3, :cond_3d

    const-string v2, "ADAS_NTF_OTHER_SYMBOL_ICM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701061

    or-int/2addr v1, v2

    :cond_3d
    const v2, 0x20401062

    and-int/2addr v2, p0

    const v3, 0x20401062

    if-ne v2, v3, :cond_3e

    const-string v2, "DZ_APA_PARKING_FUNC_MOD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401062

    or-int/2addr v1, v2

    :cond_3e
    const v2, 0x20101063

    and-int/2addr v2, p0

    const v3, 0x20101063

    if-ne v2, v3, :cond_3f

    const-string v2, "DZ_APA_FUNC_OPERATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101063

    or-int/2addr v1, v2

    :cond_3f
    const v2, 0x20101064

    and-int/2addr v2, p0

    const v3, 0x20101064

    if-ne v2, v3, :cond_40

    const-string v2, "NTF_HPA_FCN_OPERATING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101064

    or-int/2addr v1, v2

    :cond_40
    const v2, 0x20401065

    and-int/2addr v2, p0

    const v3, 0x20401065

    if-ne v2, v3, :cond_41

    const-string v2, "DZ_MRA_OPERATION_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401065

    or-int/2addr v1, v2

    :cond_41
    const v2, 0x20401066

    and-int/2addr v2, p0

    const v3, 0x20401066

    if-ne v2, v3, :cond_42

    const-string v2, "NTF_CPA_FCN_OPERATING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401066

    or-int/2addr v1, v2

    :cond_42
    const v2, 0x20401067

    and-int/2addr v2, p0

    const v3, 0x20401067

    if-ne v2, v3, :cond_43

    const-string v2, "NTF_CALIBRATION_TRIGGER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401067

    or-int/2addr v1, v2

    :cond_43
    const v2, 0x20101068

    and-int/2addr v2, p0

    const v3, 0x20101068

    if-ne v2, v3, :cond_44

    const-string v2, "NTF_AVM_FAIL_STS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20101068

    or-int/2addr v1, v2

    :cond_44
    const v2, 0x20701069

    and-int/2addr v2, p0

    const v3, 0x20701069

    if-ne v2, v3, :cond_45

    const-string v2, "NTF_VOICE_CONTROL_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20701069

    or-int/2addr v1, v2

    :cond_45
    const v2, 0x20401070

    and-int/2addr v2, p0

    const v3, 0x20401070

    if-ne v2, v3, :cond_46

    const-string v2, "ADS_NTF_FUNC_STATE_HD_SPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x20401070

    or-int/2addr v1, v2

    :cond_46
    if-eq p0, v1, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const v0, 0x20401000

    if-ne p0, v0, :cond_1

    const-string p0, "TBOX_OTA_APP_T_INSTALL"

    return-object p0

    :cond_1
    const v0, 0x20101001

    if-ne p0, v0, :cond_2

    const-string p0, "TBOX_OTA_REMOTE_INSTALL"

    return-object p0

    :cond_2
    const v0, 0x20101002

    if-ne p0, v0, :cond_3

    const-string p0, "TBOX_OTA_REMOTE_APP_T_SET"

    return-object p0

    :cond_3
    const v0, 0x20101003

    if-ne p0, v0, :cond_4

    const-string p0, "TBOX_OTA_REMOTE_APP_T_CANCEL"

    return-object p0

    :cond_4
    const v0, 0x20101004

    if-ne p0, v0, :cond_5

    const-string p0, "TBOX_NETWORK_STATUS"

    return-object p0

    :cond_5
    const v0, 0x20101005

    if-ne p0, v0, :cond_6

    const-string p0, "TBOX_VEHICLE_DIAG_STATUS"

    return-object p0

    :cond_6
    const v0, 0x20101006

    if-ne p0, v0, :cond_7

    const-string p0, "TBOX_VERSION_INFO"

    return-object p0

    :cond_7
    const v0, 0x20101007

    if-ne p0, v0, :cond_8

    const-string p0, "TBOX_BLE_MODULE_INFO"

    return-object p0

    :cond_8
    const v0, 0x20101008

    if-ne p0, v0, :cond_9

    const-string p0, "TBOX_VIN"

    return-object p0

    :cond_9
    const v0, 0x20101009

    if-ne p0, v0, :cond_a

    const-string p0, "TBOX_SIM_CARD_INFO"

    return-object p0

    :cond_a
    const v0, 0x20101010

    if-ne p0, v0, :cond_b

    const-string p0, "TBOX_IMEI_INFO"

    return-object p0

    :cond_b
    const v0, 0x20401011

    if-ne p0, v0, :cond_c

    const-string p0, "TBOX_WORK_MODEL"

    return-object p0

    :cond_c
    const v0, 0x20101012

    if-ne p0, v0, :cond_d

    const-string p0, "TBOX_CERTIFICATE_ISSUED_MARK"

    return-object p0

    :cond_d
    const v0, 0x20101013

    if-ne p0, v0, :cond_e

    const-string p0, "TBOX_SET_CALL_NUMBER"

    return-object p0

    :cond_e
    const v0, 0x20101014

    if-ne p0, v0, :cond_f

    const-string p0, "TBOX_CELL_INFO"

    return-object p0

    :cond_f
    const v0, 0x20401015

    if-ne p0, v0, :cond_10

    const-string p0, "TBOX_VEHICLE_DIAG"

    return-object p0

    :cond_10
    const v0, 0x20101016

    if-ne p0, v0, :cond_11

    const-string p0, "TBOX_CURREN_MONTH_TALK_TIME"

    return-object p0

    :cond_11
    const v0, 0x20401017

    if-ne p0, v0, :cond_12

    const-string p0, "TBOX_TSP_CONNECTION_STATE"

    return-object p0

    :cond_12
    const v0, 0x20401018

    if-ne p0, v0, :cond_13

    const-string p0, "TBOX_MIC_STATE"

    return-object p0

    :cond_13
    const v0, 0x20101019

    if-ne p0, v0, :cond_14

    const-string p0, "TBOX_ECU_VERSION"

    return-object p0

    :cond_14
    const v0, 0x20101020

    if-ne p0, v0, :cond_15

    const-string p0, "TBOX_CAN_CONFIG"

    return-object p0

    :cond_15
    const v0, 0x20401021

    if-ne p0, v0, :cond_16

    const-string p0, "TBOX_KL15_STATE"

    return-object p0

    :cond_16
    const v0, 0x20401022

    if-ne p0, v0, :cond_17

    const-string p0, "TBOX_READY"

    return-object p0

    :cond_17
    const v0, 0x20101023

    if-ne p0, v0, :cond_18

    const-string p0, "TBOX_APP_T"

    return-object p0

    :cond_18
    const v0, 0x20401024

    if-ne p0, v0, :cond_19

    const-string p0, "TBOX_OS_RTC"

    return-object p0

    :cond_19
    const v0, 0x20101025

    if-ne p0, v0, :cond_1a

    const-string p0, "TBOX_OTA_APP_T_SET"

    return-object p0

    :cond_1a
    const v0, 0x20401026

    if-ne p0, v0, :cond_1b

    const-string p0, "TBOX_OTA_APP_T_CANCEL"

    return-object p0

    :cond_1b
    const v0, 0x20101027

    if-ne p0, v0, :cond_1c

    const-string p0, "TBOX_OTA_APP_T_SYNC"

    return-object p0

    :cond_1c
    const v0, 0x20101028

    if-ne p0, v0, :cond_1d

    const-string p0, "TBOX_OTA_STATE"

    return-object p0

    :cond_1d
    const v0, 0x20101029

    if-ne p0, v0, :cond_1e

    const-string p0, "TBOX_UPLOAD_BEICALL_STS"

    return-object p0

    :cond_1e
    const v0, 0x20101030

    if-ne p0, v0, :cond_1f

    const-string p0, "TBOX_BEICALL"

    return-object p0

    :cond_1f
    const v0, 0x20401031

    if-ne p0, v0, :cond_20

    const-string p0, "USB_UPDATE_PREPARE"

    return-object p0

    :cond_20
    const v0, 0x20101032

    if-ne p0, v0, :cond_21

    const-string p0, "USB_UPDATE_FTP_STS"

    return-object p0

    :cond_21
    const v0, 0x20401033

    if-ne p0, v0, :cond_22

    const-string p0, "USB_UPDATE_START"

    return-object p0

    :cond_22
    const v0, 0x20101034

    if-ne p0, v0, :cond_23

    const-string p0, "USB_UPDATE_STA"

    return-object p0

    :cond_23
    const v0, 0x20401035

    if-ne p0, v0, :cond_24

    const-string p0, "USB_UPDATE_COMPLETED"

    return-object p0

    :cond_24
    const v0, 0x20101036

    if-ne p0, v0, :cond_25

    const-string p0, "USB_LOG_PREPARE"

    return-object p0

    :cond_25
    const v0, 0x20101037

    if-ne p0, v0, :cond_26

    const-string p0, "USB_LOG_FTP_STS"

    return-object p0

    :cond_26
    const v0, 0x20101038

    if-ne p0, v0, :cond_27

    const-string p0, "GNSS_INFO_1"

    return-object p0

    :cond_27
    const v0, 0x20101039

    if-ne p0, v0, :cond_28

    const-string p0, "GNSS_INFO_2"

    return-object p0

    :cond_28
    const v0, 0x20401040

    if-ne p0, v0, :cond_29

    const-string p0, "DMC_GNSS_TYPE"

    return-object p0

    :cond_29
    const v0, 0x20401041

    if-ne p0, v0, :cond_2a

    const-string p0, "IDCU_GNSS_TYPE"

    return-object p0

    :cond_2a
    const v0, 0x20701042

    if-ne p0, v0, :cond_2b

    const-string p0, "IVI_RENDER_DB_INFO"

    return-object p0

    :cond_2b
    const v0, 0x20701043

    if-ne p0, v0, :cond_2c

    const-string p0, "ADS_NTF_EXT_MM_RES_WLNK"

    return-object p0

    :cond_2c
    const v0, 0x20101044

    if-ne p0, v0, :cond_2d

    const-string p0, "ADS_AUTONOMOUS_SETTING"

    return-object p0

    :cond_2d
    const v0, 0x20701045

    if-ne p0, v0, :cond_2e

    const-string p0, "ADS_GET_PACKAGE_DATA"

    return-object p0

    :cond_2e
    const v0, 0x20701046

    if-ne p0, v0, :cond_2f

    const-string p0, "ADS_NTF_ADS_DB_INFO"

    return-object p0

    :cond_2f
    const v0, 0x20401047

    if-ne p0, v0, :cond_30

    const-string p0, "ADS_NTF_AOM_SDK_STATUS"

    return-object p0

    :cond_30
    const v0, 0x20701048

    if-ne p0, v0, :cond_31

    const-string p0, "ADS_NTF_LANE_CON_REL_CAL_RESULT"

    return-object p0

    :cond_31
    const v0, 0x20701049

    if-ne p0, v0, :cond_32

    const-string p0, "ADS_NTF_ADS_AOM_STATUS_INFO"

    return-object p0

    :cond_32
    const v0, 0x20401050

    if-ne p0, v0, :cond_33

    const-string p0, "ADS_STOP_ROUTE_MATCHING"

    return-object p0

    :cond_33
    const v0, 0x20101051

    if-ne p0, v0, :cond_34

    const-string p0, "ADS_START_ROUTE_MATCHING_BY_PB"

    return-object p0

    :cond_34
    const v0, 0x20401052

    if-ne p0, v0, :cond_35

    const-string p0, "ADS_UPDATE_NAV_STS_INFO"

    return-object p0

    :cond_35
    const v0, 0x20701053

    if-ne p0, v0, :cond_36

    const-string p0, "ADS_NTF_FUNC_STATE_HD"

    return-object p0

    :cond_36
    const v0, 0x20701054

    if-ne p0, v0, :cond_37

    const-string p0, "ADS_NTF_DYNAMIC_OBJECT_LIST_HD"

    return-object p0

    :cond_37
    const v0, 0x20701055

    if-ne p0, v0, :cond_38

    const-string p0, "ADS_NTF_STATIC_OBJECT_LIST_HD"

    return-object p0

    :cond_38
    const v0, 0x20701056

    if-ne p0, v0, :cond_39

    const-string p0, "ADS_NTF_PLANNING_PATH_HD"

    return-object p0

    :cond_39
    const v0, 0x20701057

    if-ne p0, v0, :cond_3a

    const-string p0, "ADAS_NTF_DYNAMIC_OBJECT_LIST_ICM"

    return-object p0

    :cond_3a
    const v0, 0x20701058

    if-ne p0, v0, :cond_3b

    const-string p0, "ADAS_NTF_STATIC_OBJECT_LIST_ICM"

    return-object p0

    :cond_3b
    const v0, 0x20701059

    if-ne p0, v0, :cond_3c

    const-string p0, "ADAS_NTF_LANELINE_LIST_ICM"

    return-object p0

    :cond_3c
    const v0, 0x20701060

    if-ne p0, v0, :cond_3d

    const-string p0, "ADAS_NTF_PLANNING_PATH_ICM"

    return-object p0

    :cond_3d
    const v0, 0x20701061

    if-ne p0, v0, :cond_3e

    const-string p0, "ADAS_NTF_OTHER_SYMBOL_ICM"

    return-object p0

    :cond_3e
    const v0, 0x20401062

    if-ne p0, v0, :cond_3f

    const-string p0, "DZ_APA_PARKING_FUNC_MOD"

    return-object p0

    :cond_3f
    const v0, 0x20101063

    if-ne p0, v0, :cond_40

    const-string p0, "DZ_APA_FUNC_OPERATE"

    return-object p0

    :cond_40
    const v0, 0x20101064

    if-ne p0, v0, :cond_41

    const-string p0, "NTF_HPA_FCN_OPERATING"

    return-object p0

    :cond_41
    const v0, 0x20401065

    if-ne p0, v0, :cond_42

    const-string p0, "DZ_MRA_OPERATION_ID"

    return-object p0

    :cond_42
    const v0, 0x20401066

    if-ne p0, v0, :cond_43

    const-string p0, "NTF_CPA_FCN_OPERATING"

    return-object p0

    :cond_43
    const v0, 0x20401067

    if-ne p0, v0, :cond_44

    const-string p0, "NTF_CALIBRATION_TRIGGER"

    return-object p0

    :cond_44
    const v0, 0x20101068

    if-ne p0, v0, :cond_45

    const-string p0, "NTF_AVM_FAIL_STS"

    return-object p0

    :cond_45
    const v0, 0x20701069

    if-ne p0, v0, :cond_46

    const-string p0, "NTF_VOICE_CONTROL_INFO"

    return-object p0

    :cond_46
    const v0, 0x20401070

    if-ne p0, v0, :cond_47

    const-string p0, "ADS_NTF_FUNC_STATE_HD_SPEED"

    return-object p0

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/result/a;->b(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
