.class public Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private active:Z

.field private background:I

.field private blue:I

.field private final busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private chart:Lm0/h0;

.field private consumption:Landroid/widget/TextView;

.field private details:Landroid/widget/TextView;

.field private fuel:Landroid/widget/TextView;

.field private generation:I

.field private green:I

.field private final history:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lm0/g0;",
            ">;"
        }
    .end annotation
.end field

.field private ink:I

.field private lastResponse:J

.field private final main:Landroid/os/Handler;

.field private minutes:I

.field private muted:I

.field private power:Landroid/widget/TextView;

.field private rpm:Landroid/widget/TextView;

.field private soc:Landroid/widget/TextView;

.field private status:Landroid/widget/TextView;

.field private final tick:Ljava/lang/Runnable;

.field private trip:Landroid/widget/TextView;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

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
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->main:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->worker:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->history:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 37
    .line 38
    new-instance v0, Lcom/bumptech/glide/m;

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->tick:Ljava/lang/Runnable;

    .line 45
    .line 46
    return-void
.end method

.method public static bridge synthetic A(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->green:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->history:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic C(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->lastResponse:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic D(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->main:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic E(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic F(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->muted:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic G(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->status:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic H(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->worker:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic I(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->lastResponse:J

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic K(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->isExlantix()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic L(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->render(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private card(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->column()Landroid/widget/LinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->decorate(Landroid/widget/LinearLayout;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    .line 14
    .line 15
    const/high16 v2, 0x41400000    # 12.0f

    .line 16
    .line 17
    invoke-direct {p0, v2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private column()Landroid/widget/LinearLayout;
    .registers 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private decorate(Landroid/widget/LinearLayout;)V
    .registers 6

    .line 1
    const v0, 0x7f070199

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    .line 6
    .line 7
    const/high16 v0, 0x41400000    # 12.0f

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, 0x41100000    # 9.0f

    .line 14
    .line 15
    invoke-direct {p0, v2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {p0, v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-direct {p0, v2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private isExlantix()Z
    .registers 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_30

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    fill-array-data v3, :array_3a

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_42

    .line 26
    .line 27
    .line 28
    new-array v2, v2, [B

    .line 29
    .line 30
    fill-array-data v2, :array_4c

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, ""

    .line 38
    .line 39
    invoke-virtual {v3, v0, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    nop

    .line 49
    :array_30
    .array-data 1
        0x29t
        0x2at
        -0x22t
        0x1at
        -0x42t
        0x17t
        0x4bt
        -0x2at
        0x29t
        0x26t
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    nop

    .line 59
    :array_3a
    .array-data 1
        0x6ct
        0x72t
        -0x6et
        0x5bt
        -0x10t
        0x43t
        0x2t
        -0x72t
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
        0x67t
        -0x2dt
        0x7bt
        0x25t
        0x33t
        -0x59t
        0x65t
        -0xet
        0x48t
        -0x9t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    nop

    :array_4c
    .array-data 1
        0x24t
        -0x6et
        0x29t
        0x75t
        0x41t
        -0x38t
        0x3t
        -0x65t
    .end array-data
.end method

.method private synthetic lambda$onCreateView$0(ILandroid/widget/CompoundButton;Z)V
    .registers 4

    .line 1
    if-eqz p3, :cond_b

    .line 2
    .line 3
    iput p1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 4
    .line 5
    iget-object p1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->chart:Lm0/h0;

    .line 6
    .line 7
    if-eqz p1, :cond_b

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method private static synthetic lambda$onCreateView$1(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_9

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move p2, v0

    .line 11
    :goto_a
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz p2, :cond_f

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_26

    .line 21
    .line 22
    const/16 p0, 0x23

    .line 23
    .line 24
    new-array p0, p0, [B

    .line 25
    .line 26
    fill-array-data p0, :array_3a

    .line 27
    .line 28
    .line 29
    new-array p2, v1, [B

    .line 30
    .line 31
    fill-array-data p2, :array_50

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_36

    .line 39
    :cond_26
    const/16 p0, 0x12

    .line 40
    .line 41
    new-array p0, p0, [B

    .line 42
    .line 43
    fill-array-data p0, :array_58

    .line 44
    .line 45
    .line 46
    new-array p2, v1, [B

    .line 47
    .line 48
    fill-array-data p2, :array_66

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_36
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :array_3a
    .array-data 1
        0x65t
        0x5et
        0x7ct
        0x67t
        0x2ft
        -0x5et
        -0x13t
        0x1ft
        0x64t
        0x7dt
        0x7dt
        0x51t
        -0x22t
        -0xet
        -0x7dt
        0x44t
        0xbt
        0x2ft
        0x18t
        0xct
        0x7et
        -0xet
        -0x7et
        0x44t
        0x4t
        0x2ft
        0x11t
        0xdt
        0x40t
        -0xdt
        -0x43t
        0x45t
        0x37t
        0x2ft
        0x14t
    .end array-data

    .line 60
    .line 61
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
        -0x4bt
        -0x1t
        -0x54t
        -0x23t
        -0x2t
        0x22t
        0x3ct
        -0x6ct
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
        0x2at
        -0x80t
        0x56t
        0x7et
        0x1bt
        0x59t
        0x22t
        -0x30t
        0x2at
        -0x5ft
        0x56t
        0x71t
        0x1bt
        0x50t
        0x23t
        -0x1bt
        0x2at
        -0x56t
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
    nop

    .line 103
    :array_66
    .array-data 1
        -0x6t
        0x1ft
        -0x7at
        -0x40t
        -0x35t
        -0x13t
        -0xdt
        0x50t
    .end array-data
.end method

.method private metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->column()Landroid/widget/LinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->decorate(Landroid/widget/LinearLayout;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 15
    .line 16
    .line 17
    const/high16 v2, 0x40400000    # 3.0f

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {p0, v2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v3, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    const/16 p1, 0xd

    .line 34
    .line 35
    iget v1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->muted:I

    .line 36
    .line 37
    invoke-direct {p0, p2, p1, v1}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x3

    .line 45
    new-array p1, p1, [B

    .line 46
    .line 47
    fill-array-data p1, :array_4c

    .line 48
    .line 49
    .line 50
    const/16 p2, 0x8

    .line 51
    .line 52
    new-array p2, p2, [B

    .line 53
    .line 54
    fill-array-data p2, :array_52

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/16 p2, 0x17

    .line 62
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p2, 0x0

    .line 68
    const/4 p3, 0x1

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    nop

    .line 77
    :array_4c
    .array-data 1
        0x1ct
        0x2at
        -0x69t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_52
    .array-data 1
        -0x2t
        -0x56t
        0x3t
        0x6ft
        -0x77t
        0x4ct
        0x13t
        -0x20t
    .end array-data
.end method

.method private render(Lorg/json/JSONObject;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->status:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/16 v1, 0xb

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-nez p1, :cond_1c

    .line 11
    .line 12
    const/16 v3, 0x1d

    .line 13
    .line 14
    new-array v3, v3, [B

    .line 15
    .line 16
    fill-array-data v3, :array_32a

    .line 17
    .line 18
    .line 19
    new-array v4, v2, [B

    .line 20
    .line 21
    fill-array-data v4, :array_33e

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_2a

    .line 29
    :cond_1c
    new-array v3, v1, [B

    .line 30
    .line 31
    fill-array-data v3, :array_346

    .line 32
    .line 33
    .line 34
    new-array v4, v2, [B

    .line 35
    .line 36
    fill-array-data v4, :array_350

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :goto_2a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->soc:Landroid/widget/TextView;

    .line 47
    .line 48
    const/16 v3, 0xa

    .line 49
    .line 50
    new-array v3, v3, [B

    .line 51
    .line 52
    fill-array-data v3, :array_358

    .line 53
    .line 54
    .line 55
    new-array v4, v2, [B

    .line 56
    .line 57
    fill-array-data v4, :array_362

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x1

    .line 65
    new-array v4, v4, [B

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    const/16 v6, 0x4f

    .line 69
    .line 70
    aput-byte v6, v4, v5

    .line 71
    .line 72
    new-array v5, v2, [B

    .line 73
    .line 74
    fill-array-data v5, :array_36a

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v5, 0x0

    .line 82
    invoke-static {p1, v3, v5, v4}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->fuel:Landroid/widget/TextView;

    .line 90
    .line 91
    const/16 v3, 0xa

    .line 92
    .line 93
    new-array v3, v3, [B

    .line 94
    .line 95
    fill-array-data v3, :array_372

    .line 96
    .line 97
    .line 98
    new-array v4, v2, [B

    .line 99
    .line 100
    fill-array-data v4, :array_37c

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v4, 0x2

    .line 108
    new-array v6, v4, [B

    .line 109
    .line 110
    fill-array-data v6, :array_384

    .line 111
    .line 112
    .line 113
    new-array v7, v2, [B

    .line 114
    .line 115
    fill-array-data v7, :array_38a

    .line 116
    .line 117
    .line 118
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const/4 v7, 0x1

    .line 123
    invoke-static {p1, v3, v7, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->power:Landroid/widget/TextView;

    .line 131
    .line 132
    const/4 v3, 0x7

    .line 133
    new-array v3, v3, [B

    .line 134
    .line 135
    fill-array-data v3, :array_392

    .line 136
    .line 137
    .line 138
    new-array v6, v2, [B

    .line 139
    .line 140
    fill-array-data v6, :array_39a

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    const/4 v6, 0x6

    .line 148
    new-array v6, v6, [B

    .line 149
    .line 150
    fill-array-data v6, :array_3a2

    .line 151
    .line 152
    .line 153
    new-array v8, v2, [B

    .line 154
    .line 155
    fill-array-data v8, :array_3aa

    .line 156
    .line 157
    .line 158
    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {p1, v3, v7, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->rpm:Landroid/widget/TextView;

    .line 170
    .line 171
    const/16 v3, 0x9

    .line 172
    .line 173
    new-array v3, v3, [B

    .line 174
    .line 175
    fill-array-data v3, :array_3b2

    .line 176
    .line 177
    .line 178
    new-array v6, v2, [B

    .line 179
    .line 180
    fill-array-data v6, :array_3bc

    .line 181
    .line 182
    .line 183
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    new-array v6, v1, [B

    .line 188
    .line 189
    fill-array-data v6, :array_3c4

    .line 190
    .line 191
    .line 192
    new-array v8, v2, [B

    .line 193
    .line 194
    fill-array-data v8, :array_3ce

    .line 195
    .line 196
    .line 197
    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {p1, v3, v5, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->trip:Landroid/widget/TextView;

    .line 209
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const/16 v6, 0x14

    .line 216
    .line 217
    new-array v6, v6, [B

    .line 218
    .line 219
    fill-array-data v6, :array_3d6

    .line 220
    .line 221
    .line 222
    new-array v8, v2, [B

    .line 223
    .line 224
    fill-array-data v8, :array_3e4

    .line 225
    .line 226
    .line 227
    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const/4 v6, 0x6

    .line 235
    new-array v6, v6, [B

    .line 236
    .line 237
    fill-array-data v6, :array_3ec

    .line 238
    .line 239
    .line 240
    new-array v8, v2, [B

    .line 241
    .line 242
    fill-array-data v8, :array_3f4

    .line 243
    .line 244
    .line 245
    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    const/4 v8, 0x4

    .line 250
    new-array v9, v8, [B

    .line 251
    .line 252
    fill-array-data v9, :array_3fc

    .line 253
    .line 254
    .line 255
    new-array v10, v2, [B

    .line 256
    .line 257
    fill-array-data v10, :array_402

    .line 258
    .line 259
    .line 260
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-static {p1, v6, v7, v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->consumption:Landroid/widget/TextView;

    .line 279
    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const/16 v6, 0x1d

    .line 286
    .line 287
    new-array v6, v6, [B

    .line 288
    .line 289
    fill-array-data v6, :array_40a

    .line 290
    .line 291
    .line 292
    new-array v9, v2, [B

    .line 293
    .line 294
    fill-array-data v9, :array_41e

    .line 295
    .line 296
    .line 297
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const/16 v6, 0x13

    .line 305
    .line 306
    new-array v6, v6, [B

    .line 307
    .line 308
    fill-array-data v6, :array_426

    .line 309
    .line 310
    .line 311
    new-array v9, v2, [B

    .line 312
    .line 313
    fill-array-data v9, :array_434

    .line 314
    .line 315
    .line 316
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    new-array v9, v1, [B

    .line 321
    .line 322
    fill-array-data v9, :array_43c

    .line 323
    .line 324
    .line 325
    new-array v10, v2, [B

    .line 326
    .line 327
    fill-array-data v10, :array_446

    .line 328
    .line 329
    .line 330
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-static {p1, v6, v7, v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->details:Landroid/widget/TextView;

    .line 349
    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const/16 v6, 0x10

    .line 356
    .line 357
    new-array v6, v6, [B

    .line 358
    .line 359
    fill-array-data v6, :array_44e

    .line 360
    .line 361
    .line 362
    new-array v9, v2, [B

    .line 363
    .line 364
    fill-array-data v9, :array_45a

    .line 365
    .line 366
    .line 367
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const/16 v6, 0xf

    .line 375
    .line 376
    new-array v6, v6, [B

    .line 377
    .line 378
    fill-array-data v6, :array_462

    .line 379
    .line 380
    .line 381
    new-array v9, v2, [B

    .line 382
    .line 383
    fill-array-data v9, :array_46e

    .line 384
    .line 385
    .line 386
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    new-array v9, v4, [B

    .line 391
    .line 392
    fill-array-data v9, :array_476

    .line 393
    .line 394
    .line 395
    new-array v10, v2, [B

    .line 396
    .line 397
    fill-array-data v10, :array_47c

    .line 398
    .line 399
    .line 400
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v9

    .line 404
    invoke-static {p1, v6, v5, v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    new-array v6, v8, [B

    .line 412
    .line 413
    fill-array-data v6, :array_484

    .line 414
    .line 415
    .line 416
    new-array v9, v2, [B

    .line 417
    .line 418
    fill-array-data v9, :array_48a

    .line 419
    .line 420
    .line 421
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const/16 v6, 0xf

    .line 429
    .line 430
    new-array v6, v6, [B

    .line 431
    .line 432
    fill-array-data v6, :array_492

    .line 433
    .line 434
    .line 435
    new-array v9, v2, [B

    .line 436
    .line 437
    fill-array-data v9, :array_49e

    .line 438
    .line 439
    .line 440
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    new-array v9, v4, [B

    .line 445
    .line 446
    fill-array-data v9, :array_4a6

    .line 447
    .line 448
    .line 449
    new-array v10, v2, [B

    .line 450
    .line 451
    fill-array-data v10, :array_4ac

    .line 452
    .line 453
    .line 454
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    invoke-static {p1, v6, v7, v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const/16 v6, 0x1c

    .line 466
    .line 467
    new-array v6, v6, [B

    .line 468
    .line 469
    fill-array-data v6, :array_4b4

    .line 470
    .line 471
    .line 472
    new-array v9, v2, [B

    .line 473
    .line 474
    fill-array-data v9, :array_4c6

    .line 475
    .line 476
    .line 477
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    new-array v6, v1, [B

    .line 485
    .line 486
    fill-array-data v6, :array_4ce

    .line 487
    .line 488
    .line 489
    new-array v9, v2, [B

    .line 490
    .line 491
    fill-array-data v9, :array_4d8

    .line 492
    .line 493
    .line 494
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    new-array v4, v4, [B

    .line 499
    .line 500
    fill-array-data v4, :array_4e0

    .line 501
    .line 502
    .line 503
    new-array v9, v2, [B

    .line 504
    .line 505
    fill-array-data v9, :array_4e6

    .line 506
    .line 507
    .line 508
    invoke-static {v4, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    invoke-static {p1, v6, v7, v4}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const/16 v4, 0x28

    .line 520
    .line 521
    new-array v4, v4, [B

    .line 522
    .line 523
    fill-array-data v4, :array_4ee

    .line 524
    .line 525
    .line 526
    new-array v6, v2, [B

    .line 527
    .line 528
    fill-array-data v6, :array_506

    .line 529
    .line 530
    .line 531
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const/16 v4, 0xf

    .line 539
    .line 540
    new-array v4, v4, [B

    .line 541
    .line 542
    fill-array-data v4, :array_50e

    .line 543
    .line 544
    .line 545
    new-array v6, v2, [B

    .line 546
    .line 547
    fill-array-data v6, :array_51a

    .line 548
    .line 549
    .line 550
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    new-array v6, v8, [B

    .line 555
    .line 556
    fill-array-data v6, :array_522

    .line 557
    .line 558
    .line 559
    new-array v9, v2, [B

    .line 560
    .line 561
    fill-array-data v9, :array_528

    .line 562
    .line 563
    .line 564
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    invoke-static {p1, v4, v5, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const/16 v4, 0x12

    .line 576
    .line 577
    new-array v4, v4, [B

    .line 578
    .line 579
    fill-array-data v4, :array_530

    .line 580
    .line 581
    .line 582
    new-array v6, v2, [B

    .line 583
    .line 584
    fill-array-data v6, :array_53e

    .line 585
    .line 586
    .line 587
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    new-array v4, v1, [B

    .line 595
    .line 596
    fill-array-data v4, :array_546

    .line 597
    .line 598
    .line 599
    new-array v6, v2, [B

    .line 600
    .line 601
    fill-array-data v6, :array_550

    .line 602
    .line 603
    .line 604
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    new-array v6, v8, [B

    .line 609
    .line 610
    fill-array-data v6, :array_558

    .line 611
    .line 612
    .line 613
    new-array v9, v2, [B

    .line 614
    .line 615
    fill-array-data v9, :array_55e

    .line 616
    .line 617
    .line 618
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    invoke-static {p1, v4, v5, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const/16 v4, 0x23

    .line 630
    .line 631
    new-array v4, v4, [B

    .line 632
    .line 633
    fill-array-data v4, :array_566

    .line 634
    .line 635
    .line 636
    new-array v5, v2, [B

    .line 637
    .line 638
    fill-array-data v5, :array_57c

    .line 639
    .line 640
    .line 641
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    const/16 v4, 0xe

    .line 649
    .line 650
    new-array v4, v4, [B

    .line 651
    .line 652
    fill-array-data v4, :array_584

    .line 653
    .line 654
    .line 655
    new-array v5, v2, [B

    .line 656
    .line 657
    fill-array-data v5, :array_590

    .line 658
    .line 659
    .line 660
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    new-array v5, v8, [B

    .line 665
    .line 666
    fill-array-data v5, :array_598

    .line 667
    .line 668
    .line 669
    new-array v6, v2, [B

    .line 670
    .line 671
    fill-array-data v6, :array_59e

    .line 672
    .line 673
    .line 674
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    invoke-static {p1, v4, v7, v5}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const/16 v4, 0x12

    .line 686
    .line 687
    new-array v4, v4, [B

    .line 688
    .line 689
    fill-array-data v4, :array_5a6

    .line 690
    .line 691
    .line 692
    new-array v5, v2, [B

    .line 693
    .line 694
    fill-array-data v5, :array_5b4

    .line 695
    .line 696
    .line 697
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const/16 v4, 0xa

    .line 705
    .line 706
    new-array v4, v4, [B

    .line 707
    .line 708
    fill-array-data v4, :array_5bc

    .line 709
    .line 710
    .line 711
    new-array v5, v2, [B

    .line 712
    .line 713
    fill-array-data v5, :array_5c6

    .line 714
    .line 715
    .line 716
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v4

    .line 720
    new-array v5, v8, [B

    .line 721
    .line 722
    fill-array-data v5, :array_5ce

    .line 723
    .line 724
    .line 725
    new-array v6, v2, [B

    .line 726
    .line 727
    fill-array-data v6, :array_5d4

    .line 728
    .line 729
    .line 730
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v5

    .line 734
    invoke-static {p1, v4, v7, v5}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v4

    .line 738
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const/16 v4, 0x20

    .line 742
    .line 743
    new-array v4, v4, [B

    .line 744
    .line 745
    fill-array-data v4, :array_5dc

    .line 746
    .line 747
    .line 748
    new-array v5, v2, [B

    .line 749
    .line 750
    fill-array-data v5, :array_5f0

    .line 751
    .line 752
    .line 753
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const/16 v4, 0x10

    .line 761
    .line 762
    new-array v4, v4, [B

    .line 763
    .line 764
    fill-array-data v4, :array_5f8

    .line 765
    .line 766
    .line 767
    new-array v5, v2, [B

    .line 768
    .line 769
    fill-array-data v5, :array_604

    .line 770
    .line 771
    .line 772
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    new-array v1, v1, [B

    .line 777
    .line 778
    fill-array-data v1, :array_60c

    .line 779
    .line 780
    .line 781
    new-array v2, v2, [B

    .line 782
    .line 783
    fill-array-data v2, :array_616

    .line 784
    .line 785
    .line 786
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-static {p1, v4, v7, v1}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object p1

    .line 794
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object p1

    .line 801
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    .line 803
    .line 804
    iget-object p1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->chart:Lm0/h0;

    .line 805
    .line 806
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 807
    .line 808
    .line 809
    return-void

    .line 810
    nop

    .line 811
    :array_32a
    .array-data 1
        0x1bt
        0x70t
        -0x34t
        0x28t
        -0x60t
        -0x7t
        -0xct
        0x1bt
        0x1bt
        0x5et
        -0x34t
        0x23t
        -0x60t
        -0x7t
        -0xct
        0x1at
        -0x15t
        0x3et
        -0x58t
        0x4et
        -0x40t
        -0x6ft
        -0x67t
        0x7ft
        0x76t
        0x3ft
        -0x69t
        0x4ft
        -0xbt
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    nop

    .line 831
    :array_33e
    .array-data 1
        -0x35t
        -0x12t
        0x1ct
        -0x62t
        0x70t
        0x41t
        0x24t
        -0x51t
    .end array-data

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :array_346
    .array-data 1
        0x6et
        0x2ct
        0x58t
        -0x1ct
        0x50t
        0x61t
        -0x20t
        0x22t
        0xbt
        0x11t
        0x60t
    .end array-data

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :array_350
    .array-data 1
        0x2bt
        0x54t
        0x34t
        -0x7bt
        0x3et
        0x15t
        -0x77t
        0x5at
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_358
    .array-data 1
        0x4t
        0x33t
        -0x7ct
        -0x6t
        0x68t
        0x5ft
        -0x6dt
        0x79t
        0x19t
        0x28t
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    nop

    .line 867
    :array_362
    .array-data 1
        0x77t
        0x5ct
        -0x19t
        -0x56t
        0xdt
        0x2dt
        -0x10t
        0x1ct
    .end array-data

    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    :array_36a
    .array-data 1
        0x6at
        0x70t
        0x28t
        -0x24t
        0x54t
        0x63t
        -0x42t
        0x6ct
    .end array-data

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :array_372
    .array-data 1
        -0x23t
        -0x51t
        0x4dt
        -0x5ct
        -0x35t
        0x6bt
        0x6dt
        -0xet
        -0x22t
        -0x57t
    .end array-data

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    nop

    .line 893
    :array_37c
    .array-data 1
        -0x45t
        -0x26t
        0x28t
        -0x38t
        -0x79t
        0x2t
        0x19t
        -0x80t
    .end array-data

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    :array_384
    .array-data 1
        0x59t
        -0x8t
    .end array-data

    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    nop

    .line 907
    :array_38a
    .array-data 1
        -0x77t
        0x43t
        0x6at
        -0x42t
        0x57t
        0x2dt
        0x47t
        -0x48t
    .end array-data

    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    :array_392
    .array-data 1
        -0x43t
        -0x59t
        0x15t
        0x6dt
        -0x63t
        -0x16t
        -0x44t
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    :array_39a
    .array-data 1
        -0x33t
        -0x38t
        0x62t
        0x8t
        -0x11t
        -0x5ft
        -0x35t
        -0x38t
    .end array-data

    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :array_3a2
    .array-data 1
        0x7ct
        -0x4ct
        -0x2t
        0x20t
        -0x49t
        -0x77t
    .end array-data

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    nop

    .line 939
    :array_3aa
    .array-data 1
        -0x54t
        0xet
        0x2et
        -0x4et
        0x66t
        0xbt
        0x52t
        -0x74t
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :array_3b2
    .array-data 1
        0x3ct
        0x5ct
        0x19t
        0x27t
        -0x6t
        -0x21t
        0x62t
        0x7et
        0x34t
    .end array-data

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    nop

    .line 957
    :array_3bc
    .array-data 1
        0x59t
        0x32t
        0x7et
        0x4et
        -0x6ct
        -0x46t
        0x30t
        0xet
    .end array-data

    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    :array_3c4
    .array-data 1
        0x2ft
        0x73t
        -0x76t
        0x71t
        0x3at
        0x10t
        -0x65t
        0x70t
        0x47t
        0x1dt
        -0x19t
    .end array-data

    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    :array_3ce
    .array-data 1
        -0x1t
        -0x33t
        0x5at
        -0x40t
        0x15t
        -0x40t
        0x27t
        -0x60t
    .end array-data

    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :array_3d6
    .array-data 1
        -0x59t
        -0x56t
        -0x5t
        -0x30t
        0x72t
        0x4et
        -0x4bt
        -0x11t
        -0x59t
        -0x7ft
        -0x5t
        -0x2ct
        0x72t
        0x4bt
        0x45t
        0x19t
        0x57t
        -0x9t
        -0x64t
        0x4et
    .end array-data

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    :array_3e4
    .array-data 1
        0x77t
        0x35t
        0x2bt
        0x6et
        -0x5et
        -0x5t
        0x65t
        0x58t
    .end array-data

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    :array_3ec
    .array-data 1
        0x27t
        -0x1ct
        -0x48t
        0x4et
        -0x5ct
        0x3et
    .end array-data

    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    nop

    .line 1013
    :array_3f4
    .array-data 1
        0x53t
        -0x6at
        -0x2ft
        0x3et
        -0x11t
        0x53t
        -0x52t
        -0x31t
    .end array-data

    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    :array_3fc
    .array-data 1
        0x53t
        -0x6et
        -0x1dt
        -0x48t
    .end array-data

    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :array_402
    .array-data 1
        -0x7dt
        0x28t
        0x33t
        0x4t
        -0x33t
        0x78t
        -0x22t
        0x6et
    .end array-data

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    :array_40a
    .array-data 1
        0x4ct
        0x17t
        -0x5ct
        0x4t
        -0x38t
        -0xft
        -0x33t
        0x6et
        0x4ct
        0x9t
        -0x5ct
        0x0t
        0x39t
        -0x60t
        -0x53t
        0x3bt
        0x29t
        0x67t
        -0x37t
        0x64t
        -0x52t
        -0x60t
        -0x5ct
        0x3bt
        0x21t
        0x67t
        -0x3ct
        -0x72t
        0x39t
    .end array-data

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    nop

    .line 1055
    :array_41e
    .array-data 1
        -0x64t
        -0x49t
        0x74t
        -0x4ct
        0x19t
        0x70t
        0x1ct
        -0x15t
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    :array_426
    .array-data 1
        -0x1at
        0x4bt
        -0x4dt
        0x5ft
        -0x3dt
        0x20t
        -0x23t
        -0x56t
        -0x19t
        0x7et
        -0x4et
        0x53t
        -0x3et
        0xdt
        -0x68t
        -0x1t
        -0x4dt
        0x73t
        -0x56t
    .end array-data

    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    :array_434
    .array-data 1
        -0x7dt
        0x38t
        -0x39t
        0x36t
        -0x52t
        0x41t
        -0x57t
        -0x31t
    .end array-data

    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    :array_43c
    .array-data 1
        0x9t
        0x23t
        0x73t
        0x35t
        -0x4et
        -0x1ft
        -0x1ft
        -0x4dt
        0x63t
        0x48t
        -0x20t
    .end array-data

    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    :array_446
    .array-data 1
        -0x27t
        -0x68t
        0x5ct
        0x4t
        -0x7et
        -0x2ft
        -0x3ft
        0x63t
    .end array-data

    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    :array_44e
    .array-data 1
        -0x25t
        -0x29t
        -0x49t
        -0x6bt
        0x2ft
        0x62t
        0x28t
        0x11t
        -0x26t
        -0x3at
        -0x49t
        -0x70t
        0x2ft
        0x6ft
        -0x3et
        -0x7ft
    .end array-data

    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    :array_45a
    .array-data 1
        0xbt
        0x46t
        0x67t
        0x25t
        -0x2t
        -0x20t
        -0x8t
        -0x5ft
    .end array-data

    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    :array_462
    .array-data 1
        -0x6dt
        0x7ft
        0x6dt
        -0x74t
        0x79t
        0x17t
        0x12t
        -0x76t
        -0x62t
        0x72t
        0x6dt
        -0x67t
        0x7bt
        0x0t
        0x3dt
    .end array-data

    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    :array_46e
    .array-data 1
        -0xft
        0x1et
        0x19t
        -0x8t
        0x1ct
        0x65t
        0x6bt
        -0x24t
    .end array-data

    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    :array_476
    .array-data 1
        0x4ft
        -0x1et
    .end array-data

    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    nop

    .line 1149
    :array_47c
    .array-data 1
        -0x61t
        0x70t
        -0x28t
        0x44t
        0x53t
        0x5at
        -0x6t
        -0x1ft
    .end array-data

    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    :array_484
    .array-data 1
        0x6bt
        -0xct
        -0xbt
        0x29t
    .end array-data

    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :array_48a
    .array-data 1
        0x4bt
        0x36t
        0x42t
        0x9t
        -0x72t
        -0x7at
        0x3bt
        -0x23t
    .end array-data

    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    :array_492
    .array-data 1
        0x54t
        0x19t
        -0x3at
        -0xet
        0x1dt
        0x1ft
        -0x73t
        -0x19t
        0x43t
        0xat
        -0x40t
        -0x1dt
        0x16t
        0x19t
        -0x4bt
    .end array-data

    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    :array_49e
    .array-data 1
        0x36t
        0x78t
        -0x4et
        -0x7at
        0x78t
        0x6dt
        -0xct
        -0x5ct
    .end array-data

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    :array_4a6
    .array-data 1
        0x6t
        -0x9t
    .end array-data

    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    nop

    .line 1197
    :array_4ac
    .array-data 1
        -0x2at
        0x67t
        0x28t
        -0x4dt
        0x56t
        -0x4dt
        -0x2bt
        -0x47t
    .end array-data

    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    :array_4b4
    .array-data 1
        0x25t
        0x26t
        -0x1ft
        -0x4at
        -0x74t
        -0x5dt
        -0x4ft
        0x47t
        -0x53t
        0x26t
        -0x32t
        -0x4at
        -0x80t
        -0x5et
        -0x7ft
        0x47t
        -0x60t
        -0x2at
        -0x5ft
        -0x19t
        -0x1et
        -0x39t
        -0x20t
        0x14t
        -0x2t
        0x7at
        0x4at
        0x46t
    .end array-data

    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    :array_4c6
    .array-data 1
        0x2ft
        -0xat
        0x70t
        0x66t
        0x32t
        0x72t
        0x31t
        -0x6at
    .end array-data

    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    :array_4ce
    .array-data 1
        0x54t
        -0x79t
        -0xft
        0x2dt
        -0x6ft
        0x7at
        0x1et
        0x54t
        0x5ft
        -0x73t
        -0x30t
    .end array-data

    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    :array_4d8
    .array-data 1
        0x38t
        -0x18t
        -0x7at
        0x7bt
        -0x2t
        0x16t
        0x6at
        0x35t
    .end array-data

    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    :array_4e0
    .array-data 1
        0xbt
        0x44t
    .end array-data

    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    nop

    .line 1255
    :array_4e6
    .array-data 1
        -0x25t
        -0x2at
        -0x50t
        -0x36t
        -0x6at
        0xct
        -0xet
        0x2t
    .end array-data

    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    :array_4ee
    .array-data 1
        -0x2et
        -0x48t
        0x53t
        -0x44t
        0x7ft
        -0x2ct
        0x7at
        0x4dt
        0x68t
        -0x47t
        0x45t
        0x4ct
        0x1et
        -0x7ft
        0x15t
        0x23t
        0x8t
        -0x24t
        0x14t
        -0x24t
        -0x11t
        -0x3at
        0x72t
        -0x43t
        0x9t
        -0x1bt
        0x14t
        -0x29t
        0x1ft
        -0x4ft
        0x15t
        0x27t
        0x9t
        -0x16t
        0x15t
        -0x14t
        0x1ft
        -0x46t
        -0x1t
        -0x43t
    .end array-data

    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    :array_506
    .array-data 1
        -0x28t
        0x68t
        -0x3ct
        0x6ct
        -0x31t
        0x4t
        -0x3bt
        -0x63t
    .end array-data

    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    :array_50e
    .array-data 1
        -0x7t
        0x21t
        -0x2et
        0x5ct
        0x7bt
        0x69t
        -0x2at
        -0x41t
        -0x32t
        0x2ct
        -0x27t
        0x58t
        0x6at
        0x50t
        -0x2et
    .end array-data

    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    :array_51a
    .array-data 1
        -0x64t
        0x4dt
        -0x49t
        0x3ft
        0xft
        0x1bt
        -0x41t
        -0x24t
    .end array-data

    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    :array_522
    .array-data 1
        -0x1et
        0x2t
        -0x1dt
        -0x34t
    .end array-data

    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    :array_528
    .array-data 1
        0x32t
        -0x48t
        0x33t
        0x70t
        -0x21t
        -0x56t
        -0x7dt
        0x5ft
    .end array-data

    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    :array_530
    .array-data 1
        0x13t
        0x7t
        0x57t
        -0x8t
        -0x54t
        -0x4ct
        -0x79t
        -0x28t
        -0x1dt
        0x78t
        0x30t
        0x6ft
        -0x54t
        -0x43t
        -0x79t
        -0x30t
        0x9t
        -0x1bt
    .end array-data

    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    nop

    .line 1343
    :array_53e
    .array-data 1
        0x33t
        -0x3bt
        -0x20t
        -0x28t
        0x7ct
        0x5t
        0x57t
        0x6dt
    .end array-data

    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    :array_546
    .array-data 1
        0x1et
        0x4ct
        0x70t
        0x78t
        -0x6bt
        0x3at
        0x4ct
        0x75t
        0x1dt
        0x72t
        0x78t
    .end array-data

    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    :array_550
    .array-data 1
        0x78t
        0x39t
        0x15t
        0x14t
        -0x39t
        0x5bt
        0x22t
        0x12t
    .end array-data

    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    :array_558
    .array-data 1
        0x77t
        0x5dt
        0xat
        0x61t
    .end array-data

    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    :array_55e
    .array-data 1
        -0x59t
        -0x19t
        -0x26t
        -0x23t
        0x27t
        0x35t
        0xat
        -0xat
    .end array-data

    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    :array_566
    .array-data 1
        -0x72t
        -0x1bt
        -0x49t
        0x45t
        -0xet
        -0x37t
        0x23t
        0xct
        0x35t
        -0x1bt
        -0x63t
        0x44t
        -0x3ft
        0x39t
        -0x24t
        -0x4t
        0x46t
        -0x7et
        0x8t
        0x45t
        -0x1t
        -0x37t
        0x26t
        0xct
        0x31t
        -0x1bt
        -0x6et
        0x45t
        -0x10t
        -0x38t
        0x1dt
        0xct
        0x3at
        0xft
        0x8t
    .end array-data

    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    :array_57c
    .array-data 1
        -0x7ct
        0x35t
        0x28t
        -0x6ct
        0x72t
        0x19t
        -0x63t
        -0x24t
    .end array-data

    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    :array_584
    .array-data 1
        0x72t
        -0x58t
        -0x1ct
        -0x70t
        0x62t
        0x1at
        -0x7et
        0x46t
        0x72t
        -0x58t
        -0x1ct
        -0x7dt
        0x6ct
        0x1bt
    .end array-data

    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    nop

    .line 1425
    :array_590
    .array-data 1
        0x6t
        -0x26t
        -0x73t
        -0x20t
        0x27t
        0x76t
        -0x19t
        0x25t
    .end array-data

    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    :array_598
    .array-data 1
        0x5dt
        0x3bt
        -0x3at
        -0x3bt
    .end array-data

    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    :array_59e
    .array-data 1
        -0x73t
        -0x7ft
        0x16t
        0x79t
        -0xct
        0x69t
        0x5t
        0x27t
    .end array-data

    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    :array_5a6
    .array-data 1
        0x44t
        0x29t
        0x56t
        0x25t
        -0x1ft
        0x44t
        -0x3ft
        -0xft
        -0x4ct
        0x56t
        0x31t
        -0x4et
        -0x1ft
        0x4dt
        -0x3ft
        -0x7t
        0x5et
        -0x35t
    .end array-data

    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    nop

    .line 1461
    :array_5b4
    .array-data 1
        0x64t
        -0x15t
        -0x1ft
        0x5t
        0x31t
        -0xbt
        0x11t
        0x44t
    .end array-data

    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    :array_5bc
    .array-data 1
        -0x5bt
        -0x2ft
        -0x65t
        -0x7et
        0x14t
        -0x2et
        0x4ft
        0x2t
        -0x66t
        -0x32t
    .end array-data

    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    nop

    .line 1479
    :array_5c6
    .array-data 1
        -0x2ft
        -0x5dt
        -0xet
        -0xet
        0x52t
        -0x59t
        0x2at
        0x6et
    .end array-data

    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    :array_5ce
    .array-data 1
        0x61t
        -0x5ct
        -0x6et
        0x38t
    .end array-data

    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    :array_5d4
    .array-data 1
        -0x4ft
        0x1et
        0x42t
        -0x7ct
        0x3et
        -0x37t
        -0x52t
        0x3et
    .end array-data

    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    :array_5dc
    .array-data 1
        -0x58t
        0x1bt
        0x70t
        0x1bt
        -0x2et
        -0x70t
        -0x41t
        0x18t
        0x20t
        0x1bt
        0x65t
        0x1bt
        -0x25t
        -0x70t
        -0x4at
        -0x17t
        0x73t
        0x4bt
        0x8t
        0x7at
        -0x7ft
        -0x3ft
        -0x22t
        0x4ct
        0x72t
        0x75t
        0x8t
        0x7et
        0x70t
        0x1t
        0x35t
        -0x17t
    .end array-data

    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    :array_5f0
    .array-data 1
        -0x5et
        -0x35t
        -0x28t
        -0x36t
        0x50t
        0x40t
        0xft
        -0x37t
    .end array-data

    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    :array_5f8
    .array-data 1
        0x53t
        0x4at
        0x48t
        -0x40t
        0x2et
        -0x72t
        0x43t
        0x1ct
        0x58t
        0x47t
        0x70t
        -0x68t
        0x68t
        -0x25t
        0x4et
        0x4t
    .end array-data

    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    :array_604
    .array-data 1
        0x3dt
        0x2bt
        0x3ct
        -0x57t
        0x58t
        -0x15t
        0x5t
        0x69t
    .end array-data

    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    :array_60c
    .array-data 1
        -0x6et
        -0x7dt
        0x41t
        0x2dt
        -0x64t
        -0x18t
        0x78t
        0x54t
        -0x8t
        -0x18t
        -0x2et
    .end array-data

    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    :array_616
    .array-data 1
        0x42t
        0x38t
        0x6et
        0x1ct
        -0x54t
        -0x28t
        0x58t
        -0x7ct
    .end array-data
.end method

.method private row(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, -0x2

    .line 14
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    const/high16 v2, 0x41200000    # 10.0f

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static synthetic t(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;ILandroid/widget/CompoundButton;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->lambda$onCreateView$0(ILandroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private text(Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    int-to-float p1, p2

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static synthetic u(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->lambda$onCreateView$1(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic v(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->active:Z

    .line 2
    .line 3
    return p0
.end method

.method private static value(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    .line 3
    if-nez p0, :cond_5

    .line 4
    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eqz p1, :cond_4b

    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    new-array v4, v4, [B

    .line 34
    .line 35
    fill-array-data v4, :array_6a

    .line 36
    .line 37
    .line 38
    new-array v5, v2, [B

    .line 39
    .line 40
    fill-array-data v5, :array_70

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v5, v3, p2}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    new-array p2, p2, [B

    .line 48
    .line 49
    const/16 v4, 0x20

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    aput-byte v4, p2, v5

    .line 53
    .line 54
    new-array v2, v2, [B

    .line 55
    .line 56
    fill-array-data v2, :array_78

    .line 57
    .line 58
    .line 59
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_5a

    .line 76
    :cond_4b
    const/4 p1, 0x3

    .line 77
    new-array p1, p1, [B

    .line 78
    .line 79
    fill-array-data p1, :array_80

    .line 80
    .line 81
    .line 82
    new-array p2, v2, [B

    .line 83
    .line 84
    fill-array-data p2, :array_86

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_5a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " "

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :array_6a
    .array-data 1
        0xat
        0x58t
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    nop

    .line 113
    :array_70
    .array-data 1
        0x2ft
        0x76t
        -0x7bt
        0x10t
        -0x1bt
        -0x3et
        0x18t
        -0x16t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_78
    .array-data 1
        0x46t
        -0x59t
        0x58t
        -0x60t
        -0x7ct
        -0x13t
        0x4at
        -0x68t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_80
    .array-data 1
        0x36t
        -0x70t
        0x4et
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_86
    .array-data 1
        -0x2ct
        0x10t
        -0x26t
        -0x62t
        -0x1dt
        -0x33t
        -0x3ct
        -0xbt
    .end array-data
.end method

.method public static bridge synthetic w(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->blue:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic x(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic y(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Lm0/h0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->chart:Lm0/h0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic z(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->generation:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v3, 0x7f050381

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iput v2, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->ink:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const v3, 0x7f050382

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->muted:I

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const v3, 0x7f050377

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->background:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const v3, 0x7f05037b

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->blue:I

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const v3, 0x7f05037e

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->green:I

    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    const/4 v3, 0x5

    .line 73
    if-eqz v1, :cond_5f

    .line 74
    .line 75
    const/4 v4, 0x7

    .line 76
    new-array v4, v4, [B

    .line 77
    .line 78
    fill-array-data v4, :array_322

    .line 79
    .line 80
    .line 81
    new-array v5, v2, [B

    .line 82
    .line 83
    fill-array-data v5, :array_32a

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 95
    .line 96
    :cond_5f
    iget v1, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 97
    .line 98
    const/16 v4, 0xa

    .line 99
    .line 100
    const/16 v5, 0x1e

    .line 101
    .line 102
    if-eq v1, v3, :cond_6d

    .line 103
    .line 104
    if-eq v1, v4, :cond_6d

    .line 105
    .line 106
    if-eq v1, v5, :cond_6d

    .line 107
    .line 108
    iput v3, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 109
    .line 110
    :cond_6d
    new-instance v1, Landroid/widget/ScrollView;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-direct {v1, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 121
    .line 122
    .line 123
    iget v7, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->background:I

    .line 124
    .line 125
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    .line 127
    .line 128
    invoke-direct {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->column()Landroid/widget/LinearLayout;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const/high16 v8, 0x41800000    # 16.0f

    .line 133
    .line 134
    invoke-direct {v0, v8}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    invoke-direct {v0, v8}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    invoke-direct {v0, v8}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    const/high16 v11, 0x41a00000    # 20.0f

    .line 147
    .line 148
    invoke-direct {v0, v11}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    const/16 v8, 0x14

    .line 159
    .line 160
    new-array v8, v8, [B

    .line 161
    .line 162
    fill-array-data v8, :array_332

    .line 163
    .line 164
    .line 165
    new-array v9, v2, [B

    .line 166
    .line 167
    fill-array-data v9, :array_340

    .line 168
    .line 169
    .line 170
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    const/16 v9, 0x16

    .line 175
    .line 176
    iget v10, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->ink:I

    .line 177
    .line 178
    invoke-direct {v0, v8, v9, v10}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    const/4 v9, 0x0

    .line 183
    invoke-virtual {v8, v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    const/16 v8, 0x31

    .line 190
    .line 191
    new-array v8, v8, [B

    .line 192
    .line 193
    fill-array-data v8, :array_348

    .line 194
    .line 195
    .line 196
    new-array v10, v2, [B

    .line 197
    .line 198
    fill-array-data v10, :array_366

    .line 199
    .line 200
    .line 201
    invoke-static {v8, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    const/16 v10, 0xd

    .line 206
    .line 207
    iget v11, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->muted:I

    .line 208
    .line 209
    invoke-direct {v0, v8, v10, v11}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    iput-object v8, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->status:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v7}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->row(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    const/16 v10, 0xa

    .line 223
    .line 224
    new-array v10, v10, [B

    .line 225
    .line 226
    fill-array-data v10, :array_36e

    .line 227
    .line 228
    .line 229
    new-array v11, v2, [B

    .line 230
    .line 231
    fill-array-data v11, :array_378

    .line 232
    .line 233
    .line 234
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    iget v11, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->green:I

    .line 239
    .line 240
    invoke-direct {v0, v8, v10, v11}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    iput-object v10, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->soc:Landroid/widget/TextView;

    .line 245
    .line 246
    const/16 v10, 0xe

    .line 247
    .line 248
    new-array v11, v10, [B

    .line 249
    .line 250
    fill-array-data v11, :array_380

    .line 251
    .line 252
    .line 253
    new-array v12, v2, [B

    .line 254
    .line 255
    fill-array-data v12, :array_38c

    .line 256
    .line 257
    .line 258
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    iget v12, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->ink:I

    .line 263
    .line 264
    invoke-direct {v0, v8, v11, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    iput-object v8, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->fuel:Landroid/widget/TextView;

    .line 269
    .line 270
    invoke-direct {v0, v7}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->row(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    const/16 v11, 0x1f

    .line 275
    .line 276
    new-array v11, v11, [B

    .line 277
    .line 278
    fill-array-data v11, :array_394

    .line 279
    .line 280
    .line 281
    new-array v12, v2, [B

    .line 282
    .line 283
    fill-array-data v12, :array_3a8

    .line 284
    .line 285
    .line 286
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    iget v12, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->blue:I

    .line 291
    .line 292
    invoke-direct {v0, v8, v11, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    iput-object v11, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->power:Landroid/widget/TextView;

    .line 297
    .line 298
    const/16 v11, 0x15

    .line 299
    .line 300
    new-array v11, v11, [B

    .line 301
    .line 302
    fill-array-data v11, :array_3b0

    .line 303
    .line 304
    .line 305
    new-array v12, v2, [B

    .line 306
    .line 307
    fill-array-data v12, :array_3c0

    .line 308
    .line 309
    .line 310
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    iget v12, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->ink:I

    .line 315
    .line 316
    invoke-direct {v0, v8, v11, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    iput-object v8, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->rpm:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-direct {v0, v7}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->card(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    const/16 v11, 0x1a

    .line 327
    .line 328
    new-array v11, v11, [B

    .line 329
    .line 330
    fill-array-data v11, :array_3c8

    .line 331
    .line 332
    .line 333
    new-array v12, v2, [B

    .line 334
    .line 335
    fill-array-data v12, :array_3da

    .line 336
    .line 337
    .line 338
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    iget v12, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->ink:I

    .line 343
    .line 344
    const/16 v13, 0x11

    .line 345
    .line 346
    invoke-direct {v0, v11, v13, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    new-instance v11, Landroid/widget/RadioGroup;

    .line 354
    .line 355
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 356
    .line 357
    .line 358
    move-result-object v12

    .line 359
    invoke-direct {v11, v12}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 360
    .line 361
    .line 362
    const/4 v12, 0x0

    .line 363
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    .line 365
    .line 366
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    .line 368
    const/4 v15, -0x1

    .line 369
    const/4 v10, -0x2

    .line 370
    invoke-direct {v14, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 371
    .line 372
    .line 373
    const/high16 v10, 0x41200000    # 10.0f

    .line 374
    .line 375
    invoke-direct {v0, v10}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 380
    .line 381
    invoke-virtual {v8, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    filled-new-array {v3, v4, v5}, [I

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    move v4, v12

    .line 389
    :goto_184
    const/4 v15, 0x3

    .line 390
    if-ge v4, v15, :cond_224

    .line 391
    .line 392
    aget v15, v3, v4

    .line 393
    .line 394
    new-instance v10, Landroid/widget/RadioButton;

    .line 395
    .line 396
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-direct {v10, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 401
    .line 402
    .line 403
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    invoke-virtual {v10, v5}, Landroid/view/View;->setId(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v10, v9}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v10, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 414
    .line 415
    .line 416
    const v5, 0x7f07019b

    .line 417
    .line 418
    .line 419
    invoke-virtual {v10, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    const v14, 0x7f05037d

    .line 427
    .line 428
    .line 429
    invoke-virtual {v5, v14}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 434
    .line 435
    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const/4 v14, 0x7

    .line 445
    new-array v14, v14, [B

    .line 446
    .line 447
    fill-array-data v14, :array_3e2

    .line 448
    .line 449
    .line 450
    new-array v12, v2, [B

    .line 451
    .line 452
    fill-array-data v12, :array_3ea

    .line 453
    .line 454
    .line 455
    invoke-static {v14, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v12

    .line 459
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .line 468
    .line 469
    const/high16 v5, 0x41700000    # 15.0f

    .line 470
    .line 471
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10, v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 478
    .line 479
    .line 480
    const/high16 v5, 0x40800000    # 4.0f

    .line 481
    .line 482
    invoke-direct {v0, v5}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 483
    .line 484
    .line 485
    move-result v12

    .line 486
    invoke-direct {v0, v5}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    const/4 v14, 0x0

    .line 491
    invoke-virtual {v10, v12, v14, v5, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 492
    .line 493
    .line 494
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 495
    .line 496
    const/high16 v12, 0x42400000    # 48.0f

    .line 497
    .line 498
    invoke-direct {v0, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 499
    .line 500
    .line 501
    move-result v12

    .line 502
    const/high16 v6, 0x3f800000    # 1.0f

    .line 503
    .line 504
    invoke-direct {v5, v14, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 505
    .line 506
    .line 507
    const/16 v6, 0x1e

    .line 508
    .line 509
    if-eq v15, v6, :cond_207

    .line 510
    .line 511
    const/high16 v12, 0x40c00000    # 6.0f

    .line 512
    .line 513
    invoke-direct {v0, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 514
    .line 515
    .line 516
    move-result v12

    .line 517
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 518
    .line 519
    .line 520
    :cond_207
    invoke-virtual {v11, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    .line 522
    .line 523
    iget v5, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 524
    .line 525
    if-ne v15, v5, :cond_210

    .line 526
    .line 527
    const/4 v5, 0x1

    .line 528
    goto :goto_211

    .line 529
    :cond_210
    move v5, v14

    .line 530
    :goto_211
    invoke-virtual {v10, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 531
    .line 532
    .line 533
    new-instance v5, Lm0/f0;

    .line 534
    .line 535
    invoke-direct {v5, v0, v15}, Lm0/f0;-><init>(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v10, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 539
    .line 540
    .line 541
    add-int/lit8 v4, v4, 0x1

    .line 542
    .line 543
    move v5, v6

    .line 544
    move v12, v14

    .line 545
    const/4 v6, 0x1

    .line 546
    const/4 v15, -0x1

    .line 547
    goto/16 :goto_184

    .line 548
    .line 549
    :cond_224
    new-instance v3, Lm0/h0;

    .line 550
    .line 551
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-direct {v3, v0, v4}, Lm0/h0;-><init>(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;Landroid/content/Context;)V

    .line 556
    .line 557
    .line 558
    iput-object v3, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->chart:Lm0/h0;

    .line 559
    .line 560
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 569
    .line 570
    int-to-float v3, v3

    .line 571
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 580
    .line 581
    div-float/2addr v3, v4

    .line 582
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    iget-object v4, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->chart:Lm0/h0;

    .line 587
    .line 588
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 589
    .line 590
    const/16 v6, 0x2bc

    .line 591
    .line 592
    if-ge v3, v6, :cond_254

    .line 593
    .line 594
    const/high16 v3, 0x42c80000    # 100.0f

    .line 595
    .line 596
    goto :goto_256

    .line 597
    :cond_254
    const/high16 v3, 0x43520000    # 210.0f

    .line 598
    .line 599
    :goto_256
    invoke-direct {v0, v3}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    const/4 v6, -0x1

    .line 604
    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v8, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    .line 609
    .line 610
    invoke-direct {v0, v7}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->card(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    const/16 v4, 0x1c

    .line 615
    .line 616
    new-array v4, v4, [B

    .line 617
    .line 618
    fill-array-data v4, :array_3f2

    .line 619
    .line 620
    .line 621
    new-array v5, v2, [B

    .line 622
    .line 623
    fill-array-data v5, :array_404

    .line 624
    .line 625
    .line 626
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    const/16 v5, 0x12

    .line 631
    .line 632
    iget v6, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->ink:I

    .line 633
    .line 634
    invoke-direct {v0, v4, v5, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    iput-object v4, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->trip:Landroid/widget/TextView;

    .line 639
    .line 640
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 641
    .line 642
    .line 643
    const/16 v4, 0x20

    .line 644
    .line 645
    new-array v4, v4, [B

    .line 646
    .line 647
    fill-array-data v4, :array_40c

    .line 648
    .line 649
    .line 650
    new-array v5, v2, [B

    .line 651
    .line 652
    fill-array-data v5, :array_420

    .line 653
    .line 654
    .line 655
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    iget v5, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->ink:I

    .line 660
    .line 661
    invoke-direct {v0, v4, v13, v5}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    iput-object v4, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->consumption:Landroid/widget/TextView;

    .line 666
    .line 667
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 668
    .line 669
    .line 670
    const/16 v4, 0x23

    .line 671
    .line 672
    new-array v4, v4, [B

    .line 673
    .line 674
    fill-array-data v4, :array_428

    .line 675
    .line 676
    .line 677
    new-array v5, v2, [B

    .line 678
    .line 679
    fill-array-data v5, :array_43e

    .line 680
    .line 681
    .line 682
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    const/16 v5, 0xc

    .line 687
    .line 688
    iget v6, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->muted:I

    .line 689
    .line 690
    invoke-direct {v0, v4, v5, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 695
    .line 696
    .line 697
    new-instance v3, Landroid/widget/Button;

    .line 698
    .line 699
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 704
    .line 705
    .line 706
    const/16 v4, 0x12

    .line 707
    .line 708
    new-array v4, v4, [B

    .line 709
    .line 710
    fill-array-data v4, :array_446

    .line 711
    .line 712
    .line 713
    new-array v5, v2, [B

    .line 714
    .line 715
    fill-array-data v5, :array_454

    .line 716
    .line 717
    .line 718
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 726
    .line 727
    const/4 v5, -0x2

    .line 728
    const/4 v6, -0x1

    .line 729
    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 730
    .line 731
    .line 732
    const/high16 v5, 0x41400000    # 12.0f

    .line 733
    .line 734
    invoke-direct {v0, v5}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 739
    .line 740
    invoke-virtual {v7, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    .line 742
    .line 743
    invoke-direct {v0, v7}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->card(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    const/16 v5, 0x13

    .line 748
    .line 749
    new-array v5, v5, [B

    .line 750
    .line 751
    fill-array-data v5, :array_45c

    .line 752
    .line 753
    .line 754
    new-array v6, v2, [B

    .line 755
    .line 756
    fill-array-data v6, :array_46a

    .line 757
    .line 758
    .line 759
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v5

    .line 763
    iget v6, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->muted:I

    .line 764
    .line 765
    const/16 v7, 0xe

    .line 766
    .line 767
    invoke-direct {v0, v5, v7, v6}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->text(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    iput-object v5, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->details:Landroid/widget/TextView;

    .line 772
    .line 773
    const/high16 v12, 0x40c00000    # 6.0f

    .line 774
    .line 775
    invoke-direct {v0, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->dp(F)I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    int-to-float v6, v6

    .line 780
    const/high16 v7, 0x3f800000    # 1.0f

    .line 781
    .line 782
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 783
    .line 784
    .line 785
    iget-object v5, v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->details:Landroid/widget/TextView;

    .line 786
    .line 787
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 791
    .line 792
    .line 793
    new-instance v5, Landroidx/navigation/ui/a;

    .line 794
    .line 795
    invoke-direct {v5, v2, v4, v3}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    .line 800
    .line 801
    return-object v1

    .line 802
    nop

    .line 803
    :array_322
    .array-data 1
        -0x21t
        -0x2bt
        -0x77t
        -0x7at
        -0x23t
        0x71t
        -0x3ct
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_32a
    .array-data 1
        -0x4et
        -0x44t
        -0x19t
        -0xdt
        -0x57t
        0x14t
        -0x49t
        0x3et
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    :array_332
    .array-data 1
        0x53t
        0x17t
        -0x57t
        -0x66t
        0xet
        -0x5ct
        0xft
        0x9t
        0x53t
        0x9t
        -0x57t
        -0x66t
        0xft
        -0x63t
        0xet
        0x3ct
        0x53t
        0xdt
        -0x58t
        -0x60t
    .end array-data

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_340
    .array-data 1
        -0x7dt
        -0x4bt
        0x79t
        0x2ft
        -0x22t
        0x1ft
        -0x21t
        -0x44t
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    :array_348
    .array-data 1
        -0x75t
        -0x3et
        0x72t
        -0x1at
        -0x51t
        -0x2et
        0x7ft
        0x7ct
        -0x75t
        -0x1at
        0x73t
        -0x2at
        -0x52t
        -0x1ft
        0x7ft
        0x73t
        -0x75t
        -0x20t
        0x72t
        -0x20t
        -0x51t
        -0x2dt
        -0x71t
        0x16t
        -0x1ft
        0x7dt
        0x72t
        -0x18t
        -0x51t
        -0x2ct
        0x7et
        0x44t
        -0x75t
        -0x1dt
        0x72t
        -0x1ct
        -0x51t
        -0x28t
        0x7ft
        0x77t
        -0x75t
        -0x1bt
        0x72t
        -0x1dt
        -0x52t
        -0x18t
        0x4dt
        0x46t
        -0x3t
    .end array-data

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    nop

    .line 871
    :array_366
    .array-data 1
        0x5bt
        0x5dt
        -0x5et
        0x58t
        0x7ft
        0x66t
        -0x51t
        -0x3at
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :array_36e
    .array-data 1
        -0x3t
        0x19t
        -0x12t
        0x58t
        0x1at
        -0x4dt
        0x76t
        -0xet
        -0x3t
        0x3at
    .end array-data

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    nop

    .line 889
    :array_378
    .array-data 1
        0x2dt
        -0x72t
        0x3et
        -0x18t
        -0x35t
        0x33t
        -0x59t
        0x7dt
    .end array-data

    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    :array_380
    .array-data 1
        0x29t
        -0x7at
        0x20t
        0x2t
        0x41t
        -0x6t
        -0x3at
        0x39t
        0x29t
        -0x64t
        0x20t
        0xet
        0x41t
        -0x5t
    .end array-data

    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    nop

    .line 909
    :array_38c
    .array-data 1
        -0x7t
        0x24t
        -0x10t
        -0x44t
        -0x6ft
        0x45t
        0x16t
        -0x7et
    .end array-data

    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    :array_394
    .array-data 1
        0x72t
        0x10t
        0xat
        0x54t
        0x1at
        -0x4at
        -0x4at
        0x18t
        0x72t
        0x32t
        0xbt
        0x6bt
        0x1at
        -0x43t
        -0x49t
        0x29t
        -0x7et
        0x5ct
        0x6bt
        0x3at
        0x7bt
        -0x12t
        -0x1ct
        0x75t
        0x12t
        0x5dt
        0x5at
        0x3at
        0x7et
        -0x11t
        -0x22t
    .end array-data

    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    :array_3a8
    .array-data 1
        -0x5et
        -0x74t
        -0x26t
        -0x16t
        -0x35t
        0x3ft
        0x66t
        -0x5bt
    .end array-data

    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    :array_3b0
    .array-data 1
        0x24t
        -0x1at
        0x3ct
        0x58t
        -0x17t
        -0xft
        0x3bt
        0x50t
        0x24t
        -0x3at
        0x3dt
        0x6bt
        -0x18t
        -0x3ct
        -0x36t
        0x0t
        0x60t
        -0x58t
        0x7et
        0x39t
        -0x68t
    .end array-data

    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    nop

    .line 961
    :array_3c0
    .array-data 1
        -0xct
        0x78t
        -0x14t
        -0x17t
        0x39t
        0x4ft
        -0x16t
        -0x30t
    .end array-data

    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :array_3c8
    .array-data 1
        -0x33t
        -0x43t
        -0x6bt
        0x11t
        -0x16t
        0x45t
        -0x4dt
        0x15t
        -0x33t
        -0x61t
        -0x6ct
        0x2et
        -0x16t
        0x4et
        -0x4et
        0x24t
        0x3dt
        -0x1dt
        -0xet
        -0x71t
        -0x15t
        0x76t
        -0x4dt
        0x3at
        -0x34t
        -0x5dt
    .end array-data

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    nop

    .line 987
    :array_3da
    .array-data 1
        0x1dt
        0x21t
        0x45t
        -0x51t
        0x3bt
        -0x34t
        0x63t
        -0x58t
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    :array_3e2
    .array-data 1
        -0x54t
        -0x2bt
        -0x2at
        0x73t
        0x5at
        -0x2et
        -0x6at
    .end array-data

    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_3ea
    .array-data 1
        -0x74t
        0x5t
        0x6at
        -0x5dt
        -0x1et
        0x2t
        0x2bt
        -0x69t
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :array_3f2
    .array-data 1
        0x5ct
        -0x2dt
        -0x50t
        -0x79t
        -0x2dt
        -0x24t
        0x6et
        0x1dt
        0x5ct
        -0x8t
        -0x50t
        -0x7dt
        -0x2dt
        -0x27t
        -0x62t
        -0x15t
        -0x54t
        -0x72t
        -0x29t
        0x19t
        -0x1ft
        -0x17t
        0x2at
        -0x76t
        0x5ct
        -0xat
        -0x50t
        -0x7bt
    .end array-data

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    :array_404
    .array-data 1
        -0x74t
        0x4ct
        0x60t
        0x39t
        0x3t
        0x69t
        -0x42t
        -0x56t
    .end array-data

    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    :array_40c
    .array-data 1
        -0x5bt
        0x4et
        -0x35t
        -0x2ft
        0x53t
        -0x49t
        -0x11t
        0x60t
        -0x5bt
        0x50t
        -0x35t
        -0x2bt
        -0x5et
        -0x1at
        -0x71t
        0x35t
        -0x40t
        0x3et
        -0x5at
        -0x4ft
        0x35t
        -0x1at
        -0x7at
        0x35t
        -0x38t
        0x3et
        -0x55t
        0x5bt
        -0x5et
        -0x2ct
        -0x42t
        0x71t
    .end array-data

    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    :array_420
    .array-data 1
        0x75t
        -0x12t
        0x1bt
        0x61t
        -0x7et
        0x36t
        0x3et
        -0x1bt
    .end array-data

    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    :array_428
    .array-data 1
        -0x42t
        0x40t
        -0x1ft
        0x21t
        -0x1ct
        0x15t
        0x32t
        -0x7ct
        -0x42t
        0x64t
        -0x20t
        0x17t
        0x14t
        0x70t
        0x5ft
        -0x17t
        -0x22t
        -0x2t
        -0x20t
        0x15t
        -0x1ct
        0x15t
        0x33t
        -0x48t
        -0x41t
        0x52t
        0x10t
        0x77t
        -0x75t
        0x71t
        0x61t
        -0x18t
        -0x14t
        0xft
        -0x44t
    .end array-data

    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    :array_43e
    .array-data 1
        0x6et
        -0x22t
        0x30t
        -0x59t
        0x34t
        -0x60t
        -0x1et
        0x39t
    .end array-data

    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    :array_446
    .array-data 1
        0x5et
        -0x5ft
        -0x2et
        0x61t
        -0x16t
        -0x77t
        0x46t
        -0x26t
        0x5et
        -0x80t
        -0x2et
        0x6et
        -0x16t
        -0x80t
        0x47t
        -0x11t
        0x5et
        -0x75t
    .end array-data

    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    nop

    .line 1109
    :array_454
    .array-data 1
        -0x72t
        0x3et
        0x2t
        -0x21t
        0x3at
        0x3dt
        -0x69t
        0x5at
    .end array-data

    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    :array_45c
    .array-data 1
        0x4ct
        0x6ft
        0x7ct
        -0x75t
        -0x47t
        -0x1t
        0x3t
        0xet
        0x28t
        0x22t
        0x1ct
        -0x12t
        -0x2bt
        -0x53t
        -0x62t
        0xft
        0x17t
        0x23t
        0x29t
    .end array-data

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    :array_46a
    .array-data 1
        -0x64t
        -0xet
        -0x54t
        0x3et
        0x68t
        0x7dt
        0x23t
        -0x22t
    .end array-data
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->worker:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->status:Landroid/widget/TextView;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->details:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->consumption:Landroid/widget/TextView;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->trip:Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->rpm:Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->power:Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->fuel:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->soc:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->chart:Lm0/h0;

    .line 19
    .line 20
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    fill-array-data v0, :array_1a

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    fill-array-data v1, :array_22

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->minutes:I

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_1a
    .array-data 1
        0x5et
        -0x10t
        0x62t
        -0x66t
        0x57t
        -0x31t
        -0x5bt
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_22
    .array-data 1
        0x33t
        -0x67t
        0xct
        -0x11t
        0x23t
        -0x56t
        -0x2at
        -0x2ft
    .end array-data
.end method

.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->active:Z

    .line 6
    .line 7
    iget v1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->generation:I

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    iput v1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->generation:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->lastResponse:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->main:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->tick:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->active:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->generation:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->generation:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->main:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
