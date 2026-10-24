.class public final Landroidx/appcompat/app/u;
.super Landroidx/appcompat/app/w;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Landroidx/appcompat/app/a0;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/a0;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/u;->c:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/u;->d:Landroidx/appcompat/app/a0;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/w;-><init>(Landroidx/appcompat/app/a0;)V

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Landroidx/appcompat/app/u;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a0;Landroidx/appcompat/app/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/u;->c:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/u;->d:Landroidx/appcompat/app/a0;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/w;-><init>(Landroidx/appcompat/app/a0;)V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/u;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 21

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/appcompat/app/u;->c:I

    const/4 v3, 0x1

    iget-object v4, v1, Landroidx/appcompat/app/u;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v4, Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :goto_1
    check-cast v4, Landroidx/appcompat/app/d;

    iget-object v0, v4, Landroidx/appcompat/app/d;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/app/h0;

    iget-wide v6, v5, Landroidx/appcompat/app/h0;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    const/4 v6, 0x0

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    move v0, v6

    :goto_2
    if-eqz v0, :cond_2

    iget-boolean v0, v5, Landroidx/appcompat/app/h0;->a:Z

    goto/16 :goto_b

    :cond_2
    iget-object v0, v4, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v7}, Lcom/google/android/material/slider/h;->B(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v7, "Failed to get last known location"

    const-string v8, "TwilightManager"

    const/4 v9, 0x0

    iget-object v10, v4, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    if-nez v0, :cond_4

    const-string v0, "network"

    :try_start_0
    move-object v11, v10

    check-cast v11, Landroid/location/LocationManager;

    invoke-virtual {v11, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v10

    check-cast v11, Landroid/location/LocationManager;

    invoke-virtual {v11, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v9

    :goto_3
    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object v11, v9

    :goto_4
    iget-object v0, v4, Landroidx/appcompat/app/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v4}, Lcom/google/android/material/slider/h;->B(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gps"

    :try_start_1
    move-object v4, v10

    check-cast v4, Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast v10, Landroid/location/LocationManager;

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v0

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-static {v8, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    cmp-long v0, v12, v14

    if-lez v0, :cond_7

    goto :goto_6

    :cond_6
    if-eqz v9, :cond_7

    :goto_6
    move-object v11, v9

    :cond_7
    if-eqz v11, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v0, Landroidx/appcompat/app/g0;->d:Landroidx/appcompat/app/g0;

    if-nez v0, :cond_8

    new-instance v0, Landroidx/appcompat/app/g0;

    invoke-direct {v0}, Landroidx/appcompat/app/g0;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g0;->d:Landroidx/appcompat/app/g0;

    :cond_8
    sget-object v0, Landroidx/appcompat/app/g0;->d:Landroidx/appcompat/app/g0;

    const-wide/32 v9, 0x5265c00

    sub-long v17, v7, v9

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    move-object v12, v0

    invoke-virtual/range {v12 .. v18}, Landroidx/appcompat/app/g0;->a(DDJ)V

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    move-wide/from16 v17, v7

    invoke-virtual/range {v12 .. v18}, Landroidx/appcompat/app/g0;->a(DDJ)V

    iget v4, v0, Landroidx/appcompat/app/g0;->c:I

    if-ne v4, v3, :cond_9

    move v6, v3

    :cond_9
    iget-wide v13, v0, Landroidx/appcompat/app/g0;->b:J

    iget-wide v2, v0, Landroidx/appcompat/app/g0;->a:J

    add-long v17, v9, v7

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    move-object v12, v0

    move-wide/from16 v19, v13

    move-wide v13, v9

    invoke-virtual/range {v12 .. v18}, Landroidx/appcompat/app/g0;->a(DDJ)V

    iget-wide v9, v0, Landroidx/appcompat/app/g0;->b:J

    const-wide/16 v11, -0x1

    cmp-long v0, v19, v11

    if-eqz v0, :cond_d

    cmp-long v0, v2, v11

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    cmp-long v0, v7, v2

    const-wide/16 v11, 0x0

    if-lez v0, :cond_b

    add-long/2addr v9, v11

    goto :goto_7

    :cond_b
    cmp-long v0, v7, v19

    if-lez v0, :cond_c

    add-long v9, v2, v11

    goto :goto_7

    :cond_c
    add-long v9, v19, v11

    :goto_7
    const-wide/32 v2, 0xea60

    add-long/2addr v9, v2

    goto :goto_9

    :cond_d
    :goto_8
    const-wide/32 v2, 0x2932e00

    add-long v9, v7, v2

    :goto_9
    iput-boolean v6, v5, Landroidx/appcompat/app/h0;->a:Z

    iput-wide v9, v5, Landroidx/appcompat/app/h0;->b:J

    goto :goto_a

    :cond_e
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_f

    const/16 v2, 0x16

    if-lt v0, v2, :cond_10

    :cond_f
    const/4 v6, 0x1

    :cond_10
    :goto_a
    move v0, v6

    :goto_b
    if-eqz v0, :cond_11

    const/4 v2, 0x2

    goto :goto_c

    :cond_11
    const/4 v2, 0x1

    :goto_c
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
