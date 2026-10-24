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
    .locals 11

    iget v0, p0, Lcom/google/android/material/textfield/a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/android/material/textfield/a;->b:Lcom/google/android/material/textfield/m;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v3, :cond_8

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    check-cast p0, Lcom/google/android/material/textfield/l;

    iget-object v3, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/material/textfield/l;->n:Ly1/h;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/material/textfield/l;->m:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Ly1/h;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {v0, v7}, Ly1/l;->f0(Landroid/view/View;I)I

    move-result v7

    new-array v8, v4, [[I

    const v9, 0x10100a7

    filled-new-array {v9}, [I

    move-result-object v9

    aput-object v9, v8, v2

    new-array v9, v2, [I

    aput-object v9, v8, v1

    const v9, 0x3dcccccd    # 0.1f

    if-ne v5, v4, :cond_4

    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {v0, v3}, Ly1/l;->f0(Landroid/view/View;I)I

    move-result v3

    new-instance v5, Ly1/h;

    iget-object v10, v6, Ly1/h;->a:Ly1/g;

    iget-object v10, v10, Ly1/g;->a:Ly1/n;

    invoke-direct {v5, v10}, Ly1/h;-><init>(Ly1/n;)V

    invoke-static {v7, v9, v3}, Ly1/l;->L0(IFI)I

    move-result v7

    filled-new-array {v7, v2}, [I

    move-result-object v9

    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v10}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v3}, Ly1/h;->setTint(I)V

    filled-new-array {v7, v3}, [I

    move-result-object v3

    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v8, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v3, Ly1/h;

    iget-object v8, v6, Ly1/h;->a:Ly1/g;

    iget-object v8, v8, Ly1/g;->a:Ly1/n;

    invoke-direct {v3, v8}, Ly1/h;-><init>(Ly1/n;)V

    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Ly1/h;->setTint(I)V

    new-instance v8, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v8, v7, v5, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v8, v3, v2

    aput-object v6, v3, v1

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v5}, Lh0/z;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    if-ne v5, v1, :cond_5

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v3

    invoke-static {v7, v9, v3}, Ly1/l;->L0(IFI)I

    move-result v5

    filled-new-array {v5, v3}, [I

    move-result-object v3

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v8, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v5, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v3}, Lh0/z;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    new-instance v3, Lcom/google/android/material/textfield/j;

    invoke-direct {v3, p0, v0}, Lcom/google/android/material/textfield/j;-><init>(Lcom/google/android/material/textfield/l;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/google/android/material/textfield/l;->f:Landroidx/appcompat/widget/a2;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v3, Lcom/google/android/material/textfield/k;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/k;-><init>(Lcom/google/android/material/textfield/l;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v3, p0, Lcom/google/android/material/textfield/l;->e:Lcom/google/android/material/textfield/h;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    if-nez v2, :cond_7

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, v4}, Lh0/z;->s(Landroid/view/View;I)V

    :cond_7
    iget-object p0, p0, Lcom/google/android/material/textfield/l;->g:Lcom/google/android/material/textfield/i;

    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/r;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast p0, Lcom/google/android/material/textfield/e;

    invoke-static {p0}, Lcom/google/android/material/textfield/e;->d(Lcom/google/android/material/textfield/e;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    iget-object p1, p0, Lcom/google/android/material/textfield/e;->f:Landroidx/appcompat/widget/a2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/e;->e:Landroidx/appcompat/widget/y1;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    check-cast p0, Lcom/google/android/material/textfield/p;

    iget-object p1, p0, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0}, Lcom/google/android/material/textfield/p;->d(Lcom/google/android/material/textfield/p;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/google/android/material/textfield/p;->e:Lcom/google/android/material/textfield/h;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
