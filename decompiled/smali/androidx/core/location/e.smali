.class public final synthetic Landroidx/core/location/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/core/location/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/e;->c:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/core/location/e;->e:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/location/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/core/location/e;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/location/GnssStatus;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/core/location/e;->c:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->d(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/core/location/e;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/core/location/GnssStatusCompat;

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/core/location/e;->c:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->d(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/core/location/e;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroid/location/GnssMeasurementsEvent;

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/core/location/e;->c:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    invoke-static {v0, v2, v1}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->a(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
