.class public final Lcom/google/android/material/datepicker/o;
.super Landroidx/recyclerview/widget/w0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/y;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/y;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/o;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lcom/google/android/material/datepicker/o;->a:Lcom/google/android/material/datepicker/y;

    iput-object p3, p0, Lcom/google/android/material/datepicker/o;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/o;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/material/datepicker/o;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    if-gez p2, :cond_0

    iget-object p2, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/s0;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0()I

    move-result p2

    :goto_0
    iget-object p3, p0, Lcom/google/android/material/datepicker/o;->a:Lcom/google/android/material/datepicker/y;

    iget-object v0, p3, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v0, v0, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/e0;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance v2, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v2, v0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    iput-object v2, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    iget-object p1, p3, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p1, p1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object p1, p1, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-static {p1}, Lcom/google/android/material/datepicker/e0;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p2, Lcom/google/android/material/datepicker/Month;

    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    iget-object p1, p3, Lcom/google/android/material/datepicker/y;->c:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/Month;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/datepicker/o;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
