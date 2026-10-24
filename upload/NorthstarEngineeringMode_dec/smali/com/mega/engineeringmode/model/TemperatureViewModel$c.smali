.class public final Lcom/mega/engineeringmode/model/TemperatureViewModel$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/model/TemperatureViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/model/TemperatureViewModel;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/model/TemperatureViewModel;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel$c;->a:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/model/TemperatureViewModel$c;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object p0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel$c;->a:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    .line 1
    iget-object p1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->a:Ljava/lang/String;

    const-string v0, "mBrightnessObserver"

    .line 2
    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->k:Landroid/net/Uri;

    invoke-static {p1, p2}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->a:Ljava/lang/String;

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-eqz p1, :cond_0

    const-string/jumbo p1, "onManualChangeVolume3"

    .line 4
    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "instrument_board_brightness"

    .line 7
    invoke-static {p1, v4, v3, v2}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 8
    iget-object v4, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->l:Landroid/net/Uri;

    invoke-static {p1, p2}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "onManualChangeVolume4"

    .line 11
    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "main_control_brightness"

    .line 14
    invoke-static {p1, p2, v3, v2}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 15
    iget-object p0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 16
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
