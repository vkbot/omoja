.class public final synthetic Ls1/w0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/example/navistart/home/WebLauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/home/WebLauncherActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Ls1/w0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/w0;->b:Lcom/example/navistart/home/WebLauncherActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget v0, p0, Ls1/w0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ls1/w0;->b:Lcom/example/navistart/home/WebLauncherActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_72

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/example/navistart/cores/HUDMassageObj;

    .line 9
    .line 10
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p1, :cond_10

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/example/navistart/home/WebLauncherActivity;->y(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void

    .line 18
    :pswitch_11
    check-cast p1, Lk7/b;

    .line 19
    .line 20
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p1, :cond_37

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p1, Lk7/b;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    new-array v2, v2, [B

    .line 36
    .line 37
    fill-array-data v2, :array_82

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    new-array v3, v3, [B

    .line 43
    .line 44
    fill-array-data v3, :array_88

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget p1, p1, Lk7/b;->d:I

    .line 52
    .line 53
    invoke-virtual {v1, p1, v0}, Lcom/example/navistart/home/WebLauncherActivity;->F(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    return-void

    .line 57
    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    .line 58
    .line 59
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz p1, :cond_45

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v1, p1}, Lcom/example/navistart/home/WebLauncherActivity;->C(I)V

    .line 68
    .line 69
    .line 70
    :cond_45
    return-void

    .line 71
    :pswitch_46
    check-cast p1, Ljava/lang/Integer;

    .line 72
    .line 73
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz p1, :cond_53

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v1, p1}, Lcom/example/navistart/home/WebLauncherActivity;->E(I)V

    .line 82
    .line 83
    .line 84
    :cond_53
    return-void

    .line 85
    :pswitch_54
    check-cast p1, Landroid/location/Location;

    .line 86
    .line 87
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz p1, :cond_5d

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Lcom/example/navistart/home/WebLauncherActivity;->z(Landroid/location/Location;)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    return-void

    .line 95
    :pswitch_5e
    check-cast p1, Ls0/a;

    .line 96
    .line 97
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz p1, :cond_67

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Lcom/example/navistart/home/WebLauncherActivity;->B(Ls0/a;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    return-void

    .line 105
    :pswitch_68
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 108
    .line 109
    if-eqz p1, :cond_71

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Lcom/example/navistart/home/WebLauncherActivity;->A(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_71
    return-void

    .line 115
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5e
        :pswitch_54
        :pswitch_46
        :pswitch_38
        :pswitch_11
    .end packed-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_82
    .array-data 1
        -0x5ct
        0x36t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    nop

    .line 137
    :array_88
    .array-data 1
        0x66t
        -0x7at
        0x34t
        0x2t
        -0x16t
        -0x46t
        -0xbt
        0xft
    .end array-data
.end method
