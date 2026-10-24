.class public Lcom/mega/engineeringmode/function/location/InertialActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public final C:Lcom/mega/engineeringmode/function/location/InertialActivity$a;

.field public final D:Lcom/mega/engineeringmode/function/location/InertialActivity$b;

.field public final E:Lcom/mega/engineeringmode/function/location/InertialActivity$c;

.field public final F:Lcom/mega/engineeringmode/function/location/InertialActivity$d;

.field public final G:Lcom/mega/engineeringmode/function/location/InertialActivity$e;

.field public i:Landroid/hardware/SensorManager;

.field public j:Landroid/hardware/Sensor;

.field public k:Landroid/hardware/Sensor;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:J

.field public s:J

.field public t:J

.field public u:[F

.field public v:Landroid/hardware/Sensor;

.field public w:Landroid/location/LocationManager;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/function/location/InertialActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/InertialActivity$a;-><init>(Lcom/mega/engineeringmode/function/location/InertialActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->C:Lcom/mega/engineeringmode/function/location/InertialActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/location/InertialActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/InertialActivity$b;-><init>(Lcom/mega/engineeringmode/function/location/InertialActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->D:Lcom/mega/engineeringmode/function/location/InertialActivity$b;

    new-instance v0, Lcom/mega/engineeringmode/function/location/InertialActivity$c;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/InertialActivity$c;-><init>(Lcom/mega/engineeringmode/function/location/InertialActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->E:Lcom/mega/engineeringmode/function/location/InertialActivity$c;

    new-instance v0, Lcom/mega/engineeringmode/function/location/InertialActivity$d;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/InertialActivity$d;-><init>(Lcom/mega/engineeringmode/function/location/InertialActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->F:Lcom/mega/engineeringmode/function/location/InertialActivity$d;

    new-instance v0, Lcom/mega/engineeringmode/function/location/InertialActivity$e;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/InertialActivity$e;-><init>(Lcom/mega/engineeringmode/function/location/InertialActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->G:Lcom/mega/engineeringmode/function/location/InertialActivity$e;

    return-void
.end method


# virtual methods
.method public final n(Landroid/location/Location;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InertialActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0094

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a03f1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0a03f2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0a03f3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f0a0402

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->o:Landroid/widget/TextView;

    const p1, 0x7f0a0403

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->p:Landroid/widget/TextView;

    const p1, 0x7f0a0404

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->q:Landroid/widget/TextView;

    const p1, 0x7f0a041a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->x:Landroid/widget/TextView;

    const p1, 0x7f0a040e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->y:Landroid/widget/TextView;

    const p1, 0x7f0a040a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->z:Landroid/widget/TextView;

    const p1, 0x7f0a041f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->A:Landroid/widget/TextView;

    const p1, 0x7f0a03f4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->B:Landroid/widget/TextView;

    const-string/jumbo p1, "sensor"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sensors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InertialActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sensor name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sensor vendor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sensor power: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getPower()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sensor resolution: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getResolution()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->j:Landroid/hardware/Sensor;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->k:Landroid/hardware/Sensor;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->v:Landroid/hardware/Sensor;

    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->r:J

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v2, 0x7f1201a6

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "location"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->w:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->C:Lcom/mega/engineeringmode/function/location/InertialActivity$a;

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->w:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/location/InertialActivity;->n(Landroid/location/Location;)V

    iget-object v3, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->w:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->D:Lcom/mega/engineeringmode/function/location/InertialActivity$b;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->w:Landroid/location/LocationManager;

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpsEnabled:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const p1, 0x7f12016d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->E:Lcom/mega/engineeringmode/function/location/InertialActivity$c;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->F:Lcom/mega/engineeringmode/function/location/InertialActivity$d;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->G:Lcom/mega/engineeringmode/function/location/InertialActivity$e;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->w:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->C:Lcom/mega/engineeringmode/function/location/InertialActivity$a;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->E:Lcom/mega/engineeringmode/function/location/InertialActivity$c;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->j:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->F:Lcom/mega/engineeringmode/function/location/InertialActivity$d;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->k:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->G:Lcom/mega/engineeringmode/function/location/InertialActivity$e;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity;->v:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
