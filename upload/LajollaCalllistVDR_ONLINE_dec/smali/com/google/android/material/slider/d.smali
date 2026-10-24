.class public final Lcom/google/android/material/slider/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/slider/d;->c:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/slider/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/slider/d;->c:Lcom/google/android/material/slider/BaseSlider;

    iget-object v0, v0, Lcom/google/android/material/slider/BaseSlider;->h:Lcom/google/android/material/slider/e;

    iget v1, p0, Lcom/google/android/material/slider/d;->b:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lj0/b;->x(II)V

    return-void
.end method
