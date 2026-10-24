.class public final Lp3/b;
.super Lp3/a;
.source "SourceFile"


# instance fields
.field public final x:Lp3/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lp3/c;-><init>()V

    new-instance v0, Lp3/b$a;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lp3/b;->x:Lp3/b$a;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lp3/b;->x:Lp3/b$a;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {p0, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
