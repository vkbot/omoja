.class public final Lv3/c1$d;
.super Lx3/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/c1;->h(Ljava/lang/Object;Lv3/f1;Lv3/b1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lv3/c1;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx3/k;Lv3/c1;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lv3/c1$d;->d:Lv3/c1;

    iput-object p3, p0, Lv3/c1$d;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lx3/k$a;-><init>(Lx3/k;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lz1/d;
    .locals 0

    check-cast p1, Lx3/k;

    iget-object p1, p0, Lv3/c1$d;->d:Lv3/c1;

    invoke-virtual {p1}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lv3/c1$d;->e:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lx3/j;->a:Lz1/d;

    :goto_0
    return-object p0
.end method
