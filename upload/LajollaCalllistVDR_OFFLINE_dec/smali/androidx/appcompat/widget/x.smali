.class public final Landroidx/appcompat/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/x;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/x;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/w;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    if-ne p1, p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No data model. Did you call #setDataModel?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->a()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/x;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->j:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->g:Lh0/d;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lh0/d;->a:Lh0/c;

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/appcompat/widget/o;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/o;->o(Z)V

    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/appcompat/widget/x;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->a()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/x;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->f:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
