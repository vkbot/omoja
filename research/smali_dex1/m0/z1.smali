.class public final synthetic Lm0/z1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lm0/z1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 1
    iget p1, p0, Lm0/z1;->a:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_3a

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 v1, 0x16

    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    fill-array-data v1, :array_40

    .line 17
    .line 18
    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    fill-array-data v0, :array_50

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1f
    sget-object p1, Lm0/c2;->i:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/16 v1, 0x1a

    .line 39
    .line 40
    new-array v1, v1, [B

    .line 41
    .line 42
    fill-array-data v1, :array_58

    .line 43
    .line 44
    .line 45
    new-array v0, v0, [B

    .line 46
    .line 47
    fill-array-data v0, :array_6a

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_40
    .array-data 1
        -0x46t
        0x2dt
        0x3et
        -0x66t
        0x70t
        -0x66t
        -0x77t
        0x5at
        -0x46t
        0x2dt
        0x3et
        -0x7ct
        0x68t
        -0x66t
        -0x76t
        0x77t
        -0x63t
        0x9t
        0x2dt
        -0x79t
        0x7ct
        -0x44t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    nop

    .line 81
    :array_50
    .array-data 1
        -0x37t
        0x59t
        0x5ft
        -0x18t
        0x4t
        -0x3bt
        -0x40t
        0x34t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_58
    .array-data 1
        -0x1ft
        -0x6ft
        0x14t
        0x4bt
        0x26t
        0x5at
        0x3ft
        -0x3t
        -0x40t
        -0x7bt
        0x30t
        0x4dt
        0x36t
        0x71t
        0x3t
        -0x7t
        -0x3at
        -0x6bt
        0x18t
        0x40t
        0x25t
        0x6bt
        0xft
        -0x25t
        -0x1et
        -0x4et
    .end array-data

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
    .line 104
    .line 105
    .line 106
    nop

    .line 107
    :array_6a
    .array-data 1
        -0x4et
        -0x1ft
        0x71t
        0x2et
        0x42t
        0x18t
        0x50t
        -0x64t
    .end array-data
.end method
