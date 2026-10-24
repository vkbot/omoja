.class Lcom/android/server/policy/b;
.super Lcom/android/server/policy/f;
.source ""


# instance fields
.field final synthetic n:Lcom/android/server/policy/MegaPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MegaPhoneWindowManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-direct {p0, p2}, Lcom/android/server/policy/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method f(Landroid/graphics/Point;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-static {p0, p3}, Lcom/android/server/policy/MegaPhoneWindowManager;->a(Lcom/android/server/policy/MegaPhoneWindowManager;I)V

    return-void
.end method

.method g(Landroid/view/MotionEvent;Landroid/graphics/Point;I)V
    .locals 0

    return-void
.end method

.method i(Landroid/graphics/Point;III)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    iget-object p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    const-string v0, "down"

    if-nez p2, :cond_0

    invoke-static {p0, p3, p1, v0, p4}, Lcom/android/server/policy/MegaPhoneWindowManager;->b(Lcom/android/server/policy/MegaPhoneWindowManager;ILandroid/graphics/Point;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p3, v0}, Lcom/android/server/policy/MegaPhoneWindowManager;->c(Lcom/android/server/policy/MegaPhoneWindowManager;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method j(Landroid/graphics/Point;III)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    iget-object p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    const-string v0, "left"

    if-nez p2, :cond_0

    invoke-static {p0, p3, p1, v0, p4}, Lcom/android/server/policy/MegaPhoneWindowManager;->b(Lcom/android/server/policy/MegaPhoneWindowManager;ILandroid/graphics/Point;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p3, v0}, Lcom/android/server/policy/MegaPhoneWindowManager;->c(Lcom/android/server/policy/MegaPhoneWindowManager;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method k(Landroid/graphics/Point;III)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    iget-object p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    const-string v0, "right"

    if-nez p2, :cond_0

    invoke-static {p0, p3, p1, v0, p4}, Lcom/android/server/policy/MegaPhoneWindowManager;->b(Lcom/android/server/policy/MegaPhoneWindowManager;ILandroid/graphics/Point;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p3, v0}, Lcom/android/server/policy/MegaPhoneWindowManager;->c(Lcom/android/server/policy/MegaPhoneWindowManager;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method l(Landroid/graphics/Point;III)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    iget-object p2, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    const-string v0, "up"

    if-nez p2, :cond_0

    invoke-static {p0, p3, p1, v0, p4}, Lcom/android/server/policy/MegaPhoneWindowManager;->b(Lcom/android/server/policy/MegaPhoneWindowManager;ILandroid/graphics/Point;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p3, v0}, Lcom/android/server/policy/MegaPhoneWindowManager;->c(Lcom/android/server/policy/MegaPhoneWindowManager;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method m(Landroid/graphics/Point;II)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/MegaPhoneWindowManager;->d(Lcom/android/server/policy/MegaPhoneWindowManager;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/w;->c(II)V

    :cond_1
    return-void
.end method

.method n(Landroid/graphics/Point;II)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/MegaPhoneWindowManager;->d(Lcom/android/server/policy/MegaPhoneWindowManager;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/b;->n:Lcom/android/server/policy/MegaPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/MegaPhoneWindowManager;->a:Lcom/android/server/wm/w;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/w;->a(II)V

    :cond_1
    return-void
.end method
