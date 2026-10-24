.class public final Lu1/c;
.super Lx0/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;I)V
    .locals 0

    iput p2, p0, Lu1/c;->a:I

    iput-object p1, p0, Lu1/c;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-direct {p0}, Lx0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lu1/c;->a:I

    iget-object p0, p0, Lu1/c;->b:Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b:I

    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->c:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->b(IZ)V

    return-void

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->h:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
