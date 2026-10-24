.class public final Lcom/google/android/material/textfield/p;
.super Lcom/google/android/material/textfield/m;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/material/textfield/h;

.field public final f:Lcom/google/android/material/textfield/a;

.field public final g:Lcom/google/android/material/textfield/b;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/m;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p1, Lcom/google/android/material/textfield/h;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/p;->e:Lcom/google/android/material/textfield/h;

    new-instance p1, Lcom/google/android/material/textfield/a;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/p;->f:Lcom/google/android/material/textfield/a;

    new-instance p1, Lcom/google/android/material/textfield/b;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/p;->g:Lcom/google/android/material/textfield/b;

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/p;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/m;->d:I

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/material/R$drawable;->design_password_eye:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/appcompat/widget/v1;

    const/4 v2, 0x7

    invoke-direct {v0, v2, p0}, Landroidx/appcompat/widget/v1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->f0:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/google/android/material/textfield/p;->f:Lcom/google/android/material/textfield/a;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_1
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->j0:Ljava/util/LinkedHashSet;

    iget-object p0, p0, Lcom/google/android/material/textfield/p;->g:Lcom/google/android/material/textfield/b;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_4
    return-void
.end method
