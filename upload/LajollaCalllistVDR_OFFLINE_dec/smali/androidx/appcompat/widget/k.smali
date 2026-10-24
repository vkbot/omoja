.class public final Landroidx/appcompat/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/k;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/appcompat/widget/k;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/b;

    iget-object p0, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/m;

    check-cast p0, Lcom/google/android/material/textfield/l;

    iget-object p0, p0, Lcom/google/android/material/textfield/l;->e:Lcom/google/android/material/textfield/h;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/h;

    iget-object v1, p0, Lcom/google/android/material/textfield/h;->b:Lcom/google/android/material/textfield/m;

    check-cast v1, Lcom/google/android/material/textfield/l;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/l;->f(Z)V

    iget-object p0, p0, Lcom/google/android/material/textfield/h;->b:Lcom/google/android/material/textfield/m;

    check-cast p0, Lcom/google/android/material/textfield/l;

    iput-boolean v0, p0, Lcom/google/android/material/textfield/l;->j:Z

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/b;

    iget-object p0, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/m;

    check-cast p0, Lcom/google/android/material/textfield/e;

    iget-object p0, p0, Lcom/google/android/material/textfield/e;->e:Landroidx/appcompat/widget/y1;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/z;

    invoke-virtual {v0}, Landroidx/room/z;->a()V

    return-void

    :catchall_0
    move-exception p0

    check-cast v0, Landroidx/room/z;

    invoke-virtual {v0}, Landroidx/room/z;->a()V

    throw p0

    :pswitch_5
    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/room/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_6
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Ly/k;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Ly/k;->d(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_7
    :try_start_1
    sget-object v0, Lv/b;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v4, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v5, v1

    const-string v1, "AppCompat recreation"

    aput-object v1, v5, v3

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lv/b;->c:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    const-string v0, "ActivityRecreator"

    const-string v1, "Exception while invoking performStopActivity"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    throw p0

    :cond_2
    :goto_0
    return-void

    :pswitch_8
    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void

    :pswitch_9
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v5, v0

    div-int/2addr v5, v3

    sub-int/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iput-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->a:Landroidx/appcompat/widget/k;

    return-void

    :pswitch_a
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/o;

    iget-object v3, v0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/p;

    if-eqz v3, :cond_3

    iget-object v5, v3, Landroidx/appcompat/view/menu/p;->e:Landroidx/appcompat/view/menu/n;

    if-eqz v5, :cond_3

    invoke-interface {v5, v3}, Landroidx/appcompat/view/menu/n;->p(Landroidx/appcompat/view/menu/p;)V

    :cond_3
    iget-object v3, v0, Landroidx/appcompat/view/menu/d;->h:Landroidx/appcompat/view/menu/e0;

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/i;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2, v2, v2, v2}, Landroidx/appcompat/view/menu/a0;->d(IIZZ)V

    :goto_1
    if-eqz v1, :cond_6

    iput-object p0, v0, Landroidx/appcompat/widget/o;->t:Landroidx/appcompat/widget/i;

    :cond_6
    iput-object v4, v0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/k;

    return-void

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/b;

    iget-object p0, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/m;

    check-cast p0, Lcom/google/android/material/textfield/p;

    iget-object p0, p0, Lcom/google/android/material/textfield/p;->e:Lcom/google/android/material/textfield/h;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
