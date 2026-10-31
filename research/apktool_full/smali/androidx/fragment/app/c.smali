.class public final synthetic Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic c:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/collection/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/c;->c:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/fragment/app/c;->d:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/fragment/app/c;->e:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/c;->e:Landroidx/collection/ArrayMap;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/fragment/app/c;->c:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->d(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
