.class public interface abstract Lmega/car/config/ElecPower$ChargeState;
.super Ljava/lang/Object;
.source "ElecPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/ElecPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChargeState"
.end annotation


# static fields
.field public static final CSD_CHARGEERR:I = 0x3

.field public static final CSD_CHARGEFINISH:I = 0x1

.field public static final CSD_CHARGEHEATING:I = 0x4

.field public static final CSD_CHARGEPILEERROR:I = 0x5

.field public static final CSD_CHARGING:I = 0x0

.field public static final CSD_GRIDWITHOUTPWRSUPLY:I = 0x2

.field public static final CSD_TIMERCHARGEWAIT:I = 0x6
