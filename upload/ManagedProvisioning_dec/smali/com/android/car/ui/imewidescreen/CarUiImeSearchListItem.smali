.class public Lcom/android/car/ui/imewidescreen/CarUiImeSearchListItem;
.super Lcom/android/car/ui/recyclerview/CarUiContentListItem;
.source "CarUiImeSearchListItem.java"


# virtual methods
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 51
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "icon should be of type BitmapDrawable"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
