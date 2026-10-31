.class public final synthetic Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/fragment/app/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/fragment/app/f;->c:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/f;->c:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    check-cast p1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentActivity;->r(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Landroidx/fragment/app/f;->c:Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    check-cast p1, Landroid/content/res/Configuration;

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentActivity;->o(Landroidx/fragment/app/FragmentActivity;Landroid/content/res/Configuration;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
