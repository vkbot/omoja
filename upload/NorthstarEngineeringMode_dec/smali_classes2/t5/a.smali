.class public final Lt5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr5/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lr5/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lr5/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lt5/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lt5/a;->c:Lr5/b;

    return-void
.end method


# virtual methods
.method public final a(Lm5/h;Li5/z1;)Lr5/d;
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object p2, Li5/z1;->r:Li5/z1;

    :goto_0
    invoke-virtual {p1}, Lm5/h;->E()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lt5/a;->c:Lr5/b;

    iget-boolean v0, p2, Lr5/b;->b:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lt5/b;

    invoke-direct {p0, p2, p1}, Lt5/b;-><init>(Lr5/b;Lm5/h;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p2, 0x0

    iget-object v0, p0, Lt5/a;->a:Ljava/lang/String;

    iget-object p0, p0, Lt5/a;->b:Ljava/lang/String;

    invoke-static {p2, v0, p0}, Lr5/g;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ls5/a;

    move-result-object p0

    new-instance p2, Ls5/b;

    invoke-direct {p2, p0, p1}, Ls5/b;-><init>(Ls5/a;Lm5/h;)V

    return-object p2
.end method
