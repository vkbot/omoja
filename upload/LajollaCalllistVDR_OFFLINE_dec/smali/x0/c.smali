.class public final Lx0/c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx0/c;->a:I

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 4
    iput-object p1, p0, Lx0/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq1/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx0/c;->a:I

    .line 1
    iput-object p1, p0, Lx0/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq1/b;I)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lx0/c;->a:I

    .line 2
    invoke-direct {p0, p1}, Lx0/c;-><init>(Lq1/b;)V

    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 1

    iget v0, p0, Lx0/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lx0/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lx0/c;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lx0/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lx0/c;->a:I

    iget-object p0, p0, Lx0/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Lx0/d;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lx0/d;-><init>(I)V

    .line 3
    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lx0/e;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object v1, v0, Lx0/d;->d:Ld/a;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0

    .line 5
    :goto_0
    check-cast p0, Lq1/b;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lx0/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_0
    new-instance v0, Lx0/d;

    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lx0/d;-><init>(I)V

    .line 8
    iget-object p0, p0, Lx0/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lx0/e;->a:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object p1, v0, Lx0/d;->d:Ld/a;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lx0/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_0
    new-instance v0, Lx0/d;

    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lx0/d;-><init>(I)V

    .line 12
    iget-object p0, p0, Lx0/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lx0/e;->a:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object p1, v0, Lx0/d;->d:Ld/a;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
