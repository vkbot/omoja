.class public final Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/g;->b:I

    iput-object p2, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/g;->b:I

    iget-object v1, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->a()V

    return-void

    :pswitch_1
    check-cast v1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {v1, v0}, Landroidx/fragment/app/v0;->c(Ljava/util/ArrayList;I)V

    return-void

    :goto_0
    check-cast v1, Landroidx/fragment/app/i1;

    invoke-virtual {v1}, Landroidx/fragment/app/i1;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
