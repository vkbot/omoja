.class public final Lj0/a;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/i;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InputConnection;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    iput-object p2, p0, Lj0/a;->a:Landroidx/appcompat/view/menu/i;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/i;

    new-instance v1, Landroidx/appcompat/view/menu/i;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/i;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lj0/a;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v2, Lj0/b;

    invoke-interface {v2}, Lj0/b;->s()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    const-string v6, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "InputConnectionCompat"

    const-string v2, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_2
    move-object v5, p3

    :goto_2
    new-instance v2, Landroid/content/ClipData;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->n()Landroid/content/ClipDescription;

    move-result-object v6

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->t()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v6, v7}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    const/4 v8, 0x2

    if-lt v6, v7, :cond_3

    new-instance v6, Lh0/e;

    invoke-direct {v6, v2, v8}, Lh0/e;-><init>(Landroid/content/ClipData;I)V

    goto :goto_3

    :cond_3
    new-instance v6, Lh0/g;

    invoke-direct {v6, v2, v8}, Lh0/g;-><init>(Landroid/content/ClipData;I)V

    :goto_3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v6, v0}, Lh0/f;->c(Landroid/net/Uri;)V

    invoke-interface {v6, v5}, Lh0/f;->b(Landroid/os/Bundle;)V

    invoke-interface {v6}, Lh0/f;->a()Lh0/i;

    move-result-object v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v0}, Lh0/q0;->g(Landroid/view/View;Lh0/i;)Lh0/i;

    move-result-object v0

    if-nez v0, :cond_4

    move v4, v3

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v3

    :goto_5
    return v3
.end method

.method public final performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
