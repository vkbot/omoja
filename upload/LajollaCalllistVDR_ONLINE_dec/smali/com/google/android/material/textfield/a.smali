.class public final Lcom/google/android/material/textfield/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/s;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/textfield/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/m;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/a;->a:I

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->b:Lcom/google/android/material/textfield/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    iget v0, p0, Lcom/google/android/material/textfield/a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/a;->b:Lcom/google/android/material/textfield/m;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_8

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    check-cast v3, Lcom/google/android/material/textfield/l;

    iget-object v4, v3, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/google/android/material/textfield/l;->n:Lg2/h;

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne v4, v1, :cond_1

    iget-object v4, v3, Lcom/google/android/material/textfield/l;->m:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v4, v3, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lg2/h;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {v0, v8}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v8

    new-array v9, v5, [[I

    const v10, 0x10100a7

    filled-new-array {v10}, [I

    move-result-object v10

    aput-object v10, v9, v2

    new-array v10, v2, [I

    aput-object v10, v9, v1

    const v10, 0x3dcccccd    # 0.1f

    if-ne v6, v5, :cond_4

    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {v0, v4}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v4

    new-instance v6, Lg2/h;

    iget-object v11, v7, Lg2/h;->b:Lg2/g;

    iget-object v11, v11, Lg2/g;->a:Lg2/m;

    invoke-direct {v6, v11}, Lg2/h;-><init>(Lg2/m;)V

    invoke-static {v8, v10, v4}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v8

    filled-new-array {v8, v2}, [I

    move-result-object v10

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v11}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6, v4}, Lg2/h;->setTint(I)V

    filled-new-array {v8, v4}, [I

    move-result-object v4

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v9, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v4, Lg2/h;

    iget-object v9, v7, Lg2/h;->b:Lg2/g;

    iget-object v9, v9, Lg2/g;->a:Lg2/m;

    invoke-direct {v4, v9}, Lg2/h;-><init>(Lg2/m;)V

    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Lg2/h;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v8, v6, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v4, v2

    aput-object v7, v4, v1

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v6}, Lg0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    if-ne v6, v1, :cond_5

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v4

    invoke-static {v8, v10, v4}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v6

    filled-new-array {v6, v4}, [I

    move-result-object v4

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v9, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v4, v6, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v4}, Lg0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    new-instance v4, Lcom/google/android/material/textfield/j;

    invoke-direct {v4, v3, v0}, Lcom/google/android/material/textfield/j;-><init>(Lcom/google/android/material/textfield/l;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v3, Lcom/google/android/material/textfield/l;->f:Landroidx/appcompat/widget/d2;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v4, Lcom/google/android/material/textfield/k;

    invoke-direct {v4, v3}, Lcom/google/android/material/textfield/k;-><init>(Lcom/google/android/material/textfield/l;)V

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v4, v3, Lcom/google/android/material/textfield/l;->e:Lcom/google/android/material/textfield/h;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    if-nez v2, :cond_7

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    iget-object v0, v3, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, v5}, Lg0/a0;->s(Landroid/view/View;I)V

    :cond_7
    iget-object v0, v3, Lcom/google/android/material/textfield/l;->g:Lcom/google/android/material/textfield/i;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/r;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v3, Lcom/google/android/material/textfield/e;

    invoke-static {v3}, Lcom/google/android/material/textfield/e;->d(Lcom/google/android/material/textfield/e;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    iget-object p1, v3, Lcom/google/android/material/textfield/e;->f:Landroidx/appcompat/widget/d2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v3, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, v3, Lcom/google/android/material/textfield/e;->e:Landroidx/appcompat/widget/b2;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    check-cast v3, Lcom/google/android/material/textfield/p;

    iget-object p1, v3, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v3}, Lcom/google/android/material/textfield/p;->d(Lcom/google/android/material/textfield/p;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, v3, Lcom/google/android/material/textfield/p;->e:Lcom/google/android/material/textfield/h;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
