.class public final Lcom/mega/engineeringmode/function/location/InertialActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


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

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/InertialActivity$b;->a:Lcom/mega/engineeringmode/function/location/InertialActivity;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InertialActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/mega/engineeringmode/function/location/InertialActivity;->H:I

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/InertialActivity$b;->a:Lcom/mega/engineeringmode/function/location/InertialActivity;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/location/InertialActivity;->n(Landroid/location/Location;)V

    return-void
.end method
