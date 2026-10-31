.class public final synthetic Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V
    .registers 5

    .line 14
    iput p4, p0, Landroidx/fragment/app/d;->b:I

    iput-object p1, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/d;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->i(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_15
    iget-object v0, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->c(Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_25
    iget-object v0, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroid/view/View;

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/fragment/app/d;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 49
    .line 50
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->a(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_25
        :pswitch_15
    .end packed-switch
.end method
