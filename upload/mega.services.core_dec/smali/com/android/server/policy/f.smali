.class public abstract Lcom/android/server/policy/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/policy/d;


# static fields
.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:I = 0x4

.field private static final m:D = 0.25


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Point;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/f;->g:Z

    const/16 p1, 0x37

    iput p1, p0, Lcom/android/server/policy/f;->e:I

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/android/server/policy/f;->c:I

    return-void
.end method

.method private d(ILandroid/graphics/Point;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/f;->g:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p5, 0x4

    if-eq p1, p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/policy/f;->f(Landroid/graphics/Point;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/f;->k(Landroid/graphics/Point;III)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/f;->j(Landroid/graphics/Point;III)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/f;->i(Landroid/graphics/Point;III)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/f;->l(Landroid/graphics/Point;III)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/f;->g:Z

    :cond_5
    return-void
.end method

.method private h(Landroid/graphics/Point;IIII)Z
    .locals 10

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/f;->f:Landroid/graphics/Point;

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-le v8, p3, :cond_4

    const-string v3, "onPointerCatch "

    const-string v8, " "

    const-string v9, "MegaSystemGestures"

    if-le v4, v7, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    if-lez v5, :cond_1

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    if-lez v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPointerMove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/f;->f:Landroid/graphics/Point;

    iget v3, p0, Lcom/android/server/policy/f;->d:I

    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/f;->d(ILandroid/graphics/Point;III)V

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v3
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/graphics/Point;II)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/policy/f;->a:Z

    if-nez v0, :cond_0

    iget v4, p0, Lcom/android/server/policy/f;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/f;->h(Landroid/graphics/Point;IIII)Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/f;->a:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/policy/f;->n(Landroid/graphics/Point;II)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;Landroid/graphics/Point;II)V
    .locals 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/f;->a:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/f;->g:Z

    iput p3, p0, Lcom/android/server/policy/f;->d:I

    iput-object p2, p0, Lcom/android/server/policy/f;->f:Landroid/graphics/Point;

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/android/server/policy/f;->b:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPointerCatchStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MegaSystemGestures"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/policy/f;->m(Landroid/graphics/Point;II)V

    return-void
.end method

.method public c(Landroid/view/MotionEvent;Landroid/graphics/Point;II)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/policy/f;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/f;->a:Z

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    iget v2, p0, Lcom/android/server/policy/f;->d:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, p0, Lcom/android/server/policy/f;->c:I

    iget v4, p0, Lcom/android/server/policy/f;->b:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/f;->h(Landroid/graphics/Point;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/f;->c:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/server/policy/f;->d:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPointerGrab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/f;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaSystemGestures"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/f;->d(ILandroid/graphics/Point;III)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/f;->a:Z

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/f;->a:Z

    return p0
.end method

.method abstract f(Landroid/graphics/Point;II)V
.end method

.method abstract g(Landroid/view/MotionEvent;Landroid/graphics/Point;I)V
.end method

.method abstract i(Landroid/graphics/Point;III)V
.end method

.method abstract j(Landroid/graphics/Point;III)V
.end method

.method abstract k(Landroid/graphics/Point;III)V
.end method

.method abstract l(Landroid/graphics/Point;III)V
.end method

.method abstract m(Landroid/graphics/Point;II)V
.end method

.method abstract n(Landroid/graphics/Point;II)V
.end method
