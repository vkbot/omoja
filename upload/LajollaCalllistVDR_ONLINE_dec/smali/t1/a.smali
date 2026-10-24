.class public final Lt1/a;
.super Ld2/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lt1/a;->a:I

    iput-object p2, p0, Lt1/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ld2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget p1, p0, Lt1/a;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object p1, p0, Lt1/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/internal/u;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/material/internal/u;->d:Z

    iget-object p1, p1, Lcom/google/android/material/internal/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/t;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/internal/t;->a()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 1

    iget p1, p0, Lt1/a;->a:I

    iget-object v0, p0, Lt1/a;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v0, Lcom/google/android/material/chip/Chip;

    iget-object p1, v0, Lcom/google/android/material/chip/Chip;->f:Lt1/d;

    iget-boolean p2, p1, Lt1/d;->E0:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lt1/d;->F:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :goto_1
    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    check-cast v0, Lcom/google/android/material/internal/u;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/material/internal/u;->d:Z

    iget-object p1, v0, Lcom/google/android/material/internal/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/t;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/material/internal/t;->a()V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
