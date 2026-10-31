.class public final Lq/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lq/o;

.field public static final c:Lq/o;

.field public static final d:Lq/o;

.field public static final e:Lq/o;

.field public static final f:Lq/o;

.field public static final g:Lh/g;

.field public static final h:Z


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lq/o;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lq/o;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq/o;->b:Lq/o;

    .line 8
    .line 9
    new-instance v0, Lq/o;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lq/o;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lq/o;->c:Lq/o;

    .line 16
    .line 17
    new-instance v0, Lq/o;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1}, Lq/o;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lq/o;->d:Lq/o;

    .line 24
    .line 25
    new-instance v1, Lq/o;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-direct {v1, v2}, Lq/o;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lq/o;->e:Lq/o;

    .line 32
    .line 33
    sput-object v0, Lq/o;->f:Lq/o;

    .line 34
    .line 35
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lh/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lh/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lq/o;->g:Lh/g;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lq/o;->h:Z

    .line 45
    .line 46
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lq/o;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IIII)I
    .registers 7

    .line 1
    iget v0, p0, Lq/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    return p1

    .line 8
    :pswitch_7
    sget-boolean p1, Lq/o;->h:Z

    .line 9
    .line 10
    if-eqz p1, :cond_d

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x1

    .line 15
    :goto_e
    return p1

    .line 16
    :pswitch_f
    const/4 p1, 0x2

    .line 17
    return p1

    .line 18
    :pswitch_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lq/o;->b(IIII)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-nez v0, :cond_1d

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    sget-object v0, Lq/o;->b:Lq/o;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3, p4}, Lq/o;->a(IIII)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :goto_23
    return p1

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public final b(IIII)F
    .registers 6

    .line 1
    iget v0, p0, Lq/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_44

    .line 4
    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    return p1

    .line 9
    :pswitch_8
    sget-boolean v0, Lq/o;->h:Z

    .line 10
    .line 11
    if-eqz v0, :cond_17

    .line 12
    .line 13
    int-to-float p3, p3

    .line 14
    int-to-float p1, p1

    .line 15
    div-float/2addr p3, p1

    .line 16
    int-to-float p1, p4

    .line 17
    int-to-float p2, p2

    .line 18
    div-float/2addr p1, p2

    .line 19
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_2a

    .line 24
    :cond_17
    div-int/2addr p2, p4

    .line 25
    div-int/2addr p1, p3

    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/high16 p2, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-nez p1, :cond_23

    .line 33
    .line 34
    move p1, p2

    .line 35
    goto :goto_2a

    .line 36
    :cond_23
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    int-to-float p1, p1

    .line 41
    div-float p1, p2, p1

    .line 42
    .line 43
    :goto_2a
    return p1

    .line 44
    :pswitch_2b
    int-to-float p3, p3

    .line 45
    int-to-float p1, p1

    .line 46
    div-float/2addr p3, p1

    .line 47
    int-to-float p1, p4

    .line 48
    int-to-float p2, p2

    .line 49
    div-float/2addr p1, p2

    .line 50
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :pswitch_36
    sget-object v0, Lq/o;->b:Lq/o;

    .line 56
    .line 57
    invoke-virtual {v0, p1, p2, p3, p4}, Lq/o;->b(IIII)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/high16 p2, 0x3f800000    # 1.0f

    .line 62
    .line 63
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    nop

    .line 69
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2b
        :pswitch_8
    .end packed-switch
.end method
