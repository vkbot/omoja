.class public final Lw0/g;
.super Lw0/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/g;->a:I

    iput-object p2, p0, Lw0/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lw0/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lw0/p;)V
    .locals 3

    iget v0, p0, Lw0/g;->a:I

    iget-object v1, p0, Lw0/g;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lj/b;

    iget-object v0, p0, Lw0/g;->c:Ljava/lang/Object;

    check-cast v0, Lw0/r;

    iget-object v0, v0, Lw0/r;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lw0/p;->v(Lw0/o;)V

    return-void

    :pswitch_1
    check-cast v1, Landroid/view/View;

    sget-object v0, Lw0/y;->a:Lw0/c0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lw0/z;->n(Landroid/view/View;F)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lw0/p;->v(Lw0/o;)V

    return-void

    :goto_0
    check-cast v1, Lw0/p;

    invoke-virtual {v1}, Lw0/p;->y()V

    invoke-virtual {p1, p0}, Lw0/p;->v(Lw0/o;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
