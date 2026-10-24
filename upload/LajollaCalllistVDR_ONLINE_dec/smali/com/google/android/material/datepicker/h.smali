.class public final Lcom/google/android/material/datepicker/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/material/datepicker/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/i;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/h;->c:Lcom/google/android/material/datepicker/i;

    iput-wide p2, p0, Lcom/google/android/material/datepicker/h;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->c:Lcom/google/android/material/datepicker/i;

    iget-object v1, v0, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-wide v2, p0, Lcom/google/android/material/datepicker/h;->b:J

    invoke-static {v2, v3}, Lcom/google/android/material/slider/h;->f0(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/material/datepicker/i;->e:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/i;->a()V

    return-void
.end method
