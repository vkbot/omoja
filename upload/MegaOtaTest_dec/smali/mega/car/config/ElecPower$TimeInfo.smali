.class public Lmega/car/config/ElecPower$TimeInfo;
.super Ljava/lang/Object;
.source "ElecPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/ElecPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeInfo"
.end annotation


# instance fields
.field public date:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
