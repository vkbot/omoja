.class public final Lcom/google/android/material/navigation/d;
.super Landroidx/appcompat/view/menu/p;
.source "SourceFile"


# instance fields
.field public final A:I

.field public final z:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/material/navigation/d;->z:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/material/navigation/d;->A:I

    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/r;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/material/navigation/d;->A:I

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/p;->z()V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/p;->a(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/r;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/r;->g(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/p;->y()V

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/d;->z:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Maximum number of items supported by "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ". Limit can be checked with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "#getMaxItemCount()"

    invoke-static {p2, p0, p3}, La/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p0, p0, Lcom/google/android/material/navigation/d;->z:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p2, " does not support submenus"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
