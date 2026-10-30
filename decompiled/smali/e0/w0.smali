.class public final synthetic Le0/w0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/materialswitch/MaterialSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/materialswitch/MaterialSwitch;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/w0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/w0;->b:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget p1, p0, Le0/w0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Le0/w0;->b:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v3, 0x13

    .line 18
    .line 19
    new-array v3, v3, [B

    .line 20
    .line 21
    fill-array-data v3, :array_0

    .line 22
    .line 23
    .line 24
    new-array v1, v1, [B

    .line 25
    .line 26
    fill-array-data v1, :array_1

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :pswitch_0
    sget-object p1, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/16 v3, 0x1a

    .line 55
    .line 56
    new-array v3, v3, [B

    .line 57
    .line 58
    fill-array-data v3, :array_2

    .line 59
    .line 60
    .line 61
    new-array v1, v1, [B

    .line 62
    .line 63
    fill-array-data v1, :array_3

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    if-eqz p2, :cond_1

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_0
    .array-data 1
        -0x23t
        0x18t
        0x1ct
        -0x57t
        0x5bt
        -0x30t
        0x46t
        -0x55t
        -0x23t
        0x1bt
        0x22t
        -0x46t
        0x5at
        -0x5t
        0x4bt
        -0x68t
        -0x31t
        0xct
        0x28t
    .end array-data

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
    :array_1
    .array-data 1
        -0x52t
        0x6ft
        0x43t
        -0x38t
        0x2et
        -0x5ct
        0x29t
        -0xct
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_2
    .array-data 1
        0x64t
        -0x80t
        -0x78t
        0x74t
        0x16t
        -0xbt
        0x22t
        -0x59t
        0x64t
        -0x7dt
        -0x4at
        0x67t
        0x17t
        -0x22t
        0x3at
        -0x63t
        0x75t
        -0x58t
        -0x45t
        0x74t
        0x16t
        -0x11t
        0x2et
        -0x70t
        0x72t
        -0x7bt
    .end array-data

    .line 114
    .line 115
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
    nop

    .line 131
    :array_3
    .array-data 1
        0x17t
        -0x9t
        -0x29t
        0x15t
        0x63t
        -0x7ft
        0x4dt
        -0x8t
    .end array-data
.end method
