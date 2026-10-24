.class public final Landroidx/appcompat/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/app/f;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/app/k;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/appcompat/app/f;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, v0}, Landroidx/appcompat/app/k;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/f;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/app/f;

    iput v0, p0, Landroidx/appcompat/app/j;->b:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/app/k;
    .locals 10

    new-instance v0, Landroidx/appcompat/app/k;

    iget-object v1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/app/f;

    iget-object v2, v1, Landroidx/appcompat/app/f;->a:Landroid/content/Context;

    iget v3, p0, Landroidx/appcompat/app/j;->b:I

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/app/k;-><init>(Landroid/content/Context;I)V

    iget-object v2, v1, Landroidx/appcompat/app/f;->e:Landroid/view/View;

    iget-object v3, v0, Landroidx/appcompat/app/k;->d:Landroidx/appcompat/app/i;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iput-object v2, v3, Landroidx/appcompat/app/i;->o:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/f;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iput-object v2, v3, Landroidx/appcompat/app/i;->d:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroidx/appcompat/app/i;->m:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/f;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iput-object v2, v3, Landroidx/appcompat/app/i;->k:Landroid/graphics/drawable/Drawable;

    iput v4, v3, Landroidx/appcompat/app/i;->j:I

    iget-object v5, v3, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v3, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/f;->g:Landroid/widget/ListAdapter;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_7

    iget v2, v3, Landroidx/appcompat/app/i;->s:I

    iget-object v7, v1, Landroidx/appcompat/app/f;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v7, v1, Landroidx/appcompat/app/f;->i:Z

    if-eqz v7, :cond_3

    iget v7, v3, Landroidx/appcompat/app/i;->t:I

    goto :goto_1

    :cond_3
    iget v7, v3, Landroidx/appcompat/app/i;->u:I

    :goto_1
    iget-object v8, v1, Landroidx/appcompat/app/f;->g:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v8, Landroidx/appcompat/app/h;

    iget-object v9, v1, Landroidx/appcompat/app/f;->a:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Landroidx/appcompat/app/h;-><init>(Landroid/content/Context;I)V

    :goto_2
    iput-object v8, v3, Landroidx/appcompat/app/i;->p:Landroid/widget/ListAdapter;

    iget v7, v1, Landroidx/appcompat/app/f;->j:I

    iput v7, v3, Landroidx/appcompat/app/i;->q:I

    iget-object v7, v1, Landroidx/appcompat/app/f;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v7, :cond_5

    new-instance v7, Landroidx/appcompat/app/e;

    invoke-direct {v7, v4, v1, v3}, Landroidx/appcompat/app/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5
    iget-boolean v4, v1, Landroidx/appcompat/app/f;->i:Z

    if-eqz v4, :cond_6

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_6
    iput-object v2, v3, Landroidx/appcompat/app/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_7
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v1, Landroidx/appcompat/app/f;->f:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_8
    return-object v0
.end method
