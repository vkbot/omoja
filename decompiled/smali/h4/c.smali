.class public final Lh4/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh4/c;->a:I

    .line 3
    .line 4
    iput-boolean p2, p0, Lh4/c;->b:Z

    .line 5
    .line 6
    iput-object p1, p0, Lh4/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lr3/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh4/c;->a:I

    .line 12
    iput-object p1, p0, Lh4/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lh4/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lh4/c;->b:Z

    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lh4/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lh4/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lr3/h;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p1, Lr3/h;->r:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p1, Lr3/h;->m:Landroid/animation/Animator;

    .line 15
    .line 16
    iget-boolean v1, p0, Lh4/c;->b:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lr3/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p1, v1, v0}, Ls3/r;->a(IZ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    iget-boolean p1, p0, Lh4/c;->b:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lh4/c;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroid/view/View;

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget v0, p0, Lh4/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh4/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr3/h;

    .line 9
    .line 10
    iget-object v1, v0, Lr3/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2, v2}, Ls3/r;->a(IZ)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, v0, Lr3/h;->r:I

    .line 18
    .line 19
    iput-object p1, v0, Lr3/h;->m:Landroid/animation/Animator;

    .line 20
    .line 21
    iput-boolean v2, p0, Lh4/c;->b:Z

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-boolean p1, p0, Lh4/c;->b:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lh4/c;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
