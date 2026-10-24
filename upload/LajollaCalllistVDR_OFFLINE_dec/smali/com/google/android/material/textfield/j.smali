.class public final Lcom/google/android/material/textfield/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/widget/AutoCompleteTextView;

.field public final synthetic b:Lcom/google/android/material/textfield/l;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/l;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/j;->b:Lcom/google/android/material/textfield/l;

    iput-object p2, p0, Lcom/google/android/material/textfield/j;->a:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/google/android/material/textfield/j;->b:Lcom/google/android/material/textfield/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/material/textfield/l;->l:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iput-boolean v0, p1, Lcom/google/android/material/textfield/l;->j:Z

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/textfield/j;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, p0}, Lcom/google/android/material/textfield/l;->d(Lcom/google/android/material/textfield/l;Landroid/widget/AutoCompleteTextView;)V

    :cond_3
    return v0
.end method
