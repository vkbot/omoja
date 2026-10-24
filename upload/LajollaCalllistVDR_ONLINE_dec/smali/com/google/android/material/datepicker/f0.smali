.class public final Lcom/google/android/material/datepicker/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/datepicker/h0;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/h0;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/f0;->c:Lcom/google/android/material/datepicker/h0;

    iput p2, p0, Lcom/google/android/material/datepicker/f0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/google/android/material/datepicker/f0;->c:Lcom/google/android/material/datepicker/h0;

    iget-object v0, p1, Lcom/google/android/material/datepicker/h0;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialCalendar;->X:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->c:I

    iget v1, p0, Lcom/google/android/material/datepicker/f0;->b:I

    invoke-static {v1, v0}, Lcom/google/android/material/datepicker/Month;->j(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/datepicker/h0;->c:Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object v1, p1, Lcom/google/android/material/datepicker/MaterialCalendar;->W:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v2, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->b:Lcom/google/android/material/datepicker/Month;

    iget-object v3, v2, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    iget-object v4, v0, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gez v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/Month;

    iget-object v2, v1, Lcom/google/android/material/datepicker/Month;->b:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->G(Lcom/google/android/material/datepicker/Month;)V

    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->H(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    return-void
.end method
