.class public final Lcom/mega/carsettings/ui/RelativeRadioGroup$a;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/ui/RelativeRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "layout_height"

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    return-void
.end method
