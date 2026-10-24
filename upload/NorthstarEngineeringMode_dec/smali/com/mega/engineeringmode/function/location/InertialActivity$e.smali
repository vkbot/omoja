.class public final Lcom/mega/engineeringmode/function/location/InertialActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity$e;->a:Lcom/mega/engineeringmode/function/location/InertialActivity;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity$e;->a:Lcom/mega/engineeringmode/function/location/InertialActivity;

    iget-wide v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->r:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->t:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->r:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->t:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/16 v1, 0x9

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->u:[F

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 p1, 0x0

    aget v1, v0, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, p1

    const/4 v1, 0x1

    aget v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v2, 0x2

    aget v3, v0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v0, v2

    iget-object v3, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->o:Landroid/widget/TextView;

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->p:Landroid/widget/TextView;

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->q:Landroid/widget/TextView;

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
