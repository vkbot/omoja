.class public final Lq0/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static volatile l:I

.field public static volatile m:J


# instance fields
.field public final b:Landroid/location/LocationManager;

.field public final c:Lq0/f;

.field public final d:Landroid/os/Handler;

.field public e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public i:J

.field public final j:Lcom/bumptech/glide/m;

.field public final k:Le0/i0;


# direct methods
.method public constructor <init>(Lcom/example/navistart/MockGPS/MockGpsService;Lq0/f;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lq0/s;->d:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/bumptech/glide/m;

    .line 16
    .line 17
    const/16 v1, 0x1b

    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lq0/s;->j:Lcom/bumptech/glide/m;

    .line 23
    .line 24
    new-instance v0, Le0/i0;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, p0, v1}, Le0/i0;-><init>(Landroid/location/LocationListener;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lq0/s;->k:Le0/i0;

    .line 31
    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    new-array v1, v0, [B

    .line 35
    .line 36
    fill-array-data v1, :array_3a

    .line 37
    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    fill-array-data v0, :array_42

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/location/LocationManager;

    .line 53
    .line 54
    iput-object p1, p0, Lq0/s;->b:Landroid/location/LocationManager;

    .line 55
    .line 56
    iput-object p2, p0, Lq0/s;->c:Lq0/f;

    .line 57
    .line 58
    return-void

    .line 59
    :array_3a
    .array-data 1
        -0x67t
        0x65t
        -0x29t
        -0x1dt
        0x5t
        -0x26t
        -0x26t
        -0x38t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_42
    .array-data 1
        -0xbt
        0xat
        -0x4ct
        -0x7et
        0x71t
        -0x4dt
        -0x4bt
        -0x5at
    .end array-data
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lq0/s;->b:Landroid/location/LocationManager;

    .line 2
    .line 3
    iget-boolean v1, p0, Lq0/s;->e:Z

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lq0/s;->e:Z

    .line 10
    .line 11
    iget-object v2, p0, Lq0/s;->d:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v3, p0, Lq0/s;->j:Lcom/bumptech/glide/m;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :try_start_11
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lq0/s;->k:Le0/i0;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_19} :catch_19

    .line 24
    .line 25
    .line 26
    :catch_19
    iput-boolean v1, p0, Lq0/s;->f:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lq0/s;->i:J

    .line 31
    .line 32
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_c

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lq0/s;->h:J

    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    return-void
.end method
