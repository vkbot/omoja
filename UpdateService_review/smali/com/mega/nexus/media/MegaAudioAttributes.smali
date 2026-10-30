.class public Lcom/mega/nexus/media/MegaAudioAttributes;
.super Ljava/lang/Object;
.source "MegaAudioAttributes.java"


# static fields
.field public static final CONTENT_TYPE_MARS:I = 0x4

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_BCALL:I = 0x7d6

.field public static final USAGE_EMERGENCY:I = 0x3e8

.field public static final USAGE_MARS:I = 0xc

.field public static final USAGE_SAFETY:I = 0x3e9

.field public static final USAGE_VEHICLE_STATUS:I = 0x3ea

.field public static final USAGE_VENDOR_ALARM:I = 0x7d3

.field public static final USAGE_VENDOR_BACKCAR:I = 0x7d7

.field public static final USAGE_VENDOR_CALL:I = 0x7d0

.field public static final USAGE_VENDOR_CALL_RING:I = 0x7d1

.field public static final USAGE_VENDOR_IVI:I = 0x7d3

.field public static final USAGE_VENDOR_MEETING:I = 0x7d6

.field public static final USAGE_VENDOR_NOTIFICATION:I = 0x7d5

.field public static final USAGE_VENDOR_TTS:I = 0x7d2

.field public static final USAGE_VENDOR_VPA:I = 0x7d7

.field public static final USAGE_VENDOR_VR:I = 0x7d4

.field public static final USAGE_VENDOR_WAVES:I = 0x7d8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemUsage(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 28
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    return v0
.end method
