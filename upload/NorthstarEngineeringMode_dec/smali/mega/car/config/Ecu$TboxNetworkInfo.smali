.class public final Lmega/car/config/Ecu$TboxNetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Ecu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TboxNetworkInfo"
.end annotation


# instance fields
.field public mode:B

.field public rssi:B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lmega/car/config/Ecu$TboxNetworkInfo;->mode:B

    const/4 v0, 0x1

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lmega/car/config/Ecu$TboxNetworkInfo;->rssi:B

    return-void
.end method
