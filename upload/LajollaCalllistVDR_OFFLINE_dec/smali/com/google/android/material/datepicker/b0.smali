.class public final Lcom/google/android/material/datepicker/b0;
.super Lcom/google/android/material/datepicker/i;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic i:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic j:Lcom/google/android/material/datepicker/z;

.field public final synthetic k:Lcom/google/android/material/datepicker/RangeDateSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;I)V
    .locals 0

    iput p9, p0, Lcom/google/android/material/datepicker/b0;->g:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/b0;->k:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/b0;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p7, p0, Lcom/google/android/material/datepicker/b0;->i:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p8, p0, Lcom/google/android/material/datepicker/b0;->j:Lcom/google/android/material/datepicker/z;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/i;-><init>(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/datepicker/b0;->g:I

    iget-object v1, p0, Lcom/google/android/material/datepicker/b0;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/b0;->j:Lcom/google/android/material/datepicker/z;

    iget-object v3, p0, Lcom/google/android/material/datepicker/b0;->i:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/google/android/material/datepicker/b0;->k:Lcom/google/android/material/datepicker/RangeDateSelector;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object v4, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    invoke-static {p0, v1, v3, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/z;)V

    return-void

    :goto_0
    iput-object v4, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    invoke-static {p0, v1, v3, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/z;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 4

    iget v0, p0, Lcom/google/android/material/datepicker/b0;->g:I

    iget-object v1, p0, Lcom/google/android/material/datepicker/b0;->h:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/b0;->j:Lcom/google/android/material/datepicker/z;

    iget-object v3, p0, Lcom/google/android/material/datepicker/b0;->i:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/datepicker/b0;->k:Lcom/google/android/material/datepicker/RangeDateSelector;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->d:Ljava/lang/Long;

    invoke-static {p0, v1, v3, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/z;)V

    return-void

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector;->e:Ljava/lang/Long;

    invoke-static {p0, v1, v3, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/z;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
