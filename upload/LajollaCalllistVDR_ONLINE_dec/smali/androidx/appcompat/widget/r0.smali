.class public final Landroidx/appcompat/widget/r0;
.super Lx/k;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Landroidx/appcompat/widget/t0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/t0;IILjava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/t0;

    iput p2, p0, Landroidx/appcompat/widget/r0;->a:I

    iput p3, p0, Landroidx/appcompat/widget/r0;->b:I

    iput-object p4, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/graphics/Typeface;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Landroidx/appcompat/widget/r0;->a:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Landroidx/appcompat/widget/r0;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/q0;->d(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/t0;

    iget-boolean v1, v0, Landroidx/appcompat/widget/t0;->m:Z

    if-eqz v1, :cond_3

    iput-object p1, v0, Landroidx/appcompat/widget/t0;->l:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroidx/appcompat/widget/r0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    sget-object v2, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lg0/d0;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroidx/appcompat/widget/t0;->j:I

    new-instance v3, Landroidx/appcompat/widget/s0;

    invoke-direct {v3, v0, v1, p1, v2}, Landroidx/appcompat/widget/s0;-><init>(Landroidx/appcompat/widget/t0;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget v0, v0, Landroidx/appcompat/widget/t0;->j:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    :goto_1
    return-void
.end method
