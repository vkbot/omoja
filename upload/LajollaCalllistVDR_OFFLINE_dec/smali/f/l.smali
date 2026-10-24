.class public final Lf/l;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:I

.field public v:Z

.field public w:I

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/a3;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf/l;->u:I

    .line 4
    iput-object p1, p0, Lf/l;->x:Ljava/lang/Object;

    iput p2, p0, Lf/l;->w:I

    invoke-direct {p0}, Ly1/l;-><init>()V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lf/l;->v:Z

    return-void
.end method

.method public constructor <init>(Lf/m;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf/l;->u:I

    .line 1
    iput-object p1, p0, Lf/l;->x:Ljava/lang/Object;

    invoke-direct {p0}, Ly1/l;-><init>()V

    .line 2
    iput-boolean v0, p0, Lf/l;->v:Z

    .line 3
    iput v0, p0, Lf/l;->w:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget v0, p0, Lf/l;->u:I

    iget-object v1, p0, Lf/l;->x:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lf/l;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/l;->w:I

    check-cast v1, Lf/m;

    iget-object v2, v1, Lf/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lf/m;->d:Lh0/u0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh0/u0;->b()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lf/l;->w:I

    iput-boolean v0, p0, Lf/l;->v:Z

    iput-boolean v0, v1, Lf/m;->e:Z

    :cond_1
    return-void

    :goto_0
    iget-boolean v0, p0, Lf/l;->v:Z

    if-nez v0, :cond_2

    check-cast v1, Landroidx/appcompat/widget/a3;

    iget-object v0, v1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Lf/l;->w:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lf/l;->u:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lf/l;->v:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lf/l;->u:I

    iget-object v1, p0, Lf/l;->x:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lf/l;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/l;->v:Z

    check-cast v1, Lf/m;

    iget-object p0, v1, Lf/m;->d:Lh0/u0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lh0/u0;->f()V

    :cond_1
    :goto_0
    return-void

    :goto_1
    check-cast v1, Landroidx/appcompat/widget/a3;

    iget-object p0, v1, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
