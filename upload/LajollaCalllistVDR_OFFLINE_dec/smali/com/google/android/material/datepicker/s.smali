.class public final Lcom/google/android/material/datepicker/s;
.super Lcom/google/android/material/datepicker/z;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/t;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/t;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/s;->a:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/s;->b:Landroidx/fragment/app/t;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/datepicker/s;->a:I

    iget-object p0, p0, Lcom/google/android/material/datepicker/s;->b:Landroidx/fragment/app/t;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->x0:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/datepicker/t;

    iget-object p0, p0, Lcom/google/android/material/datepicker/a0;->S:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/z;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/z;->a()V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/datepicker/s;->a:I

    iget-object p0, p0, Lcom/google/android/material/datepicker/s;->b:Landroidx/fragment/app/t;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    sget p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->y0:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->N()V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->x0:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->I()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/datepicker/DateSelector;->B()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/datepicker/t;

    iget-object p0, p0, Lcom/google/android/material/datepicker/a0;->S:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/z;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/z;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
