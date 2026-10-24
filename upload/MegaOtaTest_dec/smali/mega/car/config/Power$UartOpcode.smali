.class public interface abstract Lmega/car/config/Power$UartOpcode;
.super Ljava/lang/Object;
.source "Power.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Power;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UartOpcode"
.end annotation


# static fields
.field public static final COMMAND_SET_STR_DAYS:B = 0xet

.field public static final COMMAND_SET_STR_MODE:B = 0xdt

.field public static final COMMAND_SET_STR_MODE_GET_CURRENT:B = 0x2t

.field public static final OP_POWER_CONTROL:B = 0x6t

.field public static final OP_POWER_CONTROL_FAIL:B = -0x7at
