.class public interface abstract Lmega/car/config/Account;
.super Ljava/lang/Object;
.source "Account.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x10
    permission = "mega.car.permission.ACCOUNT"
.end annotation


# static fields
.field public static final ID_ACCOUNT_FACE_ID:I = 0x10000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/AccountFaceId/Set"
        subscribe = "Account/AccountFaceId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ACCOUNT_FACE_MANAGER:I = 0x10000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/AccountFaceManager/Set"
        subscribe = "Account/AccountFaceManager"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ACCOUNT_FACE_MANAGER_ID:I = 0x10000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/AccountFaceManagerId/Set"
        subscribe = "Account/AccountFaceManagerId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ACCOUNT_ID:I = 0x10000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/AccountId/Set"
        subscribe = "Account/AccountId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLUETOOTH_USER_ID:I = 0x10000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Account/BluetoothUserId/Set"
        subscribe = "Account/BluetoothUserId"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FACE_AUTHENTICATE:I = 0x10000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/FaceAuthen/Set"
        subscribe = "Account/FaceAuthen"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_AUTHEN_NOTICE:I = 0x10000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/FaceAuthenNotice/Set"
        subscribe = "Account/FaceAuthenNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_DATA_ID:I = 0x10000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/FaceDataId/Set"
        subscribe = "Account/FaceDataId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x10
