.class public final Lcom/google/android/material/datepicker/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/google/android/material/datepicker/i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/i;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/h;->b:Lcom/google/android/material/datepicker/i;

    iput-wide p2, p0, Lcom/google/android/material/datepicker/h;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/datepicker/h;->b:Lcom/google/android/material/datepicker/i;

    iget-object v1, v0, Lcom/google/android/material/datepicker/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-wide v2, p0, Lcom/google/android/material/datepicker/h;->a:J

    invoke-static {v2, v3}, Ly1/l;->i0(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/i;->d:Ljava/lang/String;

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/i;->a()V

    return-void
.end method
