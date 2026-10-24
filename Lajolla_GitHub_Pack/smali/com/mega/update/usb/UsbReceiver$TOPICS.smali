.class final Lcom/mega/update/usb/UsbReceiver$TOPICS;
.super Ljava/lang/Object;
.source "UsbReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/usb/UsbReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TOPICS"
.end annotation


# static fields
.field public static final RPC_GEAR:Ljava/lang/String; = "T1CF1/DriveGearPosition"

.field public static final RPC_SPEED:Ljava/lang/String; = "DrivingInfo/Speed"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
