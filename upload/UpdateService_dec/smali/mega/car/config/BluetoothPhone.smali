.class public interface abstract Lmega/car/config/BluetoothPhone;
.super Ljava/lang/Object;
.source "BluetoothPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/BluetoothPhone$CallStatus;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x1e
    permission = "mega.car.permission.NET"
.end annotation


# static fields
.field public static final ID_CALL_HISTORY:I = 0x1e000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "btphone_list/Set"
        subscribe = "btphone_list"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CALL_REQUEST:I = 0x1e000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "btphone_req/Set"
        subscribe = "btphone_req"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CALL_STATE:I = 0x1e000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BluetoothPhone/CallState"
        subscribe = "BluetoothPhone/CallState/Set"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_CALL_STATUS:I = 0x1e000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BluetoothPhone/CallStatus/Set"
        subscribe = "BluetoothPhone/CallStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CALL_TIME:I = 0x1e000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BluetoothPhone/CallTime/Set"
        subscribe = "BluetoothPhone/CallTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_CONTACT_ICON:I = 0x1e000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BluetoothPhone/ContactIcon/Set"
        subscribe = "BluetoothPhone/ContactIcon"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_PHONE_INFO_WORD_CODE:I = 0x1e000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BluetoothPhone/PhoneInfoWordCode/Set"
        subscribe = "BluetoothPhone/PhoneInfoWordCode"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_PHONE_NUMBER:I = 0x1e000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BluetoothPhone/PhoneNumber/Set"
        subscribe = "BluetoothPhone/PhoneNumber"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x1e

.field public static final PRIVACY_MODE_TEXT:I = 0x1e000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BluetoothPhone/PrivacyModeText/Set"
        subscribe = "BluetoothPhone/PrivacyModeText"
        type = Ljava/lang/Integer;
    .end annotation
.end field
