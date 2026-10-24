.class public final Lcom/google/android/material/textfield/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/l;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/textfield/k;->a:Lcom/google/android/material/textfield/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/l;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/textfield/l;->l:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/l;->f(Z)V

    return-void
.end method
