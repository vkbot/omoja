.class public final synthetic Lm0/a1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/i1;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic d:F

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lm0/i1;Landroidx/recyclerview/widget/RecyclerView;FLandroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/a1;->b:Lm0/i1;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/a1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iput p3, p0, Lm0/a1;->d:F

    .line 9
    .line 10
    iput-object p4, p0, Lm0/a1;->e:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/a1;->b:Lm0/i1;

    .line 2
    .line 3
    iget-object v1, v0, Lm0/i1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v2, p0, Lm0/a1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-ne v1, v2, :cond_29

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_29

    .line 16
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/high16 v1, 0x435c0000    # 220.0f

    .line 21
    .line 22
    iget v3, p0, Lm0/a1;->d:F

    .line 23
    .line 24
    mul-float/2addr v3, v1

    .line 25
    float-to-int v1, v3

    .line 26
    const/4 v3, 0x1

    .line 27
    div-int/2addr v0, v1

    .line 28
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 33
    .line 34
    iget-object v3, p0, Lm0/a1;->e:Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {v1, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    :goto_29
    return-void
.end method
