.class public final Ls1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/location/GpsActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/f;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Ls1/f;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->v:Lcom/mega/engineeringmode/function/location/GpsActivity$d;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->t:Lcom/mega/engineeringmode/function/location/GpsActivity$b;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->t:Lcom/mega/engineeringmode/function/location/GpsActivity$b;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)Z

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->n:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
