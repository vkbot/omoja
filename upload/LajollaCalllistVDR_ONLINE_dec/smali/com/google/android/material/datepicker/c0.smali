.class public final Lcom/google/android/material/datepicker/c0;
.super Lcom/google/android/material/datepicker/i;
.source "SourceFile"


# instance fields
.field public final synthetic h:Lcom/google/android/material/datepicker/z;

.field public final synthetic i:Lcom/google/android/material/datepicker/SingleDateSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/c0;->i:Lcom/google/android/material/datepicker/SingleDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/c0;->h:Lcom/google/android/material/datepicker/z;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/i;-><init>(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c0;->h:Lcom/google/android/material/datepicker/z;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/z;->a()V

    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/c0;->i:Lcom/google/android/material/datepicker/SingleDateSelector;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/SingleDateSelector;->h(J)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/material/datepicker/c0;->h:Lcom/google/android/material/datepicker/z;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/z;->b(Ljava/lang/Object;)V

    return-void
.end method
