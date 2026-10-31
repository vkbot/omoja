.class public final synthetic Landroidx/navigation/fragment/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/navigation/fragment/e;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/fragment/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget v0, p0, Landroidx/navigation/fragment/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/fragment/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment$navHostController$2;->b(Landroidx/navigation/fragment/NavHostFragment;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Landroidx/navigation/fragment/e;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment$navHostController$2;->a(Landroidx/navigation/NavHostController;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
