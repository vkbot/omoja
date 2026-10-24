.class public final Lcom/google/android/material/datepicker/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/datepicker/r;->a:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/r;->b:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/datepicker/r;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->b:Lcom/google/android/material/datepicker/MaterialDatePicker;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->i0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/p;->F(ZZ)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->h0:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/p;->F(ZZ)V

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La/a;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->I()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/datepicker/DateSelector;->g()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :goto_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->x0:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->I()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->B()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->v0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->v0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->O(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->M()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
