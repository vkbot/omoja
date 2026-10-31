.class public final Lt1/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/example/navistart/mainview/HeatManSetView;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/mainview/HeatManSetView;Landroid/widget/TextView;I)V
    .registers 4

    .line 1
    iput p3, p0, Lt1/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lt1/f;->c:Lcom/example/navistart/mainview/HeatManSetView;

    .line 4
    .line 5
    iput-object p2, p0, Lt1/f;->b:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final d(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .line 1
    iget p1, p0, Lt1/f;->a:I

    .line 2
    .line 3
    iget-object p3, p0, Lt1/f;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    iget-object v2, p0, Lt1/f;->c:Lcom/example/navistart/mainview/HeatManSetView;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_70

    .line 12
    .line 13
    .line 14
    iput p2, v2, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 15
    .line 16
    new-array p1, v1, [B

    .line 17
    .line 18
    fill-array-data p1, :array_76

    .line 19
    .line 20
    .line 21
    new-array p2, v0, [B

    .line 22
    .line 23
    fill-array-data p2, :array_80

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, v2, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget p2, v2, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 37
    .line 38
    if-eqz p1, :cond_2f

    .line 39
    .line 40
    invoke-static {p2}, Lcom/example/navistart/mainview/HeatManSetView;->b(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    invoke-static {p2}, Lcom/example/navistart/mainview/HeatManSetView;->a(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :goto_36
    iget-object p1, v2, Lcom/example/navistart/mainview/HeatManSetView;->s:Ljava/lang/Runnable;

    .line 56
    .line 57
    if-eqz p1, :cond_3d

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 60
    .line 61
    .line 62
    :cond_3d
    return-void

    .line 63
    :pswitch_3e
    iput p2, v2, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 64
    .line 65
    new-array p1, v1, [B

    .line 66
    .line 67
    fill-array-data p1, :array_88

    .line 68
    .line 69
    .line 70
    new-array p2, v0, [B

    .line 71
    .line 72
    fill-array-data p2, :array_92

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, v2, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget p2, v2, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 86
    .line 87
    if-eqz p1, :cond_60

    .line 88
    .line 89
    invoke-static {p2}, Lcom/example/navistart/mainview/HeatManSetView;->b(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_67

    .line 97
    :cond_60
    invoke-static {p2}, Lcom/example/navistart/mainview/HeatManSetView;->b(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :goto_67
    iget-object p1, v2, Lcom/example/navistart/mainview/HeatManSetView;->r:Ljava/lang/Runnable;

    .line 105
    .line 106
    if-eqz p1, :cond_6e

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 109
    .line 110
    .line 111
    :cond_6e
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3e
    .end packed-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_76
    .array-data 1
        -0x1bt
        -0x5bt
        -0x33t
        -0x23t
        -0x12t
        0x54t
        -0x26t
        -0x2dt
        -0x3bt
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    nop

    .line 129
    :array_80
    .array-data 1
        -0x4ft
        -0x34t
        -0x60t
        -0x48t
        -0x64t
        0x1ct
        -0x41t
        -0x4et
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_88
    .array-data 1
        -0x4ct
        0x3bt
        0x28t
        0x65t
        0x5t
        -0x34t
        0x14t
        0x2bt
        -0x6ct
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    nop

    .line 147
    :array_92
    .array-data 1
        -0x20t
        0x52t
        0x45t
        0x0t
        0x77t
        -0x7ct
        0x71t
        0x4at
    .end array-data
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1
    iget p1, p0, Lt1/f;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1
    iget p1, p0, Lt1/f;->a:I

    .line 2
    .line 3
    return-void
.end method
