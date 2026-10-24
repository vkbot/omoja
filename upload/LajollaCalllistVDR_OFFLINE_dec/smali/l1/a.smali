.class public final Ll1/a;
.super Lv1/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll1/a;->a:I

    iput-object p2, p0, Ll1/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lv1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget p1, p0, Ll1/a;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object p0, p0, Ll1/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/u;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/u;->d:Z

    iget-object p0, p0, Lcom/google/android/material/internal/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/t;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/material/internal/t;->a()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget p1, p0, Ll1/a;->a:I

    iget-object p0, p0, Ll1/a;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/google/android/material/chip/Chip;

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget-boolean p2, p1, Ll1/d;->D0:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Ll1/d;->E:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :goto_1
    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p0, Lcom/google/android/material/internal/u;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/u;->d:Z

    iget-object p0, p0, Lcom/google/android/material/internal/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/t;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/google/android/material/internal/t;->a()V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
