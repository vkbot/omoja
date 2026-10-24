.class public final Ld2/b;
.super Ld2/h;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Ld2/a;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/b;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ld2/h;-><init>()V

    iput-object p2, p0, Ld2/b;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Ld2/b;->b:Ld2/a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p1, p0, Ld2/b;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Ld2/b;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ld2/b;->c(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 4

    iget-boolean v0, p0, Ld2/b;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ld2/b;->b:Ld2/a;

    check-cast v0, Lcom/google/android/material/internal/b;

    iget v1, v0, Lcom/google/android/material/internal/b;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v0, Lcom/google/android/material/internal/b;->b:Lcom/google/android/material/internal/c;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, v0, Lcom/google/android/material/internal/c;->B:Ld2/b;

    if-eqz v1, :cond_0

    iput-boolean v3, v1, Ld2/b;->c:Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    goto :goto_3

    :goto_1
    iget-object v1, v0, Lcom/google/android/material/internal/c;->A:Ld2/b;

    if-eqz v1, :cond_2

    iput-boolean v3, v1, Ld2/b;->c:Z

    :cond_2
    iget-object v1, v0, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    if-eq v1, p1, :cond_3

    iput-object p1, v0, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
