.class public final Lcom/google/android/material/datepicker/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final synthetic b:Lcom/google/android/material/datepicker/y;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/y;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/w;->b:Lcom/google/android/material/datepicker/y;

    iput-object p2, p0, Lcom/google/android/material/datepicker/w;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/datepicker/w;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/v;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/v;->a()I

    move-result p4

    if-lt p3, p4, :cond_0

    iget-object p2, p2, Lcom/google/android/material/datepicker/v;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/Month;->c()I

    move-result p4

    iget p2, p2, Lcom/google/android/material/datepicker/Month;->e:I

    add-int/2addr p4, p2

    add-int/lit8 p4, p4, -0x1

    if-gt p3, p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/google/android/material/datepicker/w;->b:Lcom/google/android/material/datepicker/y;

    iget-object p0, p0, Lcom/google/android/material/datepicker/y;->f:Lcom/google/android/material/datepicker/q;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/v;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/v;->b(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    check-cast p0, Lcom/google/android/material/datepicker/m;

    iget-object p0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->V:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p3, p3, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-interface {p3, p1, p2}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->v(J)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->U:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p3, p1, p2}, Lcom/google/android/material/datepicker/DateSelector;->E(J)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/a0;->S:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/datepicker/z;

    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->U:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p3}, Lcom/google/android/material/datepicker/DateSelector;->g()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/z;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->b()V

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->Z:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->b()V

    :cond_2
    return-void
.end method
