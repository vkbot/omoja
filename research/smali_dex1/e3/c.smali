.class public final Le3/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Le3/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Le3/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget v0, p0, Le3/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_50

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Le3/c;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lw1/i;

    .line 12
    .line 13
    iget-boolean v0, p1, Lw1/e;->r:Z

    .line 14
    .line 15
    if-nez v0, :cond_13

    .line 16
    .line 17
    invoke-virtual {p1}, Lw1/e;->l()V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void

    .line 21
    :pswitch_14
    iget-object p1, p0, Le3/c;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lr3/h;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p1, Lr3/h;->r:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p1, Lr3/h;->m:Landroid/animation/Animator;

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1f
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Le3/c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Ll0/a;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p1, Ll0/a;->b:Z

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_2a
    iget-object p1, p0, Le3/c;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-object v0, p1, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->b:Landroid/animation/AnimatorSet;

    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_32
    iget-object p1, p0, Le3/c;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Le4/l;

    .line 54
    .line 55
    invoke-virtual {p1}, Le4/q;->p()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Le4/l;->r:Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3f
    iget-object p1, p0, Le3/c;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput-object v0, p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->l:Landroid/view/ViewPropertyAnimator;

    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_47
    iget-object p1, p0, Le3/c;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->k:Landroid/view/ViewPropertyAnimator;

    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3f
        :pswitch_32
        :pswitch_2a
        :pswitch_1f
        :pswitch_14
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    .line 1
    iget v0, p0, Le3/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object v0, p0, Le3/c;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lr3/h;

    .line 13
    .line 14
    iget-object v1, v0, Lr3/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2, v2}, Ls3/r;->a(IZ)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    iput v1, v0, Lr3/h;->r:I

    .line 22
    .line 23
    iput-object p1, v0, Lr3/h;->m:Landroid/animation/Animator;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x5
        :pswitch_9
    .end packed-switch
.end method
