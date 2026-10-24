.class public final Lp2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/ParcelUuid;

.field public static final b:Landroid/os/ParcelUuid;

.field public static final c:Landroid/os/ParcelUuid;

.field public static final d:Landroid/os/ParcelUuid;

.field public static final e:Landroid/os/ParcelUuid;

.field public static final f:Landroid/os/ParcelUuid;

.field public static final g:Landroid/os/ParcelUuid;

.field public static final h:Landroid/os/ParcelUuid;

.field public static final i:Landroid/os/ParcelUuid;

.field public static final j:Landroid/os/ParcelUuid;

.field public static final k:Landroid/os/ParcelUuid;

.field public static final l:Landroid/os/ParcelUuid;

.field public static final m:Landroid/os/ParcelUuid;

.field public static final n:Landroid/os/ParcelUuid;

.field public static final o:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->A2DP_SINK:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->a:Landroid/os/ParcelUuid;

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->b:Landroid/os/ParcelUuid;

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->c:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->d:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->e:Landroid/os/ParcelUuid;

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HFP:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->f:Landroid/os/ParcelUuid;

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HFP_AG:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->g:Landroid/os/ParcelUuid;

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HID:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->h:Landroid/os/ParcelUuid;

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->HOGP:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->i:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->j:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->k:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->l:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->m:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->n:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    sput-object v0, Lp2/a;->o:Landroid/os/ParcelUuid;

    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    return-void
.end method

.method public static a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p0

    return p0
.end method

.method public static b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/mega/nexus/bluetooth/MegaBluetoothUuidAdapter;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p0

    return p0
.end method
