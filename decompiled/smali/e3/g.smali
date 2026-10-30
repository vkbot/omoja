.class public final Le3/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Z

.field public final d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Le3/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le3/g;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Le3/g;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p3, p0, Le3/g;->c:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Le3/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le3/g;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo7/k1;

    .line 9
    .line 10
    iget-object v0, v0, Lo7/k1;->t:Lo7/e1;

    .line 11
    .line 12
    iget-object v1, p0, Le3/g;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lo7/g1;

    .line 15
    .line 16
    iget-boolean v2, p0, Le3/g;->c:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lk/a;->d(Ljava/lang/Object;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Le3/g;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    iget-object v1, p0, Le3/g;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/ViewDragHelper;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-boolean v2, p0, Le3/g;->c:Z

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lb4/f;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lb4/f;->a(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
