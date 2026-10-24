.class public final Landroidx/appcompat/widget/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/v1;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/v1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroidx/appcompat/widget/v1;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Landroidx/appcompat/widget/v1;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p0, Lcom/google/android/material/textfield/l;

    iget-object p1, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/l;->d(Lcom/google/android/material/textfield/l;Landroid/widget/AutoCompleteTextView;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/textfield/e;

    iget-object p1, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/r;

    move-result-object p1

    check-cast p0, Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->A:Lcom/google/android/material/navigation/f;

    invoke-virtual {v0, p1, p0, v2}, Landroidx/appcompat/view/menu/p;->q(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/r;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :pswitch_3
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    check-cast p0, Lcom/google/android/material/internal/p;

    iget-object v0, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    if-eqz v0, :cond_2

    iput-boolean v3, v0, Lcom/google/android/material/internal/h;->e:Z

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/r;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/internal/p;->c:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1, p0, v2}, Landroidx/appcompat/view/menu/p;->q(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z

    move-result v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->h(Landroidx/appcompat/view/menu/r;)V

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    if-eqz p1, :cond_4

    iput-boolean v2, p1, Lcom/google/android/material/internal/h;->e:Z

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/p;->n(Z)V

    :cond_5
    return-void

    :pswitch_4
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->I()V

    return-void

    :pswitch_5
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/w2;

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->collapseActionView()Z

    :cond_7
    return-void

    :goto_2
    check-cast p0, Lcom/google/android/material/textfield/p;

    iget-object p1, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {p0}, Lcom/google/android/material/textfield/p;->d(Lcom/google/android/material/textfield/p;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3

    :cond_9
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_3
    if-ltz v1, :cond_a

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_a
    iget-object p0, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
