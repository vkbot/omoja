.class public final Lcom/google/android/material/datepicker/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/datepicker/y;

.field public final synthetic d:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/y;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/datepicker/p;->b:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/p;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lcom/google/android/material/datepicker/p;->c:Lcom/google/android/material/datepicker/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x2

    iget v0, p0, Lcom/google/android/material/datepicker/p;->b:I

    iget-object v1, p0, Lcom/google/android/material/datepicker/p;->c:Lcom/google/android/material/datepicker/y;

    iget-object v2, p0, Lcom/google/android/material/datepicker/p;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, v2, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v1, v1, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v1, v1, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/e0;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {p1, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v2, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->G(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, v2, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, v1, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v1, v1, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/e0;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcom/google/android/material/datepicker/Month;

    invoke-direct {p1, v1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v2, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->G(Lcom/google/android/material/datepicker/Month;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
