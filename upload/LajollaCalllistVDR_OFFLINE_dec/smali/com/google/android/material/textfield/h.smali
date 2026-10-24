.class public final Lcom/google/android/material/textfield/h;
.super Lcom/google/android/material/internal/w;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/textfield/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/m;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/h;->a:I

    iput-object p1, p0, Lcom/google/android/material/textfield/h;->b:Lcom/google/android/material/textfield/m;

    invoke-direct {p0}, Lcom/google/android/material/internal/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget p1, p0, Lcom/google/android/material/textfield/h;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/textfield/h;->b:Lcom/google/android/material/textfield/m;

    check-cast p1, Lcom/google/android/material/textfield/l;

    iget-object v0, p1, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p1, Lcom/google/android/material/textfield/l;->o:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_1
    new-instance p1, Landroidx/appcompat/widget/k;

    const/16 v1, 0xa

    invoke-direct {p1, v1, p0, v0}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, Lcom/google/android/material/textfield/h;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/textfield/h;->b:Lcom/google/android/material/textfield/m;

    check-cast p0, Lcom/google/android/material/textfield/p;

    iget-object p1, p0, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0}, Lcom/google/android/material/textfield/p;->d(Lcom/google/android/material/textfield/p;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
