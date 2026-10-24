.class public final Landroidx/appcompat/widget/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/a2;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/a2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Landroidx/appcompat/widget/a2;->a:I

    iget-object p0, p0, Landroidx/appcompat/widget/a2;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/textfield/e;

    invoke-static {p0}, Lcom/google/android/material/textfield/e;->d(Lcom/google/android/material/textfield/e;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/e;->e(Z)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->K:Landroid/view/View$OnFocusChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/textfield/l;

    iget-object p1, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/l;->f(Z)V

    iput-boolean p1, p0, Lcom/google/android/material/textfield/l;->j:Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
