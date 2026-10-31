.class public final Lr5/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lb8/c;
.implements Lokhttp3/Callback;
.implements Lf2/b;
.implements Lx7/c;
.implements Lh3/b;
.implements Le5/b;
.implements Lx7/f;
.implements Lk7/c;
.implements Ln/s;


# static fields
.field public static volatile d:Lr5/c;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lr5/c;->b:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ln/c0;

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    invoke-direct {p1, v0}, Ln/c0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 27
    .line 28
    return-void

    .line 29
    :sswitch_1
    new-instance p1, Lb1/m;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-direct {p1, v0}, Lb1/m;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 39
    .line 40
    return-void

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 51
    iput p1, p0, Lr5/c;->b:I

    iput-object p2, p0, Lr5/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 41
    iput p1, p0, Lr5/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La5/h;Lh5/a;)V
    .locals 0

    const/16 p1, 0xe

    iput p1, p0, Lr5/c;->b:I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lr5/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x19

    iput v0, p0, Lr5/c;->b:I

    .line 46
    new-instance v0, Lcom/bumptech/glide/manager/o;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/f;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lr5/c;->b:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    .line 44
    iget-object p1, p1, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 45
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lr5/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static g(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_4

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_5

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    if-nez v1, :cond_4

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    move-object v1, v0

    .line 63
    goto :goto_3

    .line 64
    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    :goto_4
    return-object v1
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const/4 v0, 0x4

    .line 18
    new-array v1, v0, [B

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    new-array v3, v2, [B

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ltz v1, :cond_2

    .line 39
    .line 40
    add-int/2addr v1, v0

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_2
    if-eqz p0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    new-array p0, v0, [B

    .line 71
    .line 72
    fill-array-data p0, :array_2

    .line 73
    .line 74
    .line 75
    new-array v0, v2, [B

    .line 76
    .line 77
    fill-array-data v0, :array_3

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_4
    :goto_1
    return-object p1

    .line 86
    nop

    .line 87
    :array_0
    .array-data 1
        -0x6et
        -0x3t
        0x5ft
        -0x47t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 1
        -0x58t
        -0x6ct
        0x3bt
        -0x6at
        0x21t
        -0x3et
        0x7ct
        -0x70t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_2
    .array-data 1
        -0x3bt
        -0x2ft
        -0x5dt
        -0x3dt
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_3
    .array-data 1
        -0x1t
        -0x48t
        -0x39t
        -0x14t
        0x0t
        -0x10t
        0x40t
        0x74t
    .end array-data
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        -0x75t
        -0x66t
        0x5ft
        0x5bt
        0x14t
        -0x70t
        0x70t
        -0x48t
        -0x66t
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    nop

    .line 31
    :array_1
    .array-data 1
        -0x4t
        -0x3t
        0x2ft
        0x29t
        0x71t
        -0xdt
        0x1ft
        -0x2at
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li8/j;

    .line 4
    .line 5
    iget-object v0, v0, Li8/j;->b:Lx7/f;

    .line 6
    .line 7
    invoke-interface {v0}, Lx7/f;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lr5/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Li8/g;

    .line 9
    .line 10
    iget-object v0, v0, Li8/g;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lp2/e;

    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lp2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 24
    .line 25
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroidx/constraintlayout/core/utils/a;

    .line 28
    .line 29
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lz7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li8/j;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li8/j;

    .line 4
    .line 5
    iget-object v0, v0, Li8/j;->b:Lx7/f;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    const-string v0, "Subscribing to analytics events."

    .line 2
    .line 3
    invoke-static {v0}, Le3/d;->m(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lf5/b;

    .line 9
    .line 10
    iget-object v1, v0, Lf5/b;->a:Lf5/b0;

    .line 11
    .line 12
    new-instance v2, Lp2/e;

    .line 13
    .line 14
    const/4 v3, 0x6

    .line 15
    invoke-direct {v2, v3}, Lp2/e;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lf5/b0;->a(Lp2/e;)Lf5/a0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lf5/b;->c:Lf5/a0;

    .line 23
    .line 24
    return-void
.end method

.method public e(Ljava/lang/String;)Lk7/b;
    .locals 6

    .line 1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lk7/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v2, p1}, Lk7/c;->e(Ljava/lang/String;)Lk7/b;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v3, v2, Lk7/b;->b:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    return-object v2

    .line 28
    :catch_0
    move-exception v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const/16 v4, 0x19

    .line 35
    .line 36
    new-array v4, v4, [B

    .line 37
    .line 38
    fill-array-data v4, :array_0

    .line 39
    .line 40
    .line 41
    const/16 v5, 0x8

    .line 42
    .line 43
    new-array v5, v5, [B

    .line 44
    .line 45
    fill-array-data v5, :array_1

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lh0/b;->v(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p1, 0x0

    .line 73
    return-object p1

    .line 74
    nop

    .line 75
    :array_0
    .array-data 1
        -0x9t
        -0x5at
        0x1at
        0x7ct
        -0x55t
        0x22t
        -0x64t
        -0x5ct
        -0x1at
        -0x5et
        0x17t
        0x64t
        -0x5ft
        0x26t
        -0x73t
        -0x61t
        -0x3dt
        -0x58t
        0x0t
        0x79t
        -0x53t
        0x26t
        -0x73t
        -0xbt
        -0x6ft
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    nop

    .line 93
    :array_1
    .array-data 1
        -0x4ft
        -0x39t
        0x76t
        0x10t
        -0x37t
        0x43t
        -0x1t
        -0x31t
    .end array-data
.end method

.method public f([II)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lr5/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lh6/a;

    .line 10
    .line 11
    array-length v4, v0

    .line 12
    if-eqz v4, :cond_1b

    .line 13
    .line 14
    array-length v4, v0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x1

    .line 17
    if-le v4, v6, :cond_2

    .line 18
    .line 19
    aget v7, v0, v5

    .line 20
    .line 21
    if-nez v7, :cond_2

    .line 22
    .line 23
    move v7, v6

    .line 24
    :goto_0
    if-ge v7, v4, :cond_0

    .line 25
    .line 26
    aget v8, v0, v7

    .line 27
    .line 28
    if-nez v8, :cond_0

    .line 29
    .line 30
    add-int/lit8 v7, v7, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-ne v7, v4, :cond_1

    .line 34
    .line 35
    filled-new-array {v5}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sub-int/2addr v4, v7

    .line 41
    new-array v8, v4, [I

    .line 42
    .line 43
    invoke-static {v0, v7, v8, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    move-object v4, v8

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v4, v0

    .line 49
    :goto_1
    new-array v7, v2, [I

    .line 50
    .line 51
    move v8, v5

    .line 52
    move v9, v6

    .line 53
    :goto_2
    if-ge v8, v2, :cond_7

    .line 54
    .line 55
    iget v10, v3, Lh6/a;->g:I

    .line 56
    .line 57
    add-int/2addr v10, v8

    .line 58
    iget-object v11, v3, Lh6/a;->a:[I

    .line 59
    .line 60
    aget v10, v11, v10

    .line 61
    .line 62
    if-nez v10, :cond_3

    .line 63
    .line 64
    array-length v10, v4

    .line 65
    sub-int/2addr v10, v6

    .line 66
    aget v10, v4, v10

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_3
    if-ne v10, v6, :cond_5

    .line 70
    .line 71
    array-length v10, v4

    .line 72
    move v11, v5

    .line 73
    move v12, v11

    .line 74
    :goto_3
    if-ge v12, v10, :cond_4

    .line 75
    .line 76
    aget v13, v4, v12

    .line 77
    .line 78
    sget-object v14, Lh6/a;->h:Lh6/a;

    .line 79
    .line 80
    xor-int/2addr v11, v13

    .line 81
    add-int/lit8 v12, v12, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v10, v11

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    aget v11, v4, v5

    .line 87
    .line 88
    array-length v12, v4

    .line 89
    move v13, v6

    .line 90
    :goto_4
    if-ge v13, v12, :cond_4

    .line 91
    .line 92
    invoke-virtual {v3, v10, v11}, Lh6/a;->c(II)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    aget v14, v4, v13

    .line 97
    .line 98
    xor-int/2addr v11, v14

    .line 99
    add-int/lit8 v13, v13, 0x1

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_5
    add-int/lit8 v11, v2, -0x1

    .line 103
    .line 104
    sub-int/2addr v11, v8

    .line 105
    aput v10, v7, v11

    .line 106
    .line 107
    if-eqz v10, :cond_6

    .line 108
    .line 109
    move v9, v5

    .line 110
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    if-eqz v9, :cond_8

    .line 114
    .line 115
    goto/16 :goto_f

    .line 116
    .line 117
    :cond_8
    new-instance v4, Lh6/b;

    .line 118
    .line 119
    invoke-direct {v4, v3, v7}, Lh6/b;-><init>(Lh6/a;[I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v2, v6}, Lh6/a;->a(II)Lh6/b;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    iget-object v8, v3, Lh6/a;->c:Lh6/b;

    .line 127
    .line 128
    invoke-virtual {v7}, Lh6/b;->d()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    invoke-virtual {v4}, Lh6/b;->d()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-ge v9, v10, :cond_9

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_9
    move-object/from16 v16, v7

    .line 140
    .line 141
    move-object v7, v4

    .line 142
    move-object/from16 v4, v16

    .line 143
    .line 144
    :goto_6
    iget-object v9, v3, Lh6/a;->d:Lh6/b;

    .line 145
    .line 146
    move-object v10, v7

    .line 147
    move-object v7, v4

    .line 148
    move-object v4, v10

    .line 149
    move-object v10, v8

    .line 150
    :goto_7
    invoke-virtual {v4}, Lh6/b;->d()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    div-int/lit8 v12, v2, 0x2

    .line 155
    .line 156
    if-lt v11, v12, :cond_d

    .line 157
    .line 158
    invoke-virtual {v4}, Lh6/b;->e()Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-nez v11, :cond_c

    .line 163
    .line 164
    invoke-virtual {v4}, Lh6/b;->d()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v4, v11}, Lh6/b;->c(I)I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    invoke-virtual {v3, v11}, Lh6/a;->b(I)I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    move-object v12, v8

    .line 177
    :goto_8
    invoke-virtual {v7}, Lh6/b;->d()I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    invoke-virtual {v4}, Lh6/b;->d()I

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-lt v13, v14, :cond_a

    .line 186
    .line 187
    invoke-virtual {v7}, Lh6/b;->e()Z

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    if-nez v13, :cond_a

    .line 192
    .line 193
    invoke-virtual {v7}, Lh6/b;->d()I

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    invoke-virtual {v4}, Lh6/b;->d()I

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    sub-int/2addr v13, v14

    .line 202
    invoke-virtual {v7}, Lh6/b;->d()I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    invoke-virtual {v7, v14}, Lh6/b;->c(I)I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    invoke-virtual {v3, v14, v11}, Lh6/a;->c(II)I

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    invoke-virtual {v3, v13, v14}, Lh6/a;->a(II)Lh6/b;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    invoke-virtual {v12, v15}, Lh6/b;->a(Lh6/b;)Lh6/b;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v4, v13, v14}, Lh6/b;->h(II)Lh6/b;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    invoke-virtual {v7, v13}, Lh6/b;->a(Lh6/b;)Lh6/b;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    goto :goto_8

    .line 231
    :cond_a
    invoke-virtual {v12, v9}, Lh6/b;->g(Lh6/b;)Lh6/b;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-virtual {v11, v10}, Lh6/b;->a(Lh6/b;)Lh6/b;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v7}, Lh6/b;->d()I

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    invoke-virtual {v4}, Lh6/b;->d()I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-ge v11, v12, :cond_b

    .line 248
    .line 249
    move-object/from16 v16, v7

    .line 250
    .line 251
    move-object v7, v4

    .line 252
    move-object/from16 v4, v16

    .line 253
    .line 254
    move-object/from16 v16, v10

    .line 255
    .line 256
    move-object v10, v9

    .line 257
    move-object/from16 v9, v16

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_b
    const-string v0, "Division algorithm failed to reduce polynomial?"

    .line 261
    .line 262
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_c
    new-instance v0, Lh6/c;

    .line 267
    .line 268
    const-string v2, "r_{i-1} was zero"

    .line 269
    .line 270
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :cond_d
    invoke-virtual {v9, v5}, Lh6/b;->c(I)I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_1a

    .line 279
    .line 280
    invoke-virtual {v3, v2}, Lh6/a;->b(I)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-virtual {v9, v2}, Lh6/b;->f(I)Lh6/b;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-virtual {v4, v2}, Lh6/b;->f(I)Lh6/b;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    filled-new-array {v7, v2}, [Lh6/b;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    aget-object v4, v2, v5

    .line 297
    .line 298
    aget-object v2, v2, v6

    .line 299
    .line 300
    invoke-virtual {v4}, Lh6/b;->d()I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-ne v7, v6, :cond_e

    .line 305
    .line 306
    invoke-virtual {v4, v6}, Lh6/b;->c(I)I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    filled-new-array {v4}, [I

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    goto :goto_a

    .line 315
    :cond_e
    new-array v8, v7, [I

    .line 316
    .line 317
    move v10, v5

    .line 318
    move v9, v6

    .line 319
    :goto_9
    iget v11, v3, Lh6/a;->e:I

    .line 320
    .line 321
    if-ge v9, v11, :cond_10

    .line 322
    .line 323
    if-ge v10, v7, :cond_10

    .line 324
    .line 325
    invoke-virtual {v4, v9}, Lh6/b;->b(I)I

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    if-nez v11, :cond_f

    .line 330
    .line 331
    invoke-virtual {v3, v9}, Lh6/a;->b(I)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    aput v11, v8, v10

    .line 336
    .line 337
    add-int/lit8 v10, v10, 0x1

    .line 338
    .line 339
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_10
    if-ne v10, v7, :cond_19

    .line 343
    .line 344
    move-object v4, v8

    .line 345
    :goto_a
    array-length v7, v4

    .line 346
    new-array v8, v7, [I

    .line 347
    .line 348
    move v9, v5

    .line 349
    :goto_b
    if-ge v9, v7, :cond_15

    .line 350
    .line 351
    aget v10, v4, v9

    .line 352
    .line 353
    invoke-virtual {v3, v10}, Lh6/a;->b(I)I

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    move v11, v5

    .line 358
    move v12, v6

    .line 359
    :goto_c
    if-ge v11, v7, :cond_13

    .line 360
    .line 361
    if-eq v9, v11, :cond_12

    .line 362
    .line 363
    aget v13, v4, v11

    .line 364
    .line 365
    invoke-virtual {v3, v13, v10}, Lh6/a;->c(II)I

    .line 366
    .line 367
    .line 368
    move-result v13

    .line 369
    and-int/lit8 v14, v13, 0x1

    .line 370
    .line 371
    if-nez v14, :cond_11

    .line 372
    .line 373
    or-int/lit8 v13, v13, 0x1

    .line 374
    .line 375
    goto :goto_d

    .line 376
    :cond_11
    and-int/lit8 v13, v13, -0x2

    .line 377
    .line 378
    :goto_d
    invoke-virtual {v3, v12, v13}, Lh6/a;->c(II)I

    .line 379
    .line 380
    .line 381
    move-result v12

    .line 382
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_13
    invoke-virtual {v2, v10}, Lh6/b;->b(I)I

    .line 386
    .line 387
    .line 388
    move-result v11

    .line 389
    invoke-virtual {v3, v12}, Lh6/a;->b(I)I

    .line 390
    .line 391
    .line 392
    move-result v12

    .line 393
    invoke-virtual {v3, v11, v12}, Lh6/a;->c(II)I

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    aput v11, v8, v9

    .line 398
    .line 399
    iget v12, v3, Lh6/a;->g:I

    .line 400
    .line 401
    if-eqz v12, :cond_14

    .line 402
    .line 403
    invoke-virtual {v3, v11, v10}, Lh6/a;->c(II)I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    aput v10, v8, v9

    .line 408
    .line 409
    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 410
    .line 411
    goto :goto_b

    .line 412
    :cond_15
    :goto_e
    array-length v2, v4

    .line 413
    if-ge v5, v2, :cond_18

    .line 414
    .line 415
    array-length v2, v0

    .line 416
    sub-int/2addr v2, v6

    .line 417
    aget v7, v4, v5

    .line 418
    .line 419
    if-eqz v7, :cond_17

    .line 420
    .line 421
    iget-object v9, v3, Lh6/a;->b:[I

    .line 422
    .line 423
    aget v7, v9, v7

    .line 424
    .line 425
    sub-int/2addr v2, v7

    .line 426
    if-ltz v2, :cond_16

    .line 427
    .line 428
    aget v7, v0, v2

    .line 429
    .line 430
    aget v9, v8, v5

    .line 431
    .line 432
    xor-int/2addr v7, v9

    .line 433
    aput v7, v0, v2

    .line 434
    .line 435
    add-int/lit8 v5, v5, 0x1

    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_16
    new-instance v0, Lh6/c;

    .line 439
    .line 440
    const-string v2, "Bad error location"

    .line 441
    .line 442
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0

    .line 446
    :cond_17
    invoke-static {}, Ll9/i;->a()V

    .line 447
    .line 448
    .line 449
    :cond_18
    :goto_f
    return-void

    .line 450
    :cond_19
    new-instance v0, Lh6/c;

    .line 451
    .line 452
    const-string v2, "Error locator degree does not match number of roots"

    .line 453
    .line 454
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    :cond_1a
    new-instance v0, Lh6/c;

    .line 459
    .line 460
    const-string v2, "sigmaTilde(0) was zero"

    .line 461
    .line 462
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    :cond_1b
    invoke-static {}, Ll9/i;->a()V

    .line 467
    .line 468
    .line 469
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lr5/c;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lf5/l0;

    .line 9
    .line 10
    sget-object v1, Ln7/v0;->d:Ln7/h;

    .line 11
    .line 12
    sget-object v2, Ln7/s0;->d:Ljava/util/BitSet;

    .line 13
    .line 14
    new-instance v2, Ln7/q0;

    .line 15
    .line 16
    const-string v3, "X-Goog-Api-Key"

    .line 17
    .line 18
    invoke-direct {v2, v3, v1}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ln7/q0;

    .line 22
    .line 23
    const-string v4, "X-Android-Package"

    .line 24
    .line 25
    invoke-direct {v3, v4, v1}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Ln7/q0;

    .line 29
    .line 30
    const-string v5, "X-Android-Cert"

    .line 31
    .line 32
    invoke-direct {v4, v5, v1}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ln7/v0;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lf5/l0;->a:Lo4/f;

    .line 41
    .line 42
    invoke-virtual {v0}, Lo4/f;->a()V

    .line 43
    .line 44
    .line 45
    iget-object v5, v0, Lo4/f;->a:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v0}, Lo4/f;->a()V

    .line 52
    .line 53
    .line 54
    iget-object v7, v0, Lo4/f;->c:Lo4/h;

    .line 55
    .line 56
    iget-object v7, v7, Lo4/h;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v7}, Ln7/v0;->e(Ln7/s0;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3, v6}, Ln7/v0;->e(Ln7/s0;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lo4/f;->a()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v2, 0x40

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    :try_start_0
    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    array-length v2, v0

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    aget-object v0, v0, v2

    .line 89
    .line 90
    if-nez v0, :cond_0

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    const-string v2, "SHA1"

    .line 98
    .line 99
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v2, Lk4/e;->e:Lk4/b;

    .line 108
    .line 109
    invoke-virtual {v2}, Lk4/e;->h()Lk4/e;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2, v0}, Lk4/e;->c([B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :catch_0
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 118
    .line 119
    invoke-virtual {v1, v4, v3}, Ln7/v0;->e(Ln7/s0;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-object v1

    .line 123
    :sswitch_0
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Lr5/c;

    .line 126
    .line 127
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Landroid/app/Application;

    .line 130
    .line 131
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :sswitch_1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Lh5/a;

    .line 138
    .line 139
    invoke-virtual {v0}, Lh5/a;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lf5/l0;

    .line 144
    .line 145
    new-instance v1, Lf5/m0;

    .line 146
    .line 147
    invoke-direct {v1, v0}, Lf5/m0;-><init>(Lf5/l0;)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :sswitch_2
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Le5/c;

    .line 154
    .line 155
    iget-object v0, v0, Le5/c;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Landroid/content/Context;

    .line 158
    .line 159
    new-instance v1, Lc5/e;

    .line 160
    .line 161
    const/16 v2, 0xf

    .line 162
    .line 163
    invoke-direct {v1, v2}, Lc5/e;-><init>(I)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lz3/f;

    .line 167
    .line 168
    const/16 v3, 0xe

    .line 169
    .line 170
    invoke-direct {v2, v3}, Lz3/f;-><init>(I)V

    .line 171
    .line 172
    .line 173
    new-instance v3, La5/h;

    .line 174
    .line 175
    const/4 v4, 0x3

    .line 176
    invoke-direct {v3, v0, v1, v2, v4}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    return-object v3

    .line 180
    nop

    .line 181
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xe -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public j(Ln/z;)Ln/r;
    .locals 2

    .line 1
    new-instance p1, Ln/c;

    .line 2
    .line 3
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ln/c0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p1, v1, v0}, Ln/c;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb7/n;

    .line 4
    .line 5
    iget-object v0, v0, Lb7/n;->h:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lb7/n;

    .line 11
    .line 12
    iget-boolean v2, v1, Lb7/n;->g:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lb7/n;->c:Landroid/os/Handler;

    .line 17
    .line 18
    const v2, 0x7f090603

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method public l(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/h;

    .line 4
    .line 5
    iget-object v1, v0, Ld2/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    const/16 v2, 0x15

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    if-ne p1, v4, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    new-array v2, v2, [B

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v5, v2, v3}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-array v2, v2, [B

    .line 44
    .line 45
    fill-array-data v2, :array_2

    .line 46
    .line 47
    .line 48
    new-array v3, v3, [B

    .line 49
    .line 50
    fill-array-data v3, :array_3

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v5, v2, v3}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    :goto_0
    if-ne p1, v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const v2, 0x7f130475

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/example/navistart/VJCT;->t(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/high16 p1, 0x7f050000

    .line 78
    .line 79
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p1}, Lcom/example/navistart/VJCT;->s(I)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/example/navistart/TService;->b(Ljava/lang/Boolean;)V

    .line 89
    .line 90
    .line 91
    const-string p1, ""

    .line 92
    .line 93
    invoke-static {p1}, Lcom/example/navistart/VJCT;->u(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ld2/h;->i()V

    .line 97
    .line 98
    .line 99
    iget-object p1, v0, Ld2/h;->a:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v1, p1

    .line 102
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 103
    .line 104
    new-instance v2, Ll7/a;

    .line 105
    .line 106
    const/4 p1, 0x2

    .line 107
    invoke-direct {v2, v0, p1}, Ll7/a;-><init>(Ld2/h;I)V

    .line 108
    .line 109
    .line 110
    const/16 p1, 0x1388

    .line 111
    .line 112
    int-to-long v5, p1

    .line 113
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    .line 115
    const-wide/16 v3, 0x0

    .line 116
    .line 117
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, v0, Ld2/h;->b:Ljava/lang/Object;

    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const v2, 0x7f130476

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/example/navistart/VJCT;->t(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const p1, 0x7f050068

    .line 139
    .line 140
    .line 141
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-static {p1}, Lcom/example/navistart/VJCT;->s(I)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/example/navistart/TService;->b(Ljava/lang/Boolean;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ld2/h;->i()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :array_0
    .array-data 1
        0x7et
        0x4dt
        -0xbt
        -0x6bt
        0x18t
        0x4at
        -0x6ft
        -0x24t
        0x57t
        0x4et
        -0x11t
        -0x55t
        0x8t
        0x51t
        -0x5ft
        -0x25t
        0x7ct
        0x5ct
        -0x11t
        -0x41t
        0x9t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    nop

    .line 173
    :array_1
    .array-data 1
        0x8t
        0x3dt
        -0x65t
        -0x36t
        0x7at
        0x25t
        -0x2t
        -0x58t
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_2
    .array-data 1
        -0x65t
        -0x7et
        0x6dt
        0x66t
        0x5dt
        -0x3ft
        -0x5ft
        -0x29t
        -0x4et
        -0x7ft
        0x77t
        0x58t
        0x4dt
        -0x26t
        -0x6ft
        -0x30t
        -0x67t
        -0x6dt
        0x77t
        0x4ct
        0x4ct
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    nop

    .line 197
    :array_3
    .array-data 1
        -0x13t
        -0xet
        0x3t
        0x39t
        0x3ft
        -0x52t
        -0x32t
        -0x5dt
    .end array-data
.end method

.method public m(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)La6/a;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lr5/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lb1/m;

    .line 10
    .line 11
    iget-object v4, v3, Lb1/m;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v4}, Lr5/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v0, v4}, Lr5/c;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget-object v5, Le1/c;->a:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    const/16 v6, 0x2e

    .line 27
    .line 28
    const/16 v7, 0x2c

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    :catch_0
    :goto_0
    move v10, v8

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 40
    .line 41
    invoke-virtual {v4, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sget-object v9, Le1/c;->a:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v10, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 67
    .line 68
    .line 69
    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v10, 0x2

    .line 71
    new-array v10, v10, [B

    .line 72
    .line 73
    fill-array-data v10, :array_0

    .line 74
    .line 75
    .line 76
    const/16 v11, 0x8

    .line 77
    .line 78
    new-array v12, v11, [B

    .line 79
    .line 80
    fill-array-data v12, :array_1

    .line 81
    .line 82
    .line 83
    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-nez v10, :cond_3

    .line 92
    .line 93
    const/4 v10, 0x4

    .line 94
    new-array v10, v10, [B

    .line 95
    .line 96
    fill-array-data v10, :array_2

    .line 97
    .line 98
    .line 99
    new-array v11, v11, [B

    .line 100
    .line 101
    fill-array-data v11, :array_3

    .line 102
    .line 103
    .line 104
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    :goto_1
    move v10, v4

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    :goto_2
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 122
    .line 123
    mul-float/2addr v9, v4

    .line 124
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    goto :goto_1

    .line 129
    :goto_3
    if-gtz v10, :cond_4

    .line 130
    .line 131
    new-instance v11, La6/a;

    .line 132
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    const/4 v12, 0x0

    .line 137
    const/4 v13, 0x0

    .line 138
    const-string v14, ""

    .line 139
    .line 140
    const-string v15, ""

    .line 141
    .line 142
    const/16 v16, 0x0

    .line 143
    .line 144
    invoke-direct/range {v11 .. v16}, La6/a;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    return-object v11

    .line 148
    :cond_4
    iget-object v4, v3, Lb1/m;->e:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v4, Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v2, v4}, Lr5/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v0, v4}, Lr5/c;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v9, v3, Lb1/m;->c:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v9, Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v2, v9}, Lr5/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-static {v0, v9}, Lr5/c;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    iget-object v3, v3, Lb1/m;->f:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v3, Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v2, v3}, Lr5/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v0, v2}, Lr5/c;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-object v0, v9

    .line 184
    new-instance v9, La6/a;

    .line 185
    .line 186
    if-nez v4, :cond_5

    .line 187
    .line 188
    :catch_1
    :goto_4
    move v11, v8

    .line 189
    goto :goto_5

    .line 190
    :cond_5
    sget-object v2, Le1/c;->a:Ljava/util/regex/Pattern;

    .line 191
    .line 192
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_6

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 216
    .line 217
    .line 218
    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    goto :goto_4

    .line 220
    :goto_5
    const-string v2, ""

    .line 221
    .line 222
    if-nez v4, :cond_7

    .line 223
    .line 224
    move-object v12, v2

    .line 225
    goto :goto_6

    .line 226
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    move-object v12, v3

    .line 231
    :goto_6
    if-nez v0, :cond_8

    .line 232
    .line 233
    :goto_7
    move-object v13, v2

    .line 234
    goto :goto_8

    .line 235
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    goto :goto_7

    .line 240
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 241
    .line 242
    .line 243
    const/4 v14, 0x1

    .line 244
    invoke-direct/range {v9 .. v14}, La6/a;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 245
    .line 246
    .line 247
    return-object v9

    .line 248
    nop

    .line 249
    :array_0
    .array-data 1
        -0x26t
        -0x45t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    nop

    .line 255
    :array_1
    .array-data 1
        -0x4ft
        -0x2at
        -0x5t
        0x72t
        -0x59t
        -0x55t
        -0x1et
        0x7ft
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_2
    .array-data 1
        0x6ct
        0x38t
        0x3et
        0x3ct
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_3
    .array-data 1
        -0x44t
        -0x7et
        -0x12t
        -0x80t
        0x77t
        0x7at
        -0x1ct
        0x21t
    .end array-data
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    iget-object p1, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroidx/core/view/WindowInsetsCompat;

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iput-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroidx/core/view/WindowInsetsCompat;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    move v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_1
    xor-int/2addr v0, v1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object p2
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li8/j;

    .line 4
    .line 5
    iget-object v0, v0, Li8/j;->b:Lx7/f;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .line 1
    iget p2, p0, Lr5/c;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p2, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lcom/woha/wifim/MainWifiManadger;

    .line 10
    .line 11
    iget-object v1, p2, Lcom/woha/wifim/MainWifiManadger;->r:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Le0/e2;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-direct {v2, p2, p1, v0, v3}, Le0/e2;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lcom/example/navistart/punto;

    .line 26
    .line 27
    sget-object p2, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p2, p1, Lcom/example/navistart/punto;->d:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v1, Lc7/e;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    invoke-direct {v1, p1, v0, v2}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    .line 1
    iget v0, p0, Lr5/c;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Lcom/woha/wifim/MainWifiManadger;

    .line 17
    .line 18
    iget-object v2, p2, Lcom/woha/wifim/MainWifiManadger;->r:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v3, Le0/e2;

    .line 21
    .line 22
    invoke-direct {v3, p2, p1, v0, v1}, Le0/e2;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    throw p1

    .line 41
    :pswitch_0
    iget-object p1, p0, Lr5/c;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/example/navistart/punto;

    .line 44
    .line 45
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    sget-object v0, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v0, p1, Lcom/example/navistart/punto;->d:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v3, Lc7/e;

    .line 57
    .line 58
    const/4 v4, 0x5

    .line 59
    invoke-direct {v3, p1, v2, v4}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Le0/m;->j:[B

    .line 85
    .line 86
    sget-object v4, Le0/p3;->a:[Ljava/lang/String;

    .line 87
    .line 88
    new-instance v4, Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    new-instance v5, Ljava/lang/String;

    .line 104
    .line 105
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 106
    .line 107
    .line 108
    new-instance v6, Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v4, v5, v3}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-array v3, v1, [B

    .line 121
    .line 122
    fill-array-data v3, :array_0

    .line 123
    .line 124
    .line 125
    const/16 v4, 0x8

    .line 126
    .line 127
    new-array v5, v4, [B

    .line 128
    .line 129
    fill-array-data v5, :array_1

    .line 130
    .line 131
    .line 132
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_2

    .line 141
    .line 142
    const/4 v3, 0x4

    .line 143
    new-array v3, v3, [B

    .line 144
    .line 145
    fill-array-data v3, :array_2

    .line 146
    .line 147
    .line 148
    new-array v5, v4, [B

    .line 149
    .line 150
    fill-array-data v5, :array_3

    .line 151
    .line 152
    .line 153
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    new-array v1, v1, [B

    .line 158
    .line 159
    fill-array-data v1, :array_4

    .line 160
    .line 161
    .line 162
    new-array v5, v4, [B

    .line 163
    .line 164
    fill-array-data v5, :array_5

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    .line 181
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const/4 v1, 0x2

    .line 186
    new-array v1, v1, [B

    .line 187
    .line 188
    fill-array-data v1, :array_6

    .line 189
    .line 190
    .line 191
    new-array v3, v4, [B

    .line 192
    .line 193
    fill-array-data v3, :array_7

    .line 194
    .line 195
    .line 196
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1, v2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p1, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 204
    .line 205
    new-instance v1, Landroid/content/Intent;

    .line 206
    .line 207
    iget-object v2, p1, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 208
    .line 209
    const-class v3, Lcom/example/navistart/ModernMainActivity;

    .line 210
    .line 211
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .line 213
    .line 214
    const/high16 v2, 0x10000000

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const/4 v2, 0x0

    .line 221
    invoke-static {v0, v1, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catchall_2
    move-exception p1

    .line 229
    goto :goto_2

    .line 230
    :catch_0
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Lokhttp3/Response;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :goto_2
    if-eqz p2, :cond_3

    .line 235
    .line 236
    :try_start_5
    invoke-virtual {p2}, Lokhttp3/Response;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :catchall_3
    move-exception p2

    .line 241
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    :cond_3
    :goto_3
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 245
    :catch_1
    :goto_4
    return-void

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_0
    .array-data 1
        0x6dt
        -0xdt
        -0x2ft
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_1
    .array-data 1
        0x1ft
        -0x6at
        -0x5et
        0x3ct
        -0x71t
        0x4ft
        -0x4t
        -0x3dt
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_2
    .array-data 1
        -0x27t
        0x3et
        -0x7ft
        0x6at
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_3
    .array-data 1
        -0x53t
        0x4ct
        -0xct
        0xft
        0x4at
        0x41t
        0x56t
        0x58t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_4
    .array-data 1
        0x19t
        -0x7t
        0x16t
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_5
    .array-data 1
        0x6bt
        -0x64t
        0x65t
        -0x65t
        0x5dt
        -0x3bt
        -0x59t
        0xct
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_6
    .array-data 1
        0x48t
        -0x7bt
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    nop

    .line 301
    :array_7
    .array-data 1
        0x29t
        -0x10t
        -0x7bt
        0x5t
        0x22t
        0x66t
        -0x23t
        0x72t
    .end array-data
.end method
