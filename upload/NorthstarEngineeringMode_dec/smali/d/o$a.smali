.class public final Ld/o$a;
.super Ld/o$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public constructor <init>(Ld/o;Ld/n;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/o$c;-><init>(Ld/o;Ld/n;)V

    iput-object p3, p0, Ld/o$a;->c:Ljava/lang/String;

    iput p4, p0, Ld/o$a;->d:I

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;Ld/g;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld/o$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget v0, p0, Ld/o$a;->d:I

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Ld/o$c;->a:Ld/n;

    const/4 p1, 0x2

    invoke-virtual {p2, p0, p1}, Ld/g;->j(Ld/n;I)V

    :cond_0
    invoke-virtual {p2}, Ld/g;->d()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Ld/o$c;->b(Landroid/content/Intent;Ld/g;)V

    :goto_0
    return-void
.end method
