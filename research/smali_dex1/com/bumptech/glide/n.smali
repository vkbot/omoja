.class public final Lcom/bumptech/glide/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz/d;


# instance fields
.field public final b:Lz/c;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bumptech/glide/n;->c:Landroid/view/View;

    .line 10
    .line 11
    new-instance v0, Lz/c;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lz/c;-><init>(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/n;->b:Lz/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ly/f;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/n;->b:Lz/c;

    .line 2
    .line 3
    iget-object v1, v0, Lz/c;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lz/c;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    add-int/2addr v4, v3

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v3, :cond_19

    .line 22
    .line 23
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v3, v5

    .line 27
    :goto_1a
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {v0, v6, v3, v4}, Lz/c;->a(III)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    add-int/2addr v6, v4

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_33

    .line 49
    .line 50
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    :cond_33
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v4, v5, v6}, Lz/c;->a(III)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/high16 v5, -0x80000000

    .line 61
    .line 62
    if-gtz v3, :cond_41

    .line 63
    .line 64
    if-ne v3, v5, :cond_46

    .line 65
    .line 66
    :cond_41
    if-gtz v4, :cond_62

    .line 67
    .line 68
    if-ne v4, v5, :cond_46

    .line 69
    .line 70
    goto :goto_62

    .line 71
    :cond_46
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_4f

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4f
    iget-object p1, v0, Lz/c;->c:Lz/b;

    .line 81
    .line 82
    if-nez p1, :cond_61

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v1, Lz/b;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lz/b;-><init>(Lz/c;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, v0, Lz/c;->c:Lz/b;

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 96
    .line 97
    .line 98
    :cond_61
    return-void

    .line 99
    :cond_62
    :goto_62
    invoke-virtual {p1, v3, v4}, Ly/f;->m(II)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final c()V
    .registers 1

    .line 1
    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final e()V
    .registers 1

    .line 1
    return-void
.end method

.method public final f(Ly/f;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/n;->b:Lz/c;

    .line 2
    .line 3
    iget-object v0, v0, Lz/c;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final h(Ly/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/n;->c:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f09021f

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i()Ly/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/n;->c:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f09021f

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_19

    .line 11
    .line 12
    instance-of v1, v0, Ly/c;

    .line 13
    .line 14
    if-eqz v1, :cond_12

    .line 15
    .line 16
    check-cast v0, Ly/c;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_12
    const-string v0, "You must not pass non-R.id ids to setTag(id)"

    .line 20
    .line 21
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    return-object v0

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public final j(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/n;->b:Lz/c;

    .line 2
    .line 3
    iget-object v0, p1, Lz/c;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_13

    .line 14
    .line 15
    iget-object v1, p1, Lz/c;->c:Lz/b;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, Lz/c;->c:Lz/b;

    .line 22
    .line 23
    iget-object p1, p1, Lz/c;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onStart()V
    .registers 1

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Target for: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/n;->c:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
