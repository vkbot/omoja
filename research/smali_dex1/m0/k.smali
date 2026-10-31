.class public final synthetic Lm0/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm0/o;


# direct methods
.method public synthetic constructor <init>(Lm0/o;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm0/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/k;->b:Lm0/o;

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
    .registers 6

    .line 1
    iget p1, p0, Lm0/k;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lm0/k;->b:Lm0/o;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_36

    .line 6
    .line 7
    .line 8
    sget-object p1, Lm0/o;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lm0/o;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lm0/o;->v()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_16
    sget-object p1, Lm0/o;->g:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 v1, 0x1f

    .line 30
    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    fill-array-data v1, :array_3c

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    fill-array-data v2, :array_50

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lm0/o;->v()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_3c
    .array-data 1
        -0x53t
        -0x34t
        0x7bt
        -0x1ft
        0x33t
        0x1ct
        0x37t
        -0x3ct
        -0x56t
        -0x32t
        0x6at
        -0x2bt
        0x2at
        0x18t
        0x2bt
        -0x3ct
        -0x4dt
        -0x30t
        0x64t
        -0x2dt
        0x23t
        0x3bt
        0x2at
        -0x3et
        -0x77t
        -0x36t
        0x6et
        -0x40t
        0x6t
        0xdt
        0x35t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
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
    .line 81
    :array_50
    .array-data 1
        -0x14t
        -0x44t
        0xbt
        -0x4et
        0x47t
        0x7dt
        0x45t
        -0x50t
    .end array-data
.end method
