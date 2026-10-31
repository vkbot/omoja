.class public final Ld4/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ld4/e;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Ld4/m;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ld4/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ld4/i;)V
    .registers 5

    .line 1
    iget v0, p0, Ld4/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_5a

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Ld4/i;->a:Lm0/d0;

    .line 9
    .line 10
    if-eqz p1, :cond_3d

    .line 11
    .line 12
    check-cast v1, Lm0/e0;

    .line 13
    .line 14
    iget-object v0, v1, Lm0/e0;->z:Lm0/d0;

    .line 15
    .line 16
    if-eq p1, v0, :cond_3d

    .line 17
    .line 18
    invoke-virtual {v1}, Lm0/e0;->F()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Lm0/e0;->q:Lm0/c0;

    .line 22
    .line 23
    if-eqz v0, :cond_20

    .line 24
    .line 25
    iget-object v2, v1, Lm0/e0;->o:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, v1, Lm0/e0;->q:Lm0/c0;

    .line 32
    .line 33
    :cond_20
    invoke-virtual {v1}, Lm0/e0;->z()V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x11

    .line 37
    .line 38
    new-array v0, v0, [B

    .line 39
    .line 40
    fill-array-data v0, :array_62

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    new-array v2, v2, [B

    .line 46
    .line 47
    fill-array-data v2, :array_70

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lm0/e0;->A(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, v1, Lm0/e0;->z:Lm0/d0;

    .line 58
    .line 59
    invoke-virtual {v1}, Lm0/e0;->w()V

    .line 60
    .line 61
    .line 62
    :cond_3d
    return-void

    .line 63
    :pswitch_3e
    check-cast v1, Lcom/example/navistart/MainActivity;

    .line 64
    .line 65
    const p1, 0x7f0902b0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, La4/g;

    .line 73
    .line 74
    const/16 v1, 0xb

    .line 75
    .line 76
    invoke-direct {v0, v1, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_52
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 84
    .line 85
    iget p1, p1, Ld4/i;->e:I

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_3e
    .end packed-switch

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_62
    .array-data 1
        -0x66t
        0x1ct
        -0x65t
        0x7ft
        -0x7t
        0x52t
        0x17t
        -0x59t
        -0x74t
        0x1ft
        -0x64t
        0x62t
        -0x12t
        0x7ft
        0xbt
        -0x55t
        -0x66t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    nop

    .line 113
    :array_70
    .array-data 1
        -0x1t
        0x6at
        -0x2t
        0x11t
        -0x73t
        0xdt
        0x62t
        -0x37t
    .end array-data
.end method
