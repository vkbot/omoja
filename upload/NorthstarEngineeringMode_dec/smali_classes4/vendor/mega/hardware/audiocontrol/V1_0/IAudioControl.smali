.class public interface abstract Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$Stub;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$Proxy;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getDuckCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getLoundnessCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getREFGainCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSVCGainCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSVCSpeedCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSVCLevelCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getGroupMuteCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getGEQCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSoundFxCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getPresetEQCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getBMTCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getBalanceStepCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getFaderStepCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getVolumeStepCallback;,
        Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getVolumeGainCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.mega.hardware.audiocontrol@1.0::IAudioControl"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.mega.hardware.audiocontrol@1.0::IAudioControl"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    if-eqz v3, :cond_1

    check-cast v2, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    return-object v2

    :cond_1
    new-instance v2, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$Proxy;

    invoke-direct {v2, p0}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 1

    const-string v0, "default"

    .line 4
    invoke-static {v0}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->getService(Ljava/lang/String;)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 1

    const-string v0, "vendor.mega.hardware.audiocontrol@1.0::IAudioControl"

    .line 3
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 1

    const-string v0, "vendor.mega.hardware.audiocontrol@1.0::IAudioControl"

    .line 1
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 1

    const-string v0, "default"

    .line 2
    invoke-static {v0, p0}, Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;->getService(Ljava/lang/String;Z)Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpData()Ljava/lang/String;
.end method

.method public abstract getBMT(ILvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getBMTCallback;)V
.end method

.method public abstract getBalanceStep(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getBalanceStepCallback;)V
.end method

.method public abstract getCustomParam(Ljava/lang/String;Ljava/lang/String;S)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Lb/a;
.end method

.method public abstract getDuck(ILvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getDuckCallback;)V
.end method

.method public abstract getFaderStep(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getFaderStepCallback;)V
.end method

.method public abstract getGEQ(ILvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getGEQCallback;)V
.end method

.method public abstract getGroupMute(ILvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getGroupMuteCallback;)V
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getLoundness(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getLoundnessCallback;)V
.end method

.method public abstract getPresetEQ(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getPresetEQCallback;)V
.end method

.method public abstract getREFGain(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getREFGainCallback;)V
.end method

.method public abstract getSVCGain(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSVCGainCallback;)V
.end method

.method public abstract getSVCLevel(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSVCLevelCallback;)V
.end method

.method public abstract getSVCSpeed(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSVCSpeedCallback;)V
.end method

.method public abstract getSoundFx(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getSoundFxCallback;)V
.end method

.method public abstract getVolumeGain(ILvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getVolumeGainCallback;)V
.end method

.method public abstract getVolumeStep(ILvendor/mega/hardware/audiocontrol/V1_0/IAudioControl$getVolumeStepCallback;)V
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract notifySyspropsChanged()V
.end method

.method public abstract ping()V
.end method

.method public abstract registerAudioControlCallback(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControlCallback;)I
.end method

.method public abstract setBMT(II)I
.end method

.method public abstract setBalanceStep(I)I
.end method

.method public abstract setCustomParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setDuck(III)I
.end method

.method public abstract setDuckWithVol(IIFF)I
.end method

.method public abstract setFaderStep(I)I
.end method

.method public abstract setGEQ(II)I
.end method

.method public abstract setGroupMute(II)I
.end method

.method public abstract setHALInstrumentation()V
.end method

.method public abstract setLoundness(I)I
.end method

.method public abstract setPresetEQ(I)I
.end method

.method public abstract setREFGain(I)I
.end method

.method public abstract setSVCGain(I)I
.end method

.method public abstract setSVCLevel(I)I
.end method

.method public abstract setSVCSpeed(I)I
.end method

.method public abstract setSoundFx(I)I
.end method

.method public abstract setVolumeGain(II)I
.end method

.method public abstract setVolumeStep(II)I
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method

.method public abstract unregisterAudioControlCallback(Lvendor/mega/hardware/audiocontrol/V1_0/IAudioControlCallback;)I
.end method
