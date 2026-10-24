.class public Lmega/car/config/ConfigInject;
.super Ljava/lang/Object;
.source "ConfigInject.java"

# interfaces
.implements Lmega/car/config/CarPropertyProvider$Inject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInjectClass()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 9
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lmega/car/config/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lmega/car/config/Adas;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lmega/car/config/Apa;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lmega/car/config/Avm;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lmega/car/config/BluetoothPhone;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lmega/car/config/Cabin;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lmega/car/config/CarMonitor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lmega/car/config/Climate;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lmega/car/config/Comforts;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lmega/car/config/Dms;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lmega/car/config/Driving;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lmega/car/config/ElecPower;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lmega/car/config/EntryLocks;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lmega/car/config/FactoryTest;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lmega/car/config/Infotainment;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lmega/car/config/CustomKeyInput;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lmega/car/config/Lighting;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lmega/car/config/LocalEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lmega/car/config/Media;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lmega/car/config/Navigation;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lmega/car/config/Power;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lmega/car/config/Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lmega/car/config/VehicleBody;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lmega/car/config/VehicleMotion;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lmega/car/config/Warnings;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lmega/car/config/Windows;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lmega/car/config/Sequoia;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lmega/car/Signal;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lmega/car/config/SequoiaCarAudio;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lmega/car/config/SequoiaAvm;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lmega/car/config/TBoxSignal;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lmega/car/config/SequoiaMap;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lmega/car/config/RedwoodCustomKey;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lmega/car/UDPBAP;

    aput-object v2, v0, v1

    return-object v0
.end method
