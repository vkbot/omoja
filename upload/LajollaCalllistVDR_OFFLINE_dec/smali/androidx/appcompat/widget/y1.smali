.class public final Landroidx/appcompat/widget/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/y1;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/y1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/y1;->a:I

    iget-object p0, p0, Landroidx/appcompat/widget/y1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/google/android/material/textfield/e;

    iget-object p1, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/textfield/e;->d(Lcom/google/android/material/textfield/e;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/e;->e(Z)V

    :goto_0
    :pswitch_1
    return-void

    :goto_1
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->t(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/widget/y1;->a:I

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/y1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/SearchView;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->V:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->x(Z)V

    xor-int/lit8 p2, p2, 0x1

    iget-boolean p3, p0, Landroidx/appcompat/widget/SearchView;->U:Z

    const/16 p4, 0x8

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Landroidx/appcompat/widget/SearchView;->N:Z

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p4, 0x0

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->w()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
