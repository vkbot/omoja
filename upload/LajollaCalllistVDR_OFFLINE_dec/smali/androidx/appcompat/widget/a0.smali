.class public final Landroidx/appcompat/widget/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/CompoundButton;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/a0;->b:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/widget/a0;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/a0;->d:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/a0;->e:Z

    iput-object p1, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Landroidx/appcompat/widget/a0;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/a0;->e:Z

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/widget/a0;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/a0;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/a0;->e:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/appcompat/widget/a0;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object p0, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    invoke-static {v0, p1, v1, p2}, Landroidx/appcompat/widget/u2;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/u2;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    iget-object v4, v7, Landroidx/appcompat/widget/u2;->b:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lh0/l0;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    :try_start_2
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/u2;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/u2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    const/4 p2, -0x1

    invoke-virtual {v7, p1, p2}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/appcompat/widget/b1;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {v7}, Landroidx/appcompat/widget/u2;->n()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v7}, Landroidx/appcompat/widget/u2;->n()V

    throw p0
.end method
