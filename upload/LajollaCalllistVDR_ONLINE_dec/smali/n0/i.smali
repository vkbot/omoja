.class public final Ln0/i;
.super Lg2/e;
.source "SourceFile"


# instance fields
.field public final g:Ln0/h;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg2/e;-><init>(ILjava/lang/Object;)V

    new-instance v0, Ln0/h;

    invoke-direct {v0, p1}, Ln0/h;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Ln0/i;->g:Ln0/h;

    return-void
.end method


# virtual methods
.method public final d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/m;->j:Landroidx/emoji2/text/m;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Ln0/i;->g:Ln0/h;

    invoke-virtual {v0, p1}, Ln0/h;->d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Ln0/i;->g:Ln0/h;

    iget-boolean v0, v0, Ln0/h;->i:Z

    return v0
.end method

.method public final h(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/m;->j:Landroidx/emoji2/text/m;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ln0/i;->g:Ln0/h;

    invoke-virtual {v0, p1}, Ln0/h;->h(Z)V

    return-void
.end method

.method public final i(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/m;->j:Landroidx/emoji2/text/m;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Ln0/i;->g:Ln0/h;

    if-eqz v0, :cond_1

    iput-boolean p1, v1, Ln0/h;->i:Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Ln0/h;->i(Z)V

    :goto_1
    return-void
.end method

.method public final l(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/m;->j:Landroidx/emoji2/text/m;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Ln0/i;->g:Ln0/h;

    invoke-virtual {v0, p1}, Ln0/h;->l(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    return-object p1
.end method
