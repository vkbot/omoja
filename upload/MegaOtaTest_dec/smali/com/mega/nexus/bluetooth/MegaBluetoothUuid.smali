.class public final Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;
.super Ljava/lang/Object;
.source "MegaBluetoothUuid.java"


# static fields
.field public static final ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

.field public static final AUDIO_SINK:Landroid/os/ParcelUuid;

.field public static final AUDIO_SOURCE:Landroid/os/ParcelUuid;

.field public static final HANDSFREE:Landroid/os/ParcelUuid;

.field public static final HANDSFREE_AG:Landroid/os/ParcelUuid;

.field public static final HID:Landroid/os/ParcelUuid;

.field public static final HOGP:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final MAP:Landroid/os/ParcelUuid;

.field public static final MAS:Landroid/os/ParcelUuid;

.field public static final MNS:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PCE:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->A2DP_SINK:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->AUDIO_SINK:Landroid/os/ParcelUuid;

    .line 25
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->AUDIO_SOURCE:Landroid/os/ParcelUuid;

    .line 26
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    .line 27
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 28
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 29
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HFP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->HANDSFREE:Landroid/os/ParcelUuid;

    .line 30
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HFP_AG:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->HANDSFREE_AG:Landroid/os/ParcelUuid;

    .line 31
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HID:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->HID:Landroid/os/ParcelUuid;

    .line 32
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HOGP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    .line 33
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 34
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 35
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    .line 36
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 37
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    .line 38
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    .line 39
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    .line 40
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuidA"    # [Landroid/os/ParcelUuid;
    .param p1, "uuidB"    # [Landroid/os/ParcelUuid;

    .line 47
    invoke-static {p0, p1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p0, "uuidArray"    # [Landroid/os/ParcelUuid;
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .line 43
    invoke-static {p0, p1}, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    return v0
.end method
