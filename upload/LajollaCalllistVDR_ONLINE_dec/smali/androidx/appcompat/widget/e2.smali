.class public final Landroidx/appcompat/widget/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/e2;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/e2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p2, 0x1

    const/4 p3, 0x0

    iget p4, p0, Landroidx/appcompat/widget/e2;->a:I

    iget-object p5, p0, Landroidx/appcompat/widget/e2;->b:Ljava/lang/Object;

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast p5, Lcom/google/android/material/navigation/NavigationBarItemView;

    iget-object p1, p5, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p5, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p3, p5, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lo1/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    check-cast p5, Landroidx/appcompat/widget/SearchView;

    iget-object p1, p5, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    if-le p4, p2, :cond_5

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p4, p5, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p5}, Landroidx/appcompat/widget/g3;->a(Landroid/view/View;)Z

    move-result p7

    iget-boolean p8, p5, Landroidx/appcompat/widget/SearchView;->N:Z

    if-eqz p8, :cond_3

    sget p3, Landroidx/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget p8, Landroidx/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    invoke-virtual {p2, p8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p3, p2

    :cond_3
    iget-object p2, p5, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p5, p6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz p7, :cond_4

    iget p5, p6, Landroid/graphics/Rect;->left:I

    neg-int p5, p5

    goto :goto_2

    :cond_4
    iget p5, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, p3

    sub-int p5, p4, p5

    :goto_2
    invoke-virtual {p2, p5}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p5, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p5

    iget p5, p6, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p5

    add-int/2addr p1, p3

    sub-int/2addr p1, p4

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    :cond_5
    return-void

    :goto_3
    check-cast p5, Lk2/a;

    sget p2, Lk2/a;->O:I

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p2, p2, p3

    iput p2, p5, Lk2/a;->J:I

    iget-object p2, p5, Lk2/a;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
