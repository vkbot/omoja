.class public Lcom/mega/nexus/telephony/MegaSignalStrength;
.super Ljava/lang/Object;
.source "MegaSignalStrength.java"


# static fields
.field public static final INVALID:I = 0x7fffffff

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p0, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 23
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    return v0
.end method

.method public static getLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p0, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 19
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    return v0
.end method
