.class public final Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;I)V
    .locals 0

    iput p2, p0, Lu1/b;->a:I

    iput-object p1, p0, Lu1/b;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lu1/b;->a:I

    iget-object p0, p0, Lu1/b;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->m:I

    iget v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->e:I

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :goto_0
    sget v1, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->m:I

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lu1/k;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v0, v2}, Lu1/k;->e(ZZZ)Z

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lu1/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lu1/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lu1/m;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lu1/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
