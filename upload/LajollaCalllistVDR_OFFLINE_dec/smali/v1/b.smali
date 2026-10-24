.class public final Lv1/b;
.super Lv1/h;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lv1/a;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/b;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Lv1/h;-><init>()V

    iput-object p2, p0, Lv1/b;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Lv1/b;->b:Lv1/a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p1, p0, Lv1/b;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lv1/b;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lv1/b;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 3

    iget-boolean v0, p0, Lv1/b;->c:Z

    if-nez v0, :cond_4

    iget-object p0, p0, Lv1/b;->b:Lv1/a;

    check-cast p0, Lcom/google/android/material/internal/b;

    iget v0, p0, Lcom/google/android/material/internal/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/google/android/material/internal/b;->b:Lcom/google/android/material/internal/c;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/internal/c;->B:Lv1/b;

    if-eqz v0, :cond_0

    iput-boolean v2, v0, Lv1/b;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/c;->i(Z)V

    goto :goto_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/internal/c;->A:Lv1/b;

    if-eqz v0, :cond_2

    iput-boolean v2, v0, Lv1/b;->c:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_3

    iput-object p1, p0, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
