.class public final synthetic Lk7/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/pogoda/WeatherService;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/pogoda/WeatherService;I)V
    .registers 3

    .line 1
    iput p2, p0, Lk7/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lk7/d;->c:Lcom/woha/pogoda/WeatherService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Lk7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk7/d;->c:Lcom/woha/pogoda/WeatherService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 9
    .line 10
    sget-object v1, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lk7/e;->setUpdateView(Lk7/b;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object v0, p0, Lk7/d;->c:Lcom/woha/pogoda/WeatherService;

    .line 17
    .line 18
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Ln0/f;->f:Ln0/f;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_25

    .line 33
    .line 34
    invoke-static {v0}, Lcom/woha/pogoda/WeatherService;->e(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    goto :goto_45

    .line 38
    :cond_25
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/16 v2, 0x17

    .line 43
    .line 44
    new-array v2, v2, [B

    .line 45
    .line 46
    fill-array-data v2, :array_56

    .line 47
    .line 48
    .line 49
    const/16 v3, 0x8

    .line 50
    .line 51
    new-array v3, v3, [B

    .line 52
    .line 53
    fill-array-data v3, :array_66

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_45

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-static {v0, v1, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    :goto_45
    return-void

    .line 71
    :pswitch_46
    iget-object v0, p0, Lk7/d;->c:Lcom/woha/pogoda/WeatherService;

    .line 72
    .line 73
    sget-boolean v1, Lcom/woha/pogoda/WeatherService;->f:Z

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/woha/pogoda/WeatherService;->f()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_46
        :pswitch_f
    .end packed-switch

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_56
    .array-data 1
        -0x5et
        -0x16t
        -0x33t
        0x70t
        0x5ct
        0x37t
        0x18t
        0x7t
        -0x58t
        -0x4ft
        -0x6ct
        0x6ct
        0x5ct
        0x2dt
        0x14t
        0x7t
        -0x5et
        -0x11t
        -0x71t
        0x7ct
        0x5at
        0x30t
        0x12t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_66
    .array-data 1
        -0x30t
        -0x61t
        -0x1dt
        0x9t
        0x3dt
        0x59t
        0x7ct
        0x62t
    .end array-data
.end method
