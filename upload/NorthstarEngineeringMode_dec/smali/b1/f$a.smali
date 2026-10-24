.class public final Lb1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/WindowManager;

.field public c:Landroid/os/Handler;

.field public d:Lb1/e;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/Context;

.field public final g:J

.field public h:Landroid/view/WindowManager$LayoutParams;

.field public final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lb1/d;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "series"

    const-string v1, "T29"

    invoke-static {v0, v1}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lb1/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb1/a;->a:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getProductName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lb1/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarConfigUtils"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb1/a;->a:Ljava/lang/String;

    const-string v1, "milan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const v0, 0x7f0d011f

    goto :goto_1

    :cond_2
    const v0, 0x7f0d011d

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lb1/f$a;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb1/f$a;->f:Landroid/content/Context;

    iput-boolean v1, p0, Lb1/f$a;->i:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lb1/f$a;->a:Landroid/view/View;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lb1/f$a;->b:Landroid/view/WindowManager;

    iput-object p2, p0, Lb1/f$a;->e:Ljava/lang/String;

    iput-wide p3, p0, Lb1/f$a;->g:J

    return-void
.end method
