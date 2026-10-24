.class public final Lcom/mega/engineeringmode/function/location/InertialActivity$a;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/location/InertialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/location/InertialActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/location/InertialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity$a;->a:Lcom/mega/engineeringmode/function/location/InertialActivity;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 8

    sget v0, Lcom/mega/engineeringmode/function/location/InertialActivity;->H:I

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity$a;->a:Lcom/mega/engineeringmode/function/location/InertialActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "satelliteCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InertialActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    const/4 v7, 0x5

    if-eq v2, v7, :cond_1

    const/4 v7, 0x6

    if-eq v2, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Ls1/g;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ls1/g;-><init>(Lcom/mega/engineeringmode/function/location/InertialActivity;IIII)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
