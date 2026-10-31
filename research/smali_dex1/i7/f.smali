.class public final synthetic Li7/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .registers 4

    .line 1
    iput p3, p0, Li7/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Li7/f;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Li7/f;->c:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Li7/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li7/f;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lv0/d;

    .line 9
    .line 10
    iget v1, p0, Li7/f;->c:F

    .line 11
    .line 12
    iget-object v0, v0, Lv0/d;->c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lw1/e;->k(F)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Li7/f;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lm0/v;

    .line 21
    .line 22
    iget-object v1, v0, Lm0/v;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/high16 v2, 0x438c0000    # 280.0f

    .line 29
    .line 30
    iget v3, p0, Li7/f;->c:F

    .line 31
    .line 32
    mul-float/2addr v3, v2

    .line 33
    float-to-int v2, v3

    .line 34
    const/4 v3, 0x1

    .line 35
    div-int/2addr v1, v2

    .line 36
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, v0, Lm0/v;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lm0/v;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    iget-object v0, v0, Lm0/v;->e:Lm0/t;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3d
    iget-object v0, p0, Li7/f;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Li7/g;

    .line 65
    .line 66
    iget-object v0, v0, Li7/g;->k:Li7/w;

    .line 67
    .line 68
    if-eqz v0, :cond_4a

    .line 69
    .line 70
    iget v1, p0, Li7/f;->c:F

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Li7/w;->a(F)V

    .line 73
    .line 74
    .line 75
    :cond_4a
    return-void

    .line 76
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_11
    .end packed-switch
.end method
