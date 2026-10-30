.class public final Lcom/mega/nexus/provider/PowerSettings13$System;
.super Ljava/lang/Object;
.source "PowerSettings13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/provider/PowerSettings13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ABANDONED:I = 0x15

.field public static final MEGA_ANDROID_POWER_STATUS:Ljava/lang/String; = "mega_android_power_status"

.field public static final OTA:I = 0x17

.field public static final STATUS_BOOT_ANIMATION:I = 0x16

.field public static final STATUS_CRASH:I = 0x1c

.field public static final STATUS_DYNO:I = 0x1d

.field public static final STATUS_FACTORY:I = 0x18

.field public static final STATUS_FACTORY_PAUSED:I = 0x19

.field public static final STATUS_HIBERNATION_ENTER:I = 0x9

.field public static final STATUS_HIBERNATION_EXIT:I = 0xa

.field public static final STATUS_INVALID:I = 0x0

.field public static final STATUS_LOW_VOLTAGE:I = 0x14

.field public static final STATUS_ON:I = 0x6

.field public static final STATUS_OVER_VOLTAGE:I = 0x13

.field public static final STATUS_POST_HIBERNATION_ENTER:I = 0xe

.field public static final STATUS_POST_SHUTDOWN_ENTER:I = 0xd

.field public static final STATUS_POST_SUSPEND_ENTER:I = 0xc

.field public static final STATUS_PRE_SHUTDOWN_PREPARE:I = 0xb

.field public static final STATUS_REMOTE_BOOT:I = 0x12

.field public static final STATUS_SCREEN_SAVER:I = 0x10

.field public static final STATUS_SHUTDOWN_CANCELLED:I = 0x8

.field public static final STATUS_SHUTDOWN_ENTER:I = 0x5

.field public static final STATUS_SHUTDOWN_PREPARE:I = 0x7

.field public static final STATUS_STAND_BY:I = 0xf

.field public static final STATUS_SUSPEND_ENTER:I = 0x2

.field public static final STATUS_SUSPEND_EXIT:I = 0x3

.field public static final STATUS_TEMPORARY_WORKING:I = 0x11

.field public static final STATUS_TRANSPORT:I = 0x1a

.field public static final STATUS_TRANSPORT_PAUSED:I = 0x1b

.field public static final STATUS_WAIT_FOR_VHAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carPowerStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "carPowerState"    # I

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "builder":Ljava/lang/StringBuilder;
    packed-switch p0, :pswitch_data_0

    .line 240
    :pswitch_0
    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 239
    :pswitch_1
    const-string v1, "DYNO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 238
    :pswitch_2
    const-string v1, "CRASH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 237
    :pswitch_3
    const-string v1, "TRANSPORT_PAUSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 236
    :pswitch_4
    const-string v1, "TRANSPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 235
    :pswitch_5
    const-string v1, "FACTORY_PAUSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 234
    :pswitch_6
    const-string v1, "FACTORY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 233
    :pswitch_7
    const-string v1, "OTA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 232
    :pswitch_8
    const-string v1, "BOOT_ANIMATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 231
    :pswitch_9
    const-string v1, "ABANDONED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 230
    :pswitch_a
    const-string v1, "LOW_VOLTAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 229
    :pswitch_b
    const-string v1, "OVER_VOLTAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 228
    :pswitch_c
    const-string v1, "REMOTE_BOOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 227
    :pswitch_d
    const-string v1, "TEMPORARY_WORKING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 226
    :pswitch_e
    const-string v1, "SCREEN_SAVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    :pswitch_f
    const-string v1, "STANDBY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :pswitch_10
    const-string v1, "POST_HIBERNATION_ENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    :pswitch_11
    const-string v1, "POST_SHUTDOWN_ENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :pswitch_12
    const-string v1, "POST_SUSPEND_ENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :pswitch_13
    const-string v1, "PRE_SHUTDOWN_PREPARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    :pswitch_14
    const-string v1, "HIBERNATION_EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    :pswitch_15
    const-string v1, "HIBERNATION_ENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :pswitch_16
    const-string v1, "SHUTDOWN_CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 217
    :pswitch_17
    const-string v1, "SHUTDOWN_PREPARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 216
    :pswitch_18
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :pswitch_19
    const-string v1, "SHUTDOWN_ENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :pswitch_1a
    const-string v1, "SUSPEND_EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 213
    :pswitch_1b
    const-string v1, "SUSPEND_ENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :pswitch_1c
    const-string v1, "WAIT_FOR_VHAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :pswitch_1d
    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :goto_0
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isCarPowerStrStage(I)Z
    .locals 3
    .param p0, "powerStatus"    # I

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "result":Z
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 197
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    .line 198
    nop

    .line 202
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrStage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p0}, Lcom/mega/nexus/provider/PowerSettings13$System;->carPowerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v2, "PowerSettings13"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
