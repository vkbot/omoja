.class public final Le0/i0;
.super Landroid/location/GnssStatus$Callback;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/location/LocationListener;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationListener;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/i0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/i0;->b:Landroid/location/LocationListener;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 6

    .line 1
    iget v0, p0, Le0/i0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_5e

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_7
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v0, v2, :cond_18

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_15

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_7

    .line 25
    :cond_18
    sput v1, Lq0/s;->l:I

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    sput-wide v2, Lq0/s;->m:J

    .line 32
    .line 33
    iget-object p1, p0, Le0/i0;->b:Landroid/location/LocationListener;

    .line 34
    .line 35
    check-cast p1, Lq0/s;

    .line 36
    .line 37
    iget-boolean v0, p1, Lq0/s;->f:Z

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    if-eqz v0, :cond_3a

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    if-lt v1, v0, :cond_3a

    .line 45
    .line 46
    iget-wide v0, p1, Lq0/s;->i:J

    .line 47
    .line 48
    cmp-long v0, v0, v2

    .line 49
    .line 50
    if-nez v0, :cond_3c

    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p1, Lq0/s;->i:J

    .line 57
    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    iput-wide v2, p1, Lq0/s;->i:J

    .line 60
    .line 61
    :cond_3c
    :goto_3c
    return-void

    .line 62
    :pswitch_3d
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x0

    .line 67
    move v2, v1

    .line 68
    :goto_43
    if-ge v1, v0, :cond_50

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4d

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_43

    .line 81
    :cond_50
    iget-object p1, p0, Le0/i0;->b:Landroid/location/LocationListener;

    .line 82
    .line 83
    check-cast p1, Lcom/example/navistart/LocServ;

    .line 84
    .line 85
    int-to-float v1, v2

    .line 86
    int-to-float v0, v0

    .line 87
    div-float/2addr v1, v0

    .line 88
    const/high16 v0, 0x42c80000    # 100.0f

    .line 89
    .line 90
    mul-float/2addr v1, v0

    .line 91
    iput v1, p1, Lcom/example/navistart/LocServ;->e:F

    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_3d
    .end packed-switch
.end method

.method public onStopped()V
    .registers 4

    .line 1
    iget v0, p0, Le0/i0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/location/GnssStatus$Callback;->onStopped()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    const/4 v0, 0x0

    .line 11
    sput v0, Lq0/s;->l:I

    .line 12
    .line 13
    iget-object v0, p0, Le0/i0;->b:Landroid/location/LocationListener;

    .line 14
    .line 15
    check-cast v0, Lq0/s;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    iput-wide v1, v0, Lq0/s;->i:J

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
