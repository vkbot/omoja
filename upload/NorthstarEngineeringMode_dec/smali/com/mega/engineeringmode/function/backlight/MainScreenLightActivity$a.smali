.class public final Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;->a:Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity$a;->a:Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;

    .line 1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->i:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MainScreenLightActivity onChange  mLightValue "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->k:I

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSetLightValue   "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v0, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " selfChange "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainScreenLightActivity"

    .line 8
    invoke-static {p2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->n()I

    move-result p1

    .line 10
    iget p2, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->l:I

    if-eq p1, p2, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->n()I

    move-result p1

    .line 12
    iput p1, p0, Lcom/mega/engineeringmode/function/backlight/MainScreenLightActivity;->k:I

    :cond_0
    return-void
.end method
