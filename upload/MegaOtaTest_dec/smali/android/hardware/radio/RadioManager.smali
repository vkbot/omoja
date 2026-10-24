.class public Landroid/hardware/radio/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ProgramInfo;,
        Landroid/hardware/radio/RadioManager$ModuleProperties;,
        Landroid/hardware/radio/RadioManager$AmBandConfig;,
        Landroid/hardware/radio/RadioManager$FmBandConfig;,
        Landroid/hardware/radio/RadioManager$BandConfig;,
        Landroid/hardware/radio/RadioManager$AmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$FmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$BandDescriptor;,
        Landroid/hardware/radio/RadioManager$Band;
    }
.end annotation


# static fields
.field public static final BAND_AM:I = 0x0

.field public static final BAND_AM_HD:I = 0x3

.field public static final BAND_FM:I = 0x1

.field public static final BAND_FM_HD:I = 0x2

.field public static final BAND_INVALID:I = -0x1

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listModules(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 233
    .local p1, "modules":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ModuleProperties;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/RadioTuner$Callback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
