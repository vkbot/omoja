.class public final synthetic Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/DefaultSpecialEffectsController;

.field public final synthetic d:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

.field public final synthetic e:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/b;->b:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/b;->c:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/fragment/app/b;->d:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/fragment/app/b;->e:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b;->d:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/b;->e:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/b;->b:Landroid/view/View;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/fragment/app/b;->c:Landroidx/fragment/app/DefaultSpecialEffectsController;

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->f(Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
